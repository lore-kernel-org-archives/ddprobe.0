Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3644C19F42D
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750094394; cv=none; b=NiIsUWmxnYb0k0a8lyBLjhK4XDOrWEW4K/IDmSWxso0vX5UwpytYtNF8DBeC6K7b9ufI10qlVPw/8qA76K1qil+6SrTak8/ZbGNz85yWftBgaU79m0rkarcQq3xGJHrWvnQ2cNKTKSOu2MVFF1FMk8WEJLZllbmSP595YJYtft8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750094394; c=relaxed/simple;
	bh=K5LDFDlOJ5qovADj6QWAfsIvHbhneExTwVW1GFEiM/s=;
	h=To:Subject:From:Message-Id:Date; b=Q3yLcpVgeet6D3cELpca1xmx1etqBpoerbfSvXhusCWncF6XoFpN/qXJhCI5S8ndQnLkPTs4GlE49NGHL8kZPdiYFzK2uD0DeiqMhgR4VTPjHsaNB0pQKzuY08K8+v7J14xNb3yE62XQ/Xty0cguuxThd/5usUASTCpzAwa8gRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXrTX+Ua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXrTX+Ua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD97C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750094393;
	bh=K5LDFDlOJ5qovADj6QWAfsIvHbhneExTwVW1GFEiM/s=;
	h=To:Subject:From:Date:From;
	b=GXrTX+UaDh60tuG04+VdfzDfp4c4nhIGmYcE0dCEIJwTeiJ5OghnyMhwuYfiRZJPA
	 W4TRQAT3h4h2Kcqsd1xCttbKqu548IDhSrWJzGcHBw2uWHk7fv5of9XqjTB2D+9Qtc
	 1Vhcm7cWrvYVyyVoG68O+bmQexAGvdTwSy2UuWo2zlmjIZ22FnqYkiZb+JrHhm1pPW
	 YOZJz88U3ti24Vb8gXE/Qdh0vRWUonqFvT7K1qV++MCHhWc2SYN+GU647+RvmP7VFA
	 bEPNrg70ezltEfxCM9FC92qHbh9v/x4znwODiHPLIZ1UnYcmZ7ChSBhrBJ0zzpHpsu
	 KA6dNz0u1c/6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97906C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175009439358.31201.10349387074558262738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 559b91001062bfb50a2f93afc8c6deed5410f60b220f585a7c2aae1bfe809b4e
Date: Mon, 16 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750094393
