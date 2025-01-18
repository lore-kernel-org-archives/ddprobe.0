Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDF513C809
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737226554; cv=none; b=R3CSuNps58BCVdE3UMAmLBn4C431YixPrgXMKSoglfK/eLUXSHqydoMw2cHf9WafZoxq8amGji2mNTZTMSEDj2VWT9H0t52/DNdl4U0jpmDbX/ayIp5m9+I1gc+6putfuejU70zXQhatXNkALU4hzZoa6bPRXg9p3EOP/phhUHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737226554; c=relaxed/simple;
	bh=Bive3oAdQp3HAvTkt/TmMRSaAN/pnXaG8VUxaWFbxfs=;
	h=To:Subject:From:Message-Id:Date; b=LOkkneRBjDWVDSt1yD7jgvD/6FzYIOrX2tBCdu2E0drG1j58bHM83XjFop7f48ssAH8E/0clOXGXOL4ClN9nvfdYw7xt6esbmugMNUO7IWvOxmddU+P3Qpk6Q2zIhiqZp4c5pdJL7T2Dq0X5DfT6SlS9efZuRijodHUp9/87Cp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCiLFEqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCiLFEqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F25C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737226553;
	bh=Bive3oAdQp3HAvTkt/TmMRSaAN/pnXaG8VUxaWFbxfs=;
	h=To:Subject:From:Date:From;
	b=qCiLFEqjm5amkDKxSzbP43cvsP80Sdb2nbkPAdcp7YSfroyA/wyx0gkbNvu4f4xj1
	 tJigoR2tYmOJAch19CgAPna3KiEUbaZnUVUR57p1730OyHP2fvRRpUOGER7AmeRqJ5
	 IkNRiUKd3/O59GByUvNI/W49oeW7bnsrwqEoyqYSBq7dX++3E8eKf1zAz2T1TBxfti
	 jd2dFDImHvVDu8YZQy/tn4/Rut7DTGZHzQ769jduEeTIrCy3/6POICxWCsqNnSYyjH
	 WHM8Y5qwny3wbgnKZ6CQvMUSIEvO70VGGc5P2/8aBfTbXcx+RCuMJWmuz3i6dNte78
	 AFOeNrbro474w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FC1C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173722655357.18173.2374157008442998442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7759223b0a4ad2f7232df114da5138e7e84cf077d832571abbcb66253b9d4bbf
Date: Sat, 18 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737226553
