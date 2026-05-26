Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44282364942
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779809554; cv=none; b=C9uc8Fj5p84DxP1dQ/16OskK7WmJ9YSuhfrJellAQrHaJHB1konyjusDzA+l14Px35xJgrZRqGx8DRjkwtMjbzYAaiAjTq0lnK9rusIl51ODFXiYShE6DGdFrXYr+TGfnTldP6KNhAf9Ler7lZFmG+6ixPy/r0rbEvOylzhuX7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779809554; c=relaxed/simple;
	bh=xIxbBLYFiq0BsB42Q5wsQISVd9zw8sZMbjHG+OiJo/I=;
	h=To:Subject:From:Message-Id:Date; b=GUqFl92vfQPR/1yGoeDyaFd+TM+h6TCxp6UcH+Nv5Yu1qmLIl60b5wG/BJMTcali7dhV5D6+Rps/nIQC9oHJjzUmxUNQPX0J9EggrkjhyoAOjEHF2BN43bjeo4K+xpuPKACZ+baBPKGnD6tOvshV56u4S85T8PtiZCVvH+SlPAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRhuC0vg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRhuC0vg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AA3C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779809553;
	bh=xIxbBLYFiq0BsB42Q5wsQISVd9zw8sZMbjHG+OiJo/I=;
	h=To:Subject:From:Date:From;
	b=rRhuC0vgoGcVDIxmHN3LGeth8TuasiZWRzgy1ZVBPSftkfQCAsB/0tfn6sbbP5lCS
	 /sHzkGdaOsWF3T4WCeVx5z3O4jrfLQFKrBg0gOOWzJyN7OHWTexvDP/UFsaitqbIXd
	 eQeHTifRAN24ZkvT+I9A/+G5fyA+lUOWWfTCwbtPArvSWExXgVTkwbtXnu0vZzHkii
	 pWRnnpQMMn+i/uCV4wEmDxkTpwyziEbYmVgN/8s+4hvL9/eu1s+xArcaPt55V37kBt
	 15yDSTP05T7XTLF2Y+GtZasz8W1IwgcXRiQengj9ibgJCWa6arXefVotyf0prTKHpS
	 GxfMZxISajXVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC460CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177980955369.25488.15893234256991938735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1ded327eba33e9f33f2c397cfc1e8b1d15553979f3ad61740437e41c69d360
Date: Tue, 26 May 2026 15:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779809553
