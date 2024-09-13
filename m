Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CEE323D
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726206954; cv=none; b=QRjfdjDNpgn6IvzKrtuXf/+KlSM/sHjOApmc9OCxAgUfSiJB7TGb4qo/8k7Ul+ud2Ena2AkJa5F0E4Dqdcfj8ZIeNtIlga6v8/aSAHRJPq19qvlkziAYVx0AVwM/F2mZQ/5MpRz352riHITpUqWTmoQlh4ezmK4vVO5uPxkUD5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726206954; c=relaxed/simple;
	bh=7Ot4/vFpyhOOqIF7pFT/Uiz8BEuF+zIiA/kFF/bif78=;
	h=To:Subject:From:Message-Id:Date; b=YxMXtrkk9BVWKKVYBE0jQGacFWZBzS9lw98UXf0V402TLHnU+fIuKE+KrQHocrg/qdwULnOYn12fN9THeqC1t1J1weYqW/btQr6kt+oG54Qwz+c74d+Hudu1iB6r4hF6AOcZZmlLeFDvyPN5lCfZ3VMIISLTaoOSS7lDQBkNgKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQnTAHfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQnTAHfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9404C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726206953;
	bh=7Ot4/vFpyhOOqIF7pFT/Uiz8BEuF+zIiA/kFF/bif78=;
	h=To:Subject:From:Date:From;
	b=tQnTAHfVuVs094ttKkDgeZJeyUEMF9ZscIL/az0DkqzGI3mt/YIVNkPgkKyHeMRlz
	 G6ZLbdiXmveLJXJZAWMus3Yg12c7zwftuJHjl8pT08p5uSs1ZJdFBKyoKR5YOESeNT
	 ARNqMm+x0+7HcgJzuHr2m1X9sYCYJkIqG74Vs8rBCZ/UCzIvmP+2+n+GKydGWDo7RH
	 HFfHbZlmVNWdO6x4KGbWogxXDScPZat1Uf919mHoWeysMRMKoaLdXSkg9tPW6dldA7
	 PzCcJEjRwU4OHlwe7RHqz0nwEVDlL38Jpo6Of+bapGTVueSDFFgT9oRNhGMiABRsTI
	 EdHeU+jy1Nw6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9429EEEEC0E
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172620695359.21886.2099046740983719853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b861ae8fcb5e5996c3fa6575f31a5b15d5ed4e259ce2afcc9e8e97749e173d2
Date: Fri, 13 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726206953
