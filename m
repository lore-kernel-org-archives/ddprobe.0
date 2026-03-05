Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08628A55
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772669094; cv=none; b=D80vT5kv0kDIl6ai2twod2xFdBR3Oco/mYMQLFvNjUQyKl6kTN826/OqJjhy8L16LIHNPd1FI6+Ye5mnpR/XuMk95SR7iL61234PSLAA66Eg3/O/gyBZswQPuY7cqLiH/uH/UEH+Xyc4klI9SOK6D+KJd9DgUsyTJZfBhOk92RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772669094; c=relaxed/simple;
	bh=XMGjyBSEdeQ48NwBNzj4KdvyGM3NWfDqH6hrVb7fU9E=;
	h=To:Subject:From:Message-Id:Date; b=WzCRd5W7N/7LBVQpx3ebXAPwmfXKe1h24mFCt9I2rmi7ivatiHPi8b3v0tHY4lX7jFxLus/Hjwdc9AtfXYl5OcQC5U8qMSM8TFbZ95M9naJAY+XHDkFh0sbLN7VE5eArINeJ5+WV3wL4ToKM+YMYOk+XC3KDCbN61zrd1IsQ3Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMe0fhqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMe0fhqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58D8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772669093;
	bh=XMGjyBSEdeQ48NwBNzj4KdvyGM3NWfDqH6hrVb7fU9E=;
	h=To:Subject:From:Date:From;
	b=jMe0fhqKlmOj4FEslPdH3+Cu7RJwiUz8+dS3lJv0HwDNPOt2kYSmnzrH7yQwgcNxW
	 XqeGGAIFBeIheARoUKGELnW2PjM0oKNHIT1PH2HToVukOT4qME4r5MdiN2bjJdy9BH
	 9k2qsK5qsf/kdQWdGhFZNvot5ctDpfXfS2/G7VRD4cYY41ITSXb4GwQZqLreMezBWn
	 V3RWbB+/KkcQDTsSHrpE/7kHARkJVvtPbbPJMMgNDGk4iJPMexemMACV7ex0Hy1Syy
	 V2tNKCtVG63PgpaFDSpHMi6s6rCNex9FYK9DUKCH2eKddk6osckY6L6RJoCc/2ZkyR
	 D7GQ/oedvp77w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918FEEFCE4D
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266909358.3624.12983839567677531435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efe779e8277f5eff3bf91564f89e25e8a6de3de6501286b67ff73e5450c7c691
Date: Thu, 05 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772669093
