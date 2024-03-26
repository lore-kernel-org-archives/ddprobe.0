Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056EB13C9A2
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711469897; cv=none; b=J2np7xsLVGQNr0atKKkArEZEdLoNvXu5EwDxdP3Mu3RCqFEXMG6QKsYdc54tyehIzZdKsvY9SE28MpQKeIT+0hsyA5OxHBrLcJxOE45FLy9dReCxIQKzB0Y6uSOhF8Cktfy6i3YWUd8QJjCzI/PwQZeEJgS5qlW0T1r6ID+znX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711469897; c=relaxed/simple;
	bh=qU3lleIcf9emaoNaw8zfDAsrNQrw3xU9QHhktluuP9s=;
	h=To:Subject:From:Message-Id:Date; b=sHOZKyqetRWZ0X556MdyPLGptcrsHZg+rM3cDm8DlDeITYXflspw1SZtPgU5E2hWPCA47ImZ7oasI35AqigUX1W4S6aDbcCjUcw2DGVDc3K9mFSDXIhlKBNiodBJmrb24K8PkQKCAjm1XuCZI0sZ2v0sM3/qsirMNIfhqfuyAB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRNUxqf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRNUxqf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D1B7C433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711469896;
	bh=qU3lleIcf9emaoNaw8zfDAsrNQrw3xU9QHhktluuP9s=;
	h=To:Subject:From:Date:From;
	b=vRNUxqf3ttCM1BqwA9r90p47GoyclGExjEIX63oT/rNqXnau9ufPOeJ8aiHYHtPWt
	 EFcQKAffiUC1K4O+lD8Kv+40gvJ6ta/YXGnUICYnmJFzXN9suN/TwrNgRImIiIT5by
	 cePvhq7iRyHKL7aVKO/YDYllGBdnlT3V6J4YygLKrmYBvElBio5CAtSAKgYK8woy2e
	 KbBDFqVKYvAbmy6/kRLP8eXc3LxTtL5NUMGbIsBY876ESwb2izyq7A7401cSfzKtCS
	 Y6N2z5rlUC99WEX+3noYNJfC6ZN2zsb9d4oYfDZQli9nymeSOhlnoxWlwNRvxM0CWO
	 pCXIGOxC18bwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 726C9C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171146989645.24859.9614017038695018079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25d72bb82500f6ed5f1b87ead4f97a7d60f4bc0a87d8b931ece1242736afd1b
Date: Tue, 26 Mar 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711469896
