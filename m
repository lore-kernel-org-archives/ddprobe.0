Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1DC308F15
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779288634; cv=none; b=s21KoRjFvo8VjUrkh7UTI+J36HMoKM3CoZsUlQj89va911aeHT1PnQDazxTPlvGciaFvY/RbUgGB/3HD9nYlJaEGYWRFlkaSr0441eF5XeowcyCAJfO6ZgOb+LHCAduJFRRPoacSGGsbYcoOVUEQdaE+sNMnK4gz6ygxmLnu3p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779288634; c=relaxed/simple;
	bh=EhA5fb3yb3Bg6mn+p10W6Bgfpu2dngIWMhPDXMV2sxU=;
	h=To:Subject:From:Message-Id:Date; b=PjnfH6T0qBsKk6fUvpbvnmOqcpn2wWuEI2s8FKhD0F+PZrlvtq7En5YtQFfj/5WDQFMULYtL2unPol/c9sJQm2413pXfaLvmmKX7vVWG3HiOJE5pL9kvEUHA59gS6sXaYDBglRqqszHYm4Oh5TEJi+JPRlvJwhgbpiMX6PqGjRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsBCt7zx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsBCt7zx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE592C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779288633;
	bh=EhA5fb3yb3Bg6mn+p10W6Bgfpu2dngIWMhPDXMV2sxU=;
	h=To:Subject:From:Date:From;
	b=WsBCt7zx9HkXUbVWCZ3zG0+oVn/A+JjO+P2yL06XinHx9dLOilvPjSfRNtACVkvCp
	 ueN3uhxw6KHN0dQuP7+iHl0VfGDxml6MC/WBK8vWchsm38TclsI/Mij7D+FdV0t1tN
	 Qex3lBRYWXzesr6UruDa1yG1PIBOTvb/Guc5hfsnE2uuxoZ+23aFyCRbn2GtX5gxlM
	 kRE8tAJYcdf9yH8pmZQHsGxrjK7rji+XlTnbyhcsO8kh8GKZLLKxgUuYNgBPnNKlXN
	 1QeDCBDltGo5rbjzLhf3F6HErAnXuR/2fvdnLRHRBl/Kvqeo4sDWi/y+UCtOy/MLX2
	 FFXAIZK3Tiwjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B189DCD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928863371.31183.875015398355259928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f98589c8ad28356e7f2428ddcc5faf5798c0a950351fca5aeaf2422190c692
Date: Wed, 20 May 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779288633
