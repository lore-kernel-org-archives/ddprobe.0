Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322382309AE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732234554; cv=none; b=QZBu2hspp9KvyOXNuWGFaRfxOK7MH5aikNTtiFc9SAgJBOOKlfY57Qo+t9qQTOLbFJcEs32xgAjHvQNa+RKfzzy6kYITnYG9yGH/4AwCFDiLcAgAAllkdI6qS7F6ln4Lt90uinrrUVSY77JbFIi3RMWCUZdgUusgeLqK3Vkj0aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732234554; c=relaxed/simple;
	bh=vJkQgx9NnT1VQDPwagDOQATRkUXdcngzwb8ggFEtGZM=;
	h=To:Subject:From:Message-Id:Date; b=eo67fgTdSGDaC8AONNKrn93A1vgv/TVlcPnjdHH2hf+CcwRqDGreEQDRiCYlU/AfcZDIe+KHf+03TkZtfIQkOTKE2rYie2kc/be5KsE2MT8khjsL9qGeKFskRbNC+YVzqlvTF0MOo5Co8iDTzytE/+kNk7nBwr39lbu80FRkqxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpKcPtmv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpKcPtmv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9626C4CECC
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732234553;
	bh=vJkQgx9NnT1VQDPwagDOQATRkUXdcngzwb8ggFEtGZM=;
	h=To:Subject:From:Date:From;
	b=hpKcPtmv2aldHbu9AmDiouwEncw5TH/ZFML+CcQAU9PYSDOGw2h2HYaoYSALUXgZO
	 mqonceT8A/Clpr5kpYdyoDNkJEWePHWbxeyGqT5zDAH3djQpOpTIUUAkYpUT9seNH8
	 mjJ2vrAi7lp+HtPi/zfwdMJSXRRQCmkKJpzX/V3uqqC++PtpDssp2HowMOI/km0Bdu
	 590zE3Xwlx7Ly60Pdo3zdKodkn6yEy7xEShSTJInXXYJsBuKBuSJgWPsUvqntxMADa
	 rLkxe1hfyOd8ZRiiGIiE74WI69xzC0S/B2lcVFaei+3vSu7G0gSVVS02tcRjlqRris
	 3umOS4J/QISwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9386DE65D0B
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173223455359.4299.4594295804587942418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72dc3e5347fa3c4ac1e30c808e2275b3e2af565efb42da1168998409f6982d0e
Date: Fri, 22 Nov 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732234553
