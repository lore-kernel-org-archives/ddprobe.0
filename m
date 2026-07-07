Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448602E7372
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783451914; cv=none; b=cAYY1jDMELXYcqqUzedBNpH5GYQHxmq2TaB9dQONSTiMJkfiZqROmSwyuLz9MElVu9/kRLkz+QL2A2q23qX3NDK54n9VqUPXmuLdg5lJ5Jrow5SvqPdksD2ZH8hIIJPodTKNll+wgpq5/IO7G6TcJ0ztN7efIEPVsN6v+eXZ630=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783451914; c=relaxed/simple;
	bh=NdgApBave67GAYu6Gn1r4hLP6Ml+WlQ1w+U01QJyuYA=;
	h=To:Subject:From:Message-Id:Date; b=IbEacyNRTFNtdD63KYp5wlIB+oa1uGMY98/JBX9VacRYtYdnkfIQzuhjG4Mfj6WZgptAGrn/L6CpAtPpDP8eDglCAPffHyQg021rNjRPnjLftQprd35ZEeGxxMteYDiQytRarCFrs10RofqrVwj7k/UN4nZ6v7G9FbY7ZJuNzC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXfy+m2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXfy+m2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7D1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783451913;
	bh=NdgApBave67GAYu6Gn1r4hLP6Ml+WlQ1w+U01QJyuYA=;
	h=To:Subject:From:Date:From;
	b=cXfy+m2BPd/hkXoI/go9QeYqofGpGDCAVzrxotasVGV7kmdbYeQ1aKZ6U2DQWx4eE
	 bc+e0Jxd6JoQJaKSvktAkHfZQjThPbpRteyZyQ/wU/j/g/7rlCXvU2XggdbRna9J2c
	 GG9ooe4EYo6BOjy01fc57XZ1tgLVY8OcO/BksnhC4Z0cZ1YXGunt4AsWLlbTHnQiML
	 v9wTl0ULZombI8EeTb4J24E5ZSux6PqdYMo/pTYyRfsc+A9gXQXvDOrHD/9QBDapdW
	 80U8VHduLaUvbhu04wALTXf2juhYOBMdBAgXLcYtmo04nDvJndcRmmhqDsEbadRJoU
	 FlpXZcWPH0FAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94D5C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345191368.20547.16748429141795769061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d327c1ad3b4b5fa93dc2b6a284091664ee3d0d75fd6836564560c66a1ec3af2
Date: Tue, 07 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783451913
