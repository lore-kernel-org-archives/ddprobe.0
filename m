Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AABC277C94
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757203194; cv=none; b=q+EQ9SLsW98eJxCDcdpFOl4ry4xkSMTvrkFHdN7Tfy87+f+fIY+fhEu+41vsETdiKCr8Huv8yIHYu4tAr6AZxKlmtTOBHZUrPc7r1hgczM6IwnQmfWHSfWw1E4f7oxRg8anSNuCM1JlHmZFw2rEizOn0KHS/R2RxJ0ADrT81mXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757203194; c=relaxed/simple;
	bh=giacdpy8UvCCmTRX7MKVW3221BEwyx0VcC9uDadXvEs=;
	h=To:Subject:From:Message-Id:Date; b=ADGWt6a3mMS2PsQocvX81pWPUZfIpf3W9kKP5PasGOn88MV8zwlNg4cJoiexIeXIlWXeNN2wFjI5o9d9cVZFjr4Jjtvq08wAdG/jAY83YxrNQVzfy8Fn7QLQzlZ9vNUXWJePMKbqJpVbvu/Q5KT1p83w1bXFSBH80MrS7/tgiKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBdQOzzE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBdQOzzE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04A4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757203193;
	bh=giacdpy8UvCCmTRX7MKVW3221BEwyx0VcC9uDadXvEs=;
	h=To:Subject:From:Date:From;
	b=IBdQOzzE6HxGgtyvvTeHFcSK7CzgHbvINlkwNBF4zIlOdLDgH40YhS+JLcgl7dv3j
	 vQwKx5uvB0uO624taLBcEXsYZx0xRKG4e5OPBN+RzKQkwiRGbexSIQlzRD0GUIpba8
	 rPs2bSsFYMxyqeczGjvjjFdWT0zMGzUh4mWdTcfC6kKF73qN9yDsCjrKEnNXcS+U+W
	 6JvUdPC2ZSaBYSX/G4bl8TeAcNO5Y5vAelwOSkwuJj8c9u9D+chVsSv2WPkHsC/l+H
	 CmkXiNTADpeyUUflGY3N1ChWBRPVjvN0lJpo0U0Ao/aC5LRgj+C92n0mSaYsRjp5+K
	 +cLN6JrPSKUtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3D0CA0FED
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720319357.16574.10785494531142951738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a8bae4f69bf8b953599493c808066585065f3e467db20bf1c95082521521f5
Date: Sat, 06 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757203193
