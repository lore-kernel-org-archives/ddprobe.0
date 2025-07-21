Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D2717BD3
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753067994; cv=none; b=kSuQ2utxBrNxqQVdE/LV2jAGrp33p56vAHf06Qy+m9Ma6VxX+RvUdKHG9RF8ghMhSa/F/yTXsnSKpRa62Imfa90gUeuCNtkLgiejIrhsL206Mlv38GCnKGoL9bwtu5HE305bGURG5irNz0dL0OR075ZzE6SfGNq6Y5d36vtmw5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753067994; c=relaxed/simple;
	bh=VngWO540QbjEnTAupaRQqimfHpGDYXPArv8DxgONwoo=;
	h=To:Subject:From:Message-Id:Date; b=s1wKSjZTLAqklIJrZ3up5IGXgpV+D0PkyOoX2Ry+Os4VvAIcevNaK1AeSosKDLz1j4IpVWrmDtto+l3vRYH0WYCZUGv7qIEyK5xKmMTcg611Oy/YDJJn2U0pqU9KycSBA2Jp/NBkh6JDz+FcqGG3PjmeP48DYw7985ftE8tUzdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iksu36gs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iksu36gs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15D7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753067993;
	bh=VngWO540QbjEnTAupaRQqimfHpGDYXPArv8DxgONwoo=;
	h=To:Subject:From:Date:From;
	b=Iksu36gsPe3Zbq7awTIyvwwKu9Up3cK+WBkFiK5P+InDzXPWWzQ2hQYLdrEvZ4WTV
	 Jf5ud0Wt0n6hCPJU/OdPw8fVm3teWs90/cyG82w+GzVqVNjowlwy8oxuhpAGviveml
	 RJlOsJ2aKtKOkNR0pJLIE17It2kZBcnULNI24Ia/ntmqs3OPkoSulZ67RGREeilh3B
	 cWMf6rd40Mgrxb8YEYUn90QDK4UvytfLuiaRxnNpP478UT3heQowHWNgVbMNxtaITI
	 QQbbdlO3Wu+XFqCERSoyly0/fRUXaRDKgNPLAeKz7C/DW2UfRm5QZ1qDPLYxgEVAIj
	 hTtV3ggPQ4+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F473C83F17
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306799357.1051.9148998173710120817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7737265f93c5e8b93198f9d08aff89f631f9f98801ebf4a8ba0d0f2b2648d4b5
Date: Mon, 21 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753067993
