Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A17163
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717581383; cv=none; b=lPOFvuaMLYaM33hLl7tkC4oJtTG0AJDmoQdSOaYY+3z+6u16OLG3I0vbes2GsX6zSWsTEd+yxNt0KwUwGrAZN/jAmPdNimjjBofvZ1wOmTX1wowt7nG/PJ8do7FUpEcEWQDHvBrU70KCX9l4IoiOkcv3uP+Zl0Oz8Se3fZdXKUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717581383; c=relaxed/simple;
	bh=hBsZis2AcS1LSNYTqSbzErmfU6tVJYTD7xaaqZy4xlo=;
	h=To:Subject:From:Message-Id:Date; b=PQjBJV54UCFCj3OyffN46RZ+6/kazNYH2MBd7RPE9vX2sUESpWQFX5MIDF+dPqgj/P8HVc4yUm42Y/7F5As6fl9oqElxRrzEGoqZSCP9DtKplmPI79MKS/xS0qqMrRb0Um4yZ/FbhmKFIipS5AiJbA/qLLk4CoZIbq38FcuaWvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONhG9XC+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONhG9XC+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD00BC3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717581382;
	bh=hBsZis2AcS1LSNYTqSbzErmfU6tVJYTD7xaaqZy4xlo=;
	h=To:Subject:From:Date:From;
	b=ONhG9XC+/mc3HOAJBGIgWt1fZ6y+U1UaOY35LtYIwgTldtGQONV545ff7ofBDMGLF
	 khFtu3IBbSVyeVyfb4GJqx5M2Vah2cXHhYD00P9oObaylCbSp8O2oFEDsPErj9vEIc
	 MWYeS298zFZ82qdHDHUak+wI/nLUFazNJtFODQfarWEkWYdjOvE9tonndPAVNjvVww
	 w6SN9c7B4wO118SKYZad9hFjbSazpE/MYGuV6MtMR3QYIckSZFFPj4yM4SfKsN3O9+
	 l9Pvdy+ppgh/lrd6d2Jd4GwHpEMuArYpNljKeWHyoUiUFlhbmUFlrJKC9J/+q6Xf3y
	 6JkvNdHmYb5fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE4BC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758138276.28725.18293155740576969334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05dbfc43aef1ccef37d668f2f5f38806d1f48f28ecc2c86771320c3c7b53c051
Date: Wed, 05 Jun 2024 09:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717581382
