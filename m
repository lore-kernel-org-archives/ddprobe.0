Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487DB3290C9
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784827234; cv=none; b=u6uBmtYzZPCl2LELYy9AnDsX4CsjXazA1S8pPIF3wtY4j6eIDzDPUijLmEAppsICqwxL2I/e61+koQMQUrok0D+/9MV+0BfHpVkzus/eJM+/IYaG22f8lZFQLP/oQQcvMvmtK0y3iskZoRIi9udViD6zVIUWxgerGFiKNPlT/Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784827234; c=relaxed/simple;
	bh=Na0/nc6sA7Wsm//tmpypH1rrl06gZYIfnxB+C0cyk6w=;
	h=To:Subject:From:Message-Id:Date; b=uxv5N1YCHXp9GZuc0JvtNgmMnuQb+c+4up/dFnzH78yLllRMqonuzMboKvdrSVOZ0aZuVctIPawyAOuuAu67sLulYiz8+Une6bU08JPRK6+dHuq1ceHa57AlLuUphp50FfcPeeyHj6357pqdeMWkIFy2nrcbGG3uVvOhfwbDQ2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2AUJT8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2AUJT8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AF0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784827233;
	bh=Na0/nc6sA7Wsm//tmpypH1rrl06gZYIfnxB+C0cyk6w=;
	h=To:Subject:From:Date:From;
	b=K2AUJT8fiucamfh9xFra0KZFjLExQ41qvdgJOY3WiNwWCsyeGqrYhn/dZ1NzsiQBq
	 6iNs8dLfjAMzAckRSs/BnF101mOLubptKFCkZiBlTrpNf9S3T1cf0XU8siSwarLa5N
	 r3HKFmGTvAW6OE5L4YMOQJNPWctG/ZQQvDFx7bnNWL0wkCFb2udGpuII7bupBhi4pj
	 0c8TVMG59LH+OJkHqQn4c4hmA+kl72QSvBU0WL5GA4dxtftot8Mgne3q56tH9Npi0j
	 NwRAIh20Z1QFXIBLUamLH0U9Uc1oGEkKS5i22AoBVcZLBciSSYFzm3h8FORSH77RtP
	 3vp3RQYpjPsWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB81C531F7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482723368.18688.4915207832249067993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da9016dba2f1489465391c49d086b602633fb790023c621723381aaa8b2b8f82
Date: Thu, 23 Jul 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784827233
