Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADDC42A98
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717232063; cv=none; b=BiB+dJrtzAIZ4ymrJKiVoT62ZDU3H0IcIvhWwEQ4K631mX+DEB2Twjv+3KC32ZORlC5yjeGTl9gZKGEoDI3n/+Kms5vA2+e7e3mbHMwcV3z23znQCY1Wid252IW/JqEljFW14AItZk+ARRdFl5L/wfUF+G/YpryDs4+i/vGB/0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717232063; c=relaxed/simple;
	bh=j/cE+4bmr9RbbMNBG7YKnydpQjuk3o4/wL9WnF9i6sU=;
	h=To:Subject:From:Message-Id:Date; b=dcHRPD6vl+/yezY74HfpkJjO+a5y86QTWB97ieMBrax0iR5jwY2SZA3s7nY30Sj+aTK0npG5WI6DFx3r+65m7SfA44ISE8RjvZA+HI/PD7Vtk87Gl0ifoEnd7ZXnBv3b3sUF/Hkvpmk/S3Fs97B+9KKod5ym+IpJOEYGbh4erLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHJWCGo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHJWCGo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6892C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717232062;
	bh=j/cE+4bmr9RbbMNBG7YKnydpQjuk3o4/wL9WnF9i6sU=;
	h=To:Subject:From:Date:From;
	b=YHJWCGo0fJq3QizSgaNX7osssjQE3BllhMXa1e/Ydkc1SvU0lf8Qr0HEDmmPcaLlL
	 Obe7NoUJN9wzkwJnvTh4Fd1WGTYU+umMpxs1MbhwNGrjaMeiU86GsVYQNa3RjwrrFJ
	 SENimfFZrlnXad4R7sizyZ0AgN/+bMerm0KTXK11wLTsTsqUA0R6CA4NYy2sVr0cwW
	 2cyuKOA4zS2aUDhl0bhEPkAkP3nN0vLkQrz+wTPjvwQE4mv38ywOsNB9roeRIE4Swj
	 /8SxBwGVvFJ8J5f1yMDRqp2QvsWHke5wp9554NxSCVvhjahJFKtOf4FpAibq1SWG8A
	 ZOvBy4yTzyhaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C151BC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171723206278.2851.15696826999872814758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c79f3e3ecc9a6fa68f63e68485660fce0087a7a63e35a4c483288e61369d35
Date: Sat, 01 Jun 2024 08:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717232062
