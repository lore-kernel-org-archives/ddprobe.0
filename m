Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB1E1B85D7
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726394754; cv=none; b=HrVcyzNHbxLeWNGY6Wy6osGAw9JoAm8DSaxMlo2CWBHQgbGNmBYZaYQp/vXksHZP+tXhJMw5UUEOTKyogVfnaYCMBG8BSb2RLCpG7t+Vv+bc/p/3ooyIIHRU3rd02kRmcZ5uoOCf8jyXispk2JFPoqnF/rNZoxQrJ/MmjD6JjoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726394754; c=relaxed/simple;
	bh=EX9uzJ2MTVBXqoNRWYTKfJMz9T798hmZKJFrEk+/bzY=;
	h=To:Subject:From:Message-Id:Date; b=ui0MTI/G3ViuS9RNqzbkWvPjsR3z6pjmIhxIUTLFxbkwlCTTLQgXgUIGQSOnoST8PwCwfryE3gv0W0k4k6NaocqGJhANwKneueAHSBF3TtaRz4T2kBVVvgpAF5t0jO0nE9t5r+ff+MYN3RTIt2PMCvVY+IBXVNjfON6QV2DqTuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPU/wsSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPU/wsSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFECFC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726394753;
	bh=EX9uzJ2MTVBXqoNRWYTKfJMz9T798hmZKJFrEk+/bzY=;
	h=To:Subject:From:Date:From;
	b=VPU/wsSXrF2mOElW2UaasGlkqqbtEwBTpcBJUSGDAoHS47GDutyXzvhI2cux7S9im
	 sKtuzGMAR8BI9c3qx59XEyJT80OPpPH4OdwGymXP/L2fgsdnF65qokq0XQld4hN+0k
	 QCNp3mNQKcftK9FYecmSM+Up6VM3Gwf2I1CamkoQRJwBnbvNgoNB9IL5JNV2W+rITT
	 DPVd0vFZTYI7acIVZiRCPjTcfL2xCpttHQZ7bMqAsQuOhVg19dP3FTOqHi/cfZ9mKz
	 yhUcNFa/0apkLbDl27oL8Z5njlxtaVEzfqkd88RXMVZ7AhNAIUz8CPzkvEACxjo5+9
	 zo6xo73iw5Bfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9451DC35FE4
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172639475360.32319.16977298926186502073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3767d9c681671ef6ef3bc7e04634f680f7833c05e4dd58c2dc9592a14bb3e5ca
Date: Sun, 15 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726394753
