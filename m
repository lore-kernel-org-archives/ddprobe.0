Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A56139891D
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791857434; cv=none; b=Q4VvApefNUo9IbEIsOLQA10fSWQ9TOyKEol7TjwxvVoHw0uKUe7AlsE6iar8pbHWKd5ECD99nGg43JeNaGFJE+ZVGaOCKnujZfiS5etKV0/1LOAjvut29iJvgX6bH87fcz7Rz9Rk7LdvT5bGQBG89AFErmoFmjRgHwxIp1ceRvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791857434; c=relaxed/simple;
	bh=wkcGMFX2c2bpnB74Po4cOhP8hhJMRbjspw5lwnQwn00=;
	h=To:Subject:From:Message-Id:Date; b=cDejFXrg6hPoFc1OQivh6whcALHc6Y173l+nH3/GjXlD1vcTHRrGy/GfbDz7/vUiF4s9ld3LS6+MXjX5ZEctPAiqDXhmGs7vsZQJZrjJ8YzkL7knbYWtuBcUFmuLToz1zN6cfA03TZbCXcJ7BTPVklo3H/IysmJLQlwkzukrqYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U65jEfts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U65jEfts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0792C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791857433;
	bh=wkcGMFX2c2bpnB74Po4cOhP8hhJMRbjspw5lwnQwn00=;
	h=To:Subject:From:Date:From;
	b=U65jEftsQiKgcoebu4s7l/4PNQK/GNi7soi8wPnsCqmCgRoURDRWqcI63NRpQI8Qo
	 85/cpVAZVUCgYxztaqkQRuhKxxXXtw42Cgz2QydP04YZh481wDrX3/34Zg3xKy1jS0
	 62BO7Ou/b5DGOot2TSBTzu05P/dLTrfWA2MJLDzLub0R1jjQrQEDSHxOcGELghcUhe
	 jK6VgJTyjJuWv6yh0DDBo01om80MFk1b6Ftm74+Doo3XCV9TSZIO64n6h+8/NNkCOC
	 O/CHiLFGefOmCtWCv4v4Xg6EOnoc2GvKP7lysulqMrKPh+aSInXCE8U6H9YMrkwe8m
	 Mvjc+Qtj+WKew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB56CA9EC5
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185743369.15401.8399759972860382796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcead4b5521830527e35f11bcbff255ff2aabca50ac155b95dd4f5bd20fef549
Date: Tue, 13 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791857433
