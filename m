Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C57D481B7
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727181954; cv=none; b=YpqvRkyXyTD0HhRysGTDKCZObZI5mR5Tsemdd04FEQOwtsFPWwUQuu5GVQUwEkuVilxu9v4rHptOMopupxDWgbbP7CeJD5cBHkDuAAKbDFA4nBKk/W5+2/LPod8jJnWGdmUvhFYB3lGANjSGcdXzaHhr/mfvD/Y5Uik7Defjdzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727181954; c=relaxed/simple;
	bh=57gjynGHbBfNzzkWlfL9QA7+svzOwbF0VNTiiGFX150=;
	h=To:Subject:From:Message-Id:Date; b=Lw+7NPqC9pTW/aTTE3ZmXX5IHLjF0Wg3r4LOo1bIfS14f86rLjgTPDgnT5dF1OCNb4XZfJrenJJp/T6IRROCgHungp/HpRk7QJ09/Cf4TEVpiwpiarmdO9nK9YNxBuZQ+ne4y6X7CG9aMFicKgMJXsN7diiW5BKzwAenv8LS3GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rokK8OAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rokK8OAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50DEC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727181953;
	bh=57gjynGHbBfNzzkWlfL9QA7+svzOwbF0VNTiiGFX150=;
	h=To:Subject:From:Date:From;
	b=rokK8OAW/MM4r7Ejllk+sGazEsjrWcX9hy6aYR3Jon+xAylAP0L3+bB6v5FVu//rf
	 TW0GnI/9vmEl47bUJqkCIWG4oU7q7Eo4b+zrEZwQSKJKR2C/iZMD346msxqgw4gM/R
	 EG7adAHwqydIj2Z1XpZcDK6xQcA/bFCc2UEPDWTyinwlVRBfwUxvkcAtBj5yyB1q91
	 GSvhK9meOfDtHvhrs66b9LsYG4QQdFNI8VASG8QEG/zMOVUb2nb3fzY6vGZp4dHB7t
	 sq8yGJK5x3cfL4xog9kBFKuwoRFiRRcgVg0kZFSeHtAKue1njmLR6djzgM7HMOqInu
	 NLhfpjupVnM2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90396CF9C6F
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172718195358.19306.1607875199329069882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9109f1544e7ad7ea074a1e6ea0c01aca4f7d9c9ba687d94c97b1643e19630e0b
Date: Tue, 24 Sep 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727181953
