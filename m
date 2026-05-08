Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C333E0C79
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778249854; cv=none; b=j0isU20XYgo2/PwirwidmqffmkUzHvEBki2Ko390EL7iUZHNN8W+V8QysGmtA/OdXBeYUnAn1ekuknjJuBRlCa9W73Mobo78W5W1O+Go6bO33puZmOZHsP9FVflNynW0s35KvT8DTrNS0z/3H5QTbUpZeLTQuY5NIxQ4nNnCWBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778249854; c=relaxed/simple;
	bh=c6/J7mAME1vfkX1b/48f1+uE2ez9lJtTNnD5P8zwS6s=;
	h=To:Subject:From:Message-Id:Date; b=gLKMAqikZNDpycjbfGCQauYWz8Tv7ETI4ugJqx9BDrDSBBzTT+g5RobJet5Gb24qeM8NcsYP9rlSjei6kU8aE42iK516jyP1mWCwsIk5fcq/pqyBN4Exp3F9rmKwu3gCLaK7B7vxy2VVZhsEh1l1BjwC6/95h5QF2otpBktm1uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uulEkk90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uulEkk90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE12DC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778249853;
	bh=c6/J7mAME1vfkX1b/48f1+uE2ez9lJtTNnD5P8zwS6s=;
	h=To:Subject:From:Date:From;
	b=uulEkk90QjmJqhFDQqVY6WV7putxFYyaPckbK0zCYqC/UbB10AvEWsku8Lq5ujAZy
	 wVMWDm+dGY6U34AJmStsFE2aQ4mGBLb/LkQ4FM/eRhrf4ocuxhhCPc+VFu9p4mMN1w
	 JPGodjCXaTtdaZfHDHwjQ6lUUfyfLmoKkB++F8YxtZrDK9GOgdCoSKCrynfdIxC2LJ
	 VHVgXhiWcE0TTFw2Z76qlnne95OYK8PnBq2RhhFU8SczCKxCcr6cnU+epbJl0OzXei
	 jjqrFHQNAnLUqBMDAoxLnmsV6JotTw1GSkHuw95HE+3Tu7wkbXn+56YtNvVkzTSHPu
	 1HomPKpTUUwWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB457CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824985369.2344.11439388778383412634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8960991cd6eb512885c289b7ffc9e9e56ce2824d203f766d061ed1bda2a59a6c
Date: Fri, 08 May 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778249853
