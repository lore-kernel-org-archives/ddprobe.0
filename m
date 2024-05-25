Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF08259C
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 21:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716672263; cv=none; b=MEIctCjkP0Q5vqj4o0Uk8oEI4bB55IOwpiQa6y0KpCCg5cENvJSsRlNXnbkXjG3eGb8rI3lwQp8Mth/uBSxO8kNwg0R9d2MHeoXgVOW3VYv8ZXzVzS03LwPOuvlT+sOt/h5Eeuqa4ytaZMuMnrrmEpJuUrXHQ0uYazueiOAlAgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716672263; c=relaxed/simple;
	bh=/MaOyaumsaj3liHaosTwqEzGrVLjejT467hZ3sNbHKA=;
	h=To:Subject:From:Message-Id:Date; b=Dzy6n2I+3MXR8hobJ252JfQkObxJWaLz/KDhFnbWClxQIADBtor+J8d/+o8HGZO+xoInRijktRZHWtZdSght9uGUJm3+cGHF+7Wa+S5X8ipditqzMVCLUAyB7HIBwX1LYpqRGfArsZmtJ9zYQDPHbQyPl303TNfu1R+YkXHLyaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOA4/xTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOA4/xTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5AAC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 21:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716672262;
	bh=/MaOyaumsaj3liHaosTwqEzGrVLjejT467hZ3sNbHKA=;
	h=To:Subject:From:Date:From;
	b=eOA4/xTWtpzAOk+ucvYldKahO9FH4fpcQIA7Ka+FSMALH1bk9FUYvFVFGLfl9hYMD
	 hpTs8ppaZuW0cEGI29w1SzRb/sDFcG9LPJQxSUaTuP/IScXL0QOS60n3Eb4ufLUMDu
	 8ZSF/H7wpQ2qXLyExKNaQzufh9SUM3wt+3RgGZjwbCVl8PYr/VCU0jSdsyyDlNXryG
	 8/vdTOjP79h7L8LrqHGzk43w7ylyORKVI3ckSmRcR94fN6olx6Y5tbhYhz3jsSvmkp
	 LrnJf/r3Cvh+L6INGq3C0Nz1ZDVhKdsBRXk3kwd8dRZi4CAKx0dXgml7FD+zbXLtTt
	 iWsahfpiUUM6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7816C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 21:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171667226277.14197.18286338187605232805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ccaed4c95a6f7ab5962205e33a9fa8ed18d9c5a3d4945a55cb85b64ebcf466
Date: Sat, 25 May 2024 21:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716672262
