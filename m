Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443C82914
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743916794; cv=none; b=Z2NamBmfHloYFmS/TrasuVL2vISbkThi6zvzmiEiO+m4E3Q3/+aooJx5Qo1aCbSYR6o2QoonK8SntPz1zQEGihuJbc9KPc0Hz2TF4oyD2oRavPqq9URaA5BLWUnfKxMR8+DIQAH1a3M4FlJfDhOm5YhW7SulN061KR/uIPs4X7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743916794; c=relaxed/simple;
	bh=ydJeaXB3XsfvWrjzE82rmPn6s1OVUSeRqF4iFVyc+8c=;
	h=To:Subject:From:Message-Id:Date; b=amslsSa0gBBjNtXBKX1Mjh/u9pUpwKLI9znb6BCZ+CvhS3b9mLw/N2gM6zsoFsdWevVgmm7Odjh7lQ9xYlrEcnPQWPzimXxyDl2EpQQ4ZDSN97a0MUqz82KPeNPQhUu3++uH20bMOCP4JrioJBd8wHLHyS7CFeeZik20YF/+shA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoT5HKKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoT5HKKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B83C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743916793;
	bh=ydJeaXB3XsfvWrjzE82rmPn6s1OVUSeRqF4iFVyc+8c=;
	h=To:Subject:From:Date:From;
	b=SoT5HKKS3BPcl6gVMJ4k8apFxeePseX3quefn4iB3ujuUa9x8KDBtUngQDp5Mm95V
	 EDop9V7CKSZFbP6n5U6lyvoiO7E7IJ0RUgYG51+NdPmS90WlATec76ACktDVwmDZue
	 jx0kbCDOTLhACe+fu1yLUjBJcEut+aimBf4Dr59p62/RVh3uVMEo5n+dv/pKaBddCj
	 HXfJflXPgk+oYUS//+zRFWsNbY2QFb0Hzz9lSau8jFxKR4Caa1fCT49E6SD39VWxKY
	 WL3e8bTVB31XQ67FJ7fnTH09lTA3KHUZB08it9UbEbauspStCGwZm3JbxRqOSDGNgZ
	 0fOVrYoZr1sog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95305C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174391679360.24832.10159222152258241211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3b9a4067c6ea0be9cfc046fe5822c5ed893eb80e046e2f34e09b3ad3730a07
Date: Sun, 06 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743916793
