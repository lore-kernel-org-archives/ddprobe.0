Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377D8292B41
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750197594; cv=none; b=pBxilpupbZEalhZ2ZwacxOHpJNpF1WEEWGJEsX4P68Zf89LPXSMFA8xoPUpMJKKMrhyvPxWYh+mr3folhvUn4qjXJSqM5UhFX7vbHK1YM1u7UzlagrqhQszU5Cnouk3rJmpV9AeQXQZmdXDbBL6a6iP1IZM+W9vIXV/CeculPhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750197594; c=relaxed/simple;
	bh=nBzVkeqy3nQVI0MMOkZ1s9xlcBMHok/oxOcsuRVDQHo=;
	h=To:Subject:From:Message-Id:Date; b=tbbSFqVVtAY4vTKnx0pmwXaeb1T1ZdkhJ5v+Ngq/I5p8WQvPUC03KWXJNgWS2F92VFCecaMMUnEG6bnv5Iycb/gnsajgeGB/Nkei+m/XNe63msmcdTsGdBzmGJDGgbGQFcxFvPhZ09/wgwKVgpZWbSV3t4Cjfr9q0zNYPTIeXAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pa26QCF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pa26QCF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3433C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750197593;
	bh=nBzVkeqy3nQVI0MMOkZ1s9xlcBMHok/oxOcsuRVDQHo=;
	h=To:Subject:From:Date:From;
	b=Pa26QCF0sSiJWytWxUkk+WSvv7l02Mt1tvUW7vmpVRm5uE6lQrI1dS0cO2ffBO9hy
	 y/CFP/RLYbI0Toxw+x5Rz2Vxp2QIe1UUDQeiz36JhIDmsQUIZq8Q2mxv0dP1v4M/xt
	 oqELxgdJSSow47rigUOkwQfDBsqchOFrQsiEdJO6R1cdW6FurAzLQZU6MSnEzxLjun
	 35xzKYADl453Nb0HjBX6qFOWKVCSi1PFDZgvYxDWVoF8onLxLnBJLtOOGLWXQQy4lw
	 lkKGAcJxpaW3etjNrztUUIZVaa34G7ua5Y0hQzw2z8eHesbRCW6A9S0YqPoZwycsWz
	 ZYbEDI1DIKzbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A8BC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019759357.29880.4115727354271514082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff25051b1fcb49be157d15de91ccc99afbc208b0de472fb7a090c7ff7094e5b
Date: Tue, 17 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750197593
