Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29852D27E
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762290594; cv=none; b=tZ1Mcea9VVJPIInyJTH84/nV+3EyuTj4+hZQAclkNHl4P+i8w6ZTVdS/Dw9es2Du41+nXSjlIbW+z7vk5GchOuplIdCuaESZ5E5AcACRUBEE2ptjGu+zhvDYSS6q6HQT9OVZ1fL05LjdBOGvkra9zPFHJc97sSfN1YuZjGQJWj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762290594; c=relaxed/simple;
	bh=i7xTGrutTXioAsGiUf2WTObTe3PQXs3f2Uetiv4+3ek=;
	h=To:Subject:From:Message-Id:Date; b=J5JWEW2ErNCTiJ9kzupCSs1qWuFa93WFZMxCRFmzj6J/mgUBMj7meu9QMd6IWM+XuTeLE+IDGc7fwiOxYdYsUAWvVKiJl68NDBYhUoIzmzFSzaqr0u8nQzOqdXUfd5QiggM5bZ/rOQL/x5jVwFuIFxyFvAu+oh05r3zN4ozrZw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrBexIMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrBexIMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FC3C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762290593;
	bh=i7xTGrutTXioAsGiUf2WTObTe3PQXs3f2Uetiv4+3ek=;
	h=To:Subject:From:Date:From;
	b=TrBexIMW3lTRo5Q4Nf+BDfNNmvawiPcsXk9yPLlofVKByUmkv0M6w1A4D/DXTnDz6
	 C0FUGQ5nhcASfnYTQFXUvGzFQuptS8BER5AYbtIPoa7C/H8dAj0ket8uqLSueX9cOW
	 i/Hz/SO/YVxfBLoDOpKmDKFeKu0/Y8fv1DKaORwGsSeqieN0rJPQsj/K4hFXkMwNJx
	 rXfjIXVVESzIPsYkxrGWNpuDxC3TyJgYTUWLsrjycmkqNglfmSHL1OBENjhqVW9sce
	 UlEk4Yot90rIPL3mWgjI8ikJoMoH2B/9Ehyr0WQ5G9EnTpcbcoZl7s81NAzIzbTsqj
	 1P/t6kOPVvw4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EBCCCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176229059358.18338.5904310500219953713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 841a227f9c3f0953ce6d076b3a3481cd1e3e2470508b12f79785be398f235734
Date: Tue, 04 Nov 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762290593
