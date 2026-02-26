Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01416320CA9
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772149494; cv=none; b=VrE+cBUxJxj5cfSd0Tzdc8wjzdUbKPyCRXMXnVtyecuU5vNyym0Q4mwJWV343TfJIeaIoBrzCmWe2a7ct5Mh6CfUyPDl8rLSeXtsthx8FsHIffXcMYfFcuzmgZJb2uTbht2xMvCdEXsdeJLxP/t/bEMmDs+DVtx2l4++/VOO5Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772149494; c=relaxed/simple;
	bh=Cc51GrL75UfwAwm69lCOdwK0b6xfo9wKb4ZMvG9HGDQ=;
	h=To:Subject:From:Message-Id:Date; b=U6te3/vVtDOhC36/0ypu0F6ngrSPupm+Fyn0IaOsSrWd83NICigF7+LbMbhyC9Aj34ZeQLptE4V7pH6Zk2iLM4llwIeIDYg5uEYwjkmckt3j9pe8z9QfkR7fW6nW6KAr5yJXbgWppXJiIq2xAWMLdC/jbsgwS6UJh12ExiPicng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUx9pyaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUx9pyaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B260DC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772149493;
	bh=Cc51GrL75UfwAwm69lCOdwK0b6xfo9wKb4ZMvG9HGDQ=;
	h=To:Subject:From:Date:From;
	b=qUx9pyaZY7gZnu8fHfrpXfbsfJnpn7dU1RR+fc/PK8SKUMyMOmTBo1WMv7VRdCtB0
	 /S3sIcNn6CbWtrbh9MMXx8mkdKcX6g5cWHa3DEx5X4JzWKXRptOCsXotZTY7T9v9oL
	 7t1l27ityhqrTl2GbQ6fin/msHw7wjwL6IuxL+JwXNh8fOljpijf4L8XZo8ft1IEkr
	 2BA42e/cN3wK+IDQQ4qCBAy4WKcmnz9KEksnJBjBcZhsnDMnzl5hQ4JwCah4mz83bm
	 CC4HHyI6i3qe+I4O52OYWLwB+mbnbpwdIRkMq2trABaVQBxe0yzpbPByD8ZZntbghS
	 drnDLb3cpPjfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC8EFD9E1E
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177214949358.5958.1524698900014440814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b645db315f7a7a604b5603150d6632843fab1d854c31f880e9a80459c119dcc7
Date: Thu, 26 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772149493
