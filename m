Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C18B3D6CD6
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789812634; cv=none; b=mXYrgysQQRx1hQ1UCIcNn3ku00xpMF0Ba6zsZDFYa9erdVRX6NKXNWK3j1OYFeoAu53xb278ngUEp+XMs57Oj0tLRtM/BIATjP8LvomAd0T+b2g+PlB3ltRENT5wA9mzX2Qg6kPZYzYskXMfTcd29ZlM9SFYxaQ510Y8nT0L7WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789812634; c=relaxed/simple;
	bh=9dp5Boh49nDJteBr2wMyVTCGCgpyjF0Cm52LHS+lsp4=;
	h=To:Subject:From:Message-Id:Date; b=s/UgIuy2JHpo4ZYe41JbT11ifNeJaAuUhOmGxzNACfVmWGk0uNT+nDOBZN2YpPMytZjvYRLvJu8ZTes/zlHbZHIdJgdgCuuuNWesWTj+cuo/n/V764ZXSPY+nX7TvxBWIckrSqca8cR+SwOeW22zp0opro38XfiWIHYFlzFCGdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpiQl1vF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpiQl1vF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03B6C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789812633;
	bh=9dp5Boh49nDJteBr2wMyVTCGCgpyjF0Cm52LHS+lsp4=;
	h=To:Subject:From:Date:From;
	b=dpiQl1vFTYd1jHeG8TrQUhmDh9GH8D/Sfd8u71bxKT+azK2GIu+BCKH8rOGRAEJm6
	 QYxV4Q4vPgq7yPl68Is8HzvI19lzOD/ayVfdOJvajlXrU6kzg0ysNCc9zmePdVnNnd
	 n/S+E36HXK2qybOfkCcWYEJIFe4QkIaFkYc93hgrr685N4iduS/EYQfsHfj+7L0v0l
	 zHmmuFE5hL+t3teQDN3osOM3cY2qdXQC3tzyRLKJz7V/EDIS3kmARjgSY3qpTSEeOA
	 d963irL+CebpW/zF43glu//K9SSyGJ5c76rlI7pjtGGNqZHrdD34st0vtXBkWxOOFX
	 D6eIE7E6rSnuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC97DC982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981263369.21699.3224735018898483760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aa96b837f18d3f4492d5cef999edf31b98386a9231be7f6af03ca89a24cc747
Date: Sat, 19 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789812633
