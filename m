Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD1D2741C0
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767811434; cv=none; b=dOx9/AkZHCIoY7Q+61g/+WnoJytQkoylA8EoszGS8J2B2CqXGCM0wVGkVP2w46w0Lbt5Tnh8ZIJlS/XT6z79qFoH9nzrFPhknNLv01EsqAB0CB6cREKD5zkF6aEZhlgH482W/JiLQeADv0l2SH5OI8jb96qzkRqIb/E+H6mYySI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767811434; c=relaxed/simple;
	bh=ncy4OETD9wucqu/hWFVDP2bJwu5bqYO0wpOdZ5qNvTA=;
	h=To:Subject:From:Message-Id:Date; b=ft0VVD3qo4aV2TnqCuU5xAuiCrw9KHloIdxF2pHJINXCP8PapwTyN2eGYCGSb9FvNMq+MaWOG4YM/SSvIswy2l1fKx3XgDytax7jbm+zxeMl6S+hRVCGUths2Q1lkaX2zdVQbkQ77jpz7g+qrt9r1sfdzYfmCPg0D01tRdHSwN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qe9XqdAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qe9XqdAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4E4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767811433;
	bh=ncy4OETD9wucqu/hWFVDP2bJwu5bqYO0wpOdZ5qNvTA=;
	h=To:Subject:From:Date:From;
	b=qe9XqdAK3779Hq9cRLxhKQCes5vR+eIG4Pljuu0S3PCqKQUrm+i5MaBr63DrMW3aL
	 Gi8JjOXZeQm3wDtv88smL3g6jdClV/DXG6yI7TXyvSGV7OF1L3toibT0IrDdjH89Dc
	 M35fo1YXPvbjCfud/BTLvrSuEbG104B4XKAvPQTFaLEfxhbXZj7RWuD3+b4MQyIHDz
	 dE5GD4nSfLBlIA4luYWeHBR77Pm94h8ygvCOYAIKFRVoVaNKoTtHFabMvg5SZvdazl
	 nNUXB2GZQzFWyePJAi/GzpsgwKcs/dxqCpmLJXhZ21B5ibmm0d+GeYcJG9VZwFj+ms
	 NtYb/5R4PANYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDABD0D16A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781143357.14933.2136182895342241376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea4c70a5d0910b864d13774d11e30f3b0cea9a373492376f7f0123e381b7e53
Date: Wed, 07 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767811433
