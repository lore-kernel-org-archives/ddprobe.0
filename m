Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1735E7081D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733769354; cv=none; b=sRmsnR3pZZ+PDmQItiTmJi4Z4X8XOPvTXchC+s1CwxjdPw3gZrTd2AfMD9rWH1lG3nUCt1+w706miu57xylpJ/d4KCEAeFqgW/+KYbjkTjLRPpMwHhjNMtQp9JcYgnCUiBkaSSirWkpGQBT7mNfBNBQRL3eufzhDboAAFFFP7+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733769354; c=relaxed/simple;
	bh=MYjMq9BKLw01ZpoGk4xDRoRWuutnecvfp97oUCORU/o=;
	h=To:Subject:From:Message-Id:Date; b=eJqLPseN7XAbMF0+GzzndUHn6zI2U6322KPurF8jzJlsQP72KCbTfjccPX81Y7Bpq7/YUq7PANIbrqsupahSMCLghduIU+He7/CThg2v/ENEvrnuL+Y8nUqy9d9pf7oY/Vl6GnCPkycOOlLHn34GbWCFPK0hlqhyQ4+Y8vsHfG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5vTn7hX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5vTn7hX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80EDC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733769353;
	bh=MYjMq9BKLw01ZpoGk4xDRoRWuutnecvfp97oUCORU/o=;
	h=To:Subject:From:Date:From;
	b=T5vTn7hXMPqVTRRmQvGZpoObQSRaLOj8s5vcMoh46iC1b77cdChXaVunsdsdjymrp
	 7xLaoOrvtqrSfksQpXNnpBMeLXt1ku0M41NnagsSaJ+JoIyQbQhWA5ymFprTywTRDW
	 H2QqUa2dFXGkAJ6FdLhCs02imOFnVktooh62sGvySrUq9FKsQn4P2NUnFhLMCwoaL/
	 J2+9oQvguPJ1+k/SLzMcluz+Xsd70OhrN6S8RcX2D9cTJ14zdCAFylSxWjAEvg06Hm
	 MCETk8+c1hyYWGqR1Qv/UbtMljm/c/IsuUQVUz7eaPvxLyxKbXc92jrA9423r1jRLF
	 UuQ5aZUfcA3Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9850CE7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173376935361.11718.5246389840895181716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 594fbc6a76c76dbe654792535ec9fad20ae863f482513e3f3d37e84a455990eb
Date: Mon, 09 Dec 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733769353
