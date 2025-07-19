Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225341E3772
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752916794; cv=none; b=eK3QSJGznyxytZRaKsJEHRnEex3DyYwAV7tZjl46OQMI7g4/rjZtZWXw2Auau4jgV5SfVLK/ZqpmftJM4erMSn74erlWYZwMtpuGyO9dkipzWbHMJj+3z2Kx6CeS28b7EitDHSSNyPfgemBegsRdOyOZwIF/bhv1Hq+wOr5Pvu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752916794; c=relaxed/simple;
	bh=OUYFDpEFiS8o7s1+H9iQdRoCUGSKzNtflLmMaq8N9rU=;
	h=To:Subject:From:Message-Id:Date; b=SJ56sktq6nhNzAnU4yo8Ct5Gh7xo3ryBaeNdq8uz+cF6CPhonknn8A1DhcTi9OmHaSK/4t+d0kkNIalOqWGsOLsbgid8c69lN8SLmyQ8al4jDkxLzhVKqXM1YD+2d2gj2woISUIFIb6+CAV+C/+YDjJdKd58BBY0EKX6dbdimFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhKvYn2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhKvYn2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6519C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752916793;
	bh=OUYFDpEFiS8o7s1+H9iQdRoCUGSKzNtflLmMaq8N9rU=;
	h=To:Subject:From:Date:From;
	b=dhKvYn2ZpIguc7SJw9OJUnkbsxu56j9i10AvQNe3rCa/FcA69wpt9FaPhidcVmnj1
	 hYZxYsk97bj/ZggEgW69OqDA5/xgjZb1vEY63eEpFKOkzOBNXzDDQhjRF+XmklBiVv
	 iT5/BEbhECiwlKYZb0s6/t1Z4vZDNtooMYZfypeGTkwFCWUecSUkyv/VIO3DlJZoED
	 lBOuAj1vgHR1ucGe0ye4TkvCYLZFROFMcMxHu2ZFqo23omm/Rg6XHlCBM0WOZ01ALF
	 yJaXz1dEh2hyPsVA/MZAZPM2vGUIh1UJ5WADmtFEkL3Ioz8ZYTX7q5gz4+a92hF57M
	 swfntfi+UZcqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94036C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291679357.3527.1870511775502908970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c009104eb1b56e02105d9323b53d8b9068fc1547fb27fc8ab5ce1298f1a6c0
Date: Sat, 19 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752916793
