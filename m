Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0024D597B
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791934234; cv=none; b=N8jFCdibk2GC7FRaq+fbC5eZ3/T1lnOHhKh4YmpFvK7qgNA8Cv3rNTaUNx8S8lSs66peVFIH5niiPAG3GBR0hMxh8ZYvjsI2QVoPMGLbywunrQYZx2iQFtPIEdNNh/7YHAN3cAo9rwNCNL7fThAgjawb1jodyFqbn6WOs2uc+AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791934234; c=relaxed/simple;
	bh=eGBNKBdL1KDzYZiP5FKOADU11+izCf/D42CRfk7uMx4=;
	h=To:Subject:From:Message-Id:Date; b=ijKHlSpWgdsMNsRTwM859bxoNfkxh0lXNLRff5GvTp2ULUBBuS5Dfn+7MumBSdd1I4oLriie10ZFPfbCgHrA3OmF2uFQuIJJMgPmsS94f71hfg8Vt4/5CfEot4+pFf3MqhaMXXV68zikjMdi9T3wX+twSJ6HFkRkFdYuoP25JyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKA+flmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKA+flmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C9FC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791934233;
	bh=eGBNKBdL1KDzYZiP5FKOADU11+izCf/D42CRfk7uMx4=;
	h=To:Subject:From:Date:From;
	b=WKA+flmCXnqTGF6hOEM0OSPSfxEunil+PjIU2qAxUlyMXMdrpbO6o3LgJ0CeMRGeK
	 LAIycXnEC/f/e8zfogsQU2MRd2VLhElg27KpHpuwNQb4x2MlH4wXOVSowtBbPc1YYC
	 cok+w/xwke/I3nmXevYdgzwg4WcB10G6LtXYf0GoRbP1cAAMt+vuPryTVAwEsUkPhG
	 YJz3NBz6E3t3n7aqEb6v4wsPKUimCXF+3a2Fns31drzWYBTkzgiTBiwvq859Nz1DpB
	 CSEBlEyfEunrrsUDcV04qj/dTgT/mjp/my5lCKq28jRpSphP5JvjGylbGSS9twSe8j
	 rwBQ8OygKakzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC529CC6B1D
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193423369.24213.10571713757304888070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a9e0f4ff16c93892ccc0b6dfdfd5f3b9c5a4e6139b314f3e4cf6e663669da8
Date: Tue, 13 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791934233
