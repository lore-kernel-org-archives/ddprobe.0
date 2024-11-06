Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB8561DED75
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730895953; cv=none; b=IxgmZAA+YDU+AUoKqo0y6LHS7BSdYop4n8RN8NJ3mMZ5iSv/4CTyAeq2jsFOxIVCyM9ogNsXEo2aSg9N+1iiJYCnj60sP1i3QiNX/qzW0AKmruVQZplv0fSTppqjDIHYw7GVp9evT7P/ZXsrzn3SJopqnXRoWbXOU2O78d/M/oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730895953; c=relaxed/simple;
	bh=pjo/Ogp2k+ODibLN/DnUhX2AYWoQ86CRCuXT36WDZTI=;
	h=To:Subject:From:Message-Id:Date; b=jOExvSDThUpTjVsPOOSnIOB9Qxh1e2PdaDLqq0Kh87Ad0Fq04bF3HjBN+reVPfvp12uSGXMLiRHt1PcMCn7hZRaDiaXribcFWp+RGWXUhrJdGCjyIXUIzR3w7HVZtuemaaY9RRbHC6uc89UzrzPWUsSoFDg7rLne4cION6iONok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6sEyWjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6sEyWjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A459BC4CED4
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730895953;
	bh=pjo/Ogp2k+ODibLN/DnUhX2AYWoQ86CRCuXT36WDZTI=;
	h=To:Subject:From:Date:From;
	b=a6sEyWjjhs1+vdPsEXaCcRO6nH+NsAOpvI/eC2dRqZqrp401hc5ybyyn9A7g4O0Nx
	 HTlP4C2v2qm4j6niO5gHJntOeM1BkKNrPpWi7128Zg08QTA+fEbyOgBmZWKqc5c9lA
	 iImWr7tZbpja9aLKH9foyIRgwUj8zdblf67SpdlpHhnED63rwc/YxsvtSFSgXMXx9C
	 Mm3R+M66sRGcRLC8NME2VGvXtNAx6CjsK9bVXonAMsa/ItBP+KewOv3N4QkGEZk79w
	 WIIab5yxIFLoGAVNw7fIJp76teP5uRJ0JvxIwwWY8+aFZYaPVIpIClRk9BFUNBKSc2
	 jgiyquNYugzLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D27D44D54
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173089595359.16163.9998179316717796976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a613df92605706dbda26b3bdc7ffeee65c0ece0a76ae7cfa5f6ab46203aa33d1
Date: Wed, 06 Nov 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730895953
