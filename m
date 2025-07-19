Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D282BCF5
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752890394; cv=none; b=EvEngBbz8s7Rq4OwtYd55JaJPtufUSX/DNwNhbOGUnaapUgT+7A9+o/seANnn2qN1gJTLaS7DM7nMst05eY432XJyjX7qnavfI+b5xMLBq3rCY79anzU09ZzPuhIDdW7x2YkOiK7wX75aUQBaFgp6zcVTsjSVVk1bOh2HK8ZVgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752890394; c=relaxed/simple;
	bh=rfc0AKtrxBde/Zpp0FkLerusM0Tb1HOtrAJSkZAz0G4=;
	h=To:Subject:From:Message-Id:Date; b=kSmVl8+DvQ0uPSi3dQzaupybVE/TymZnljB9nu3hb+mIzoL5ne3swUUGX1jTwVfFT2aSURCp15g2bhjMt1Pt7uiwduYGVbe/ji3X8jiVLBFpFgzetwTdst5nur9wjFxwN/aFrx8qjvfil9+RNfn23nijTTs+KjpUi5HuqD/LlkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhEv7jcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhEv7jcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78D3C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752890393;
	bh=rfc0AKtrxBde/Zpp0FkLerusM0Tb1HOtrAJSkZAz0G4=;
	h=To:Subject:From:Date:From;
	b=IhEv7jcMsrwaqH/Bjtas+t9XrnOMnuat2mst16jWS7r5lLU6Sk4GhQDBUvSnjUsM1
	 xb6u+qO/Qqe7Q39JP7j27sVJ1DLjf7Tpd3eesvWusYCkxXf1UffHkCc/uptNGCHjo4
	 fPExCCq8s5EdprcayGJIBzVh1dDS0R8Qd1A4d2E7+Qw620hEOEQ1Lp2Qqmi6872K0L
	 aLybMsoVUPWL7iRyuqSRdPjYbgUi8ekQhZPO/ukFZldFp7x4yt/fcx03CSIvbkAVh6
	 hYkWB9R8F1xB1GS6gDqTxovr+qWpunyXix2mhJXRxpO1/VszLK0Jzrp+PcyC9YozCZ
	 FQt9swdLjUVGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D29C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289039358.23194.4288503703993237094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1923db922f4c4df9f6f466e1da6d9dcf1714c3e09eeb13bb2b4144c9a67c179
Date: Sat, 19 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752890393
