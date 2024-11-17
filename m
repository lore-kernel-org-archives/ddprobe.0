Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2059D28EB
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731833754; cv=none; b=ESjgFG5d8TwzFA+gwpVwNXWj+EKv98rEt5/ZL6rE2zWe4vuwz0dwgWolw/J1/PMY060d2uBpmDwSqvXFOS6NdV3Um3vVSfL8r6WVJsiIrX2uwhK03xvNfR00XZW9UvZkXXFuQQSFtOAGG89TpSTZE+8Y472rV80v/RQH6Jwh6N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731833754; c=relaxed/simple;
	bh=VvAKllJdeP3RQoFNI8na0uAAmnZHoXgH5sRLntgcAuM=;
	h=To:Subject:From:Message-Id:Date; b=FPQbwQfaAtyFXXV7fL4Sc/RxiJnQW/2LFWrVo6KyMHc6X2dK3RuhjAlrrWNEyl1KkGLW0p/CFRPYenRgg0APed0IZw3+OyXx5EjwXsQkIf5VSQYubDm9Nxptf/f92A6spSsKJXaNc6NbfQdOdKcWSd+zQqapCyNoiPKyXb2s0RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIjMqYPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIjMqYPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57BDC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731833753;
	bh=VvAKllJdeP3RQoFNI8na0uAAmnZHoXgH5sRLntgcAuM=;
	h=To:Subject:From:Date:From;
	b=SIjMqYPgWUfHmPZpmSuoqUarscxROtb0lJY1sA+e4nWraV1DOMYa6MI68lPQppnsc
	 8vhXdDvWdxgewOZLOgGo6x6LOOdjesPOKxIO9+TFP6efrB0WBZAq+7ujY1sLViL/wT
	 zKJsLHeOoeEBQajf5e1s9wo18ZNeU5i0O8TCz8gK02B2+2gx7zLYFlXaRATR26f1v4
	 sKSBMZDNAJ+Czi4On+gMGmrSLjnM4/0po8fPiYab5Icgt5R84UYwVR/Y8Uo4bPB6qC
	 qFcMfdwGkjOGbrZwWztrnpzpvJWXWjucDgGctw2g4KI8jEgopkdTsIJljfH52HaE8s
	 xBGQ+yeLrcuhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91886D68BF2
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173183375358.26353.2929364803356964272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90d6e0b160e4cf8249200420bf83a102ed962702c07ec0f6a0bdede42d3ad4d
Date: Sun, 17 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731833753
