Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126222DAFAC
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764712974; cv=none; b=ofJxlvmEpRTb+5/eQ/f5x4rIQyOwONYzXNP2As/Ok7Cg0xzpKe7GgVIlOo1qwFeZIUJ/bowGz3nUq3Ww6CCflJ+1zqxv7PWdr/aDOt39q1RxLkz+hl/oLA5Qb86HsgMV8HDNfN48oPNLJxFaIlpgYcQXAua/01NgDdOBG8FRgtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764712974; c=relaxed/simple;
	bh=RQ14NUIRZyBEubIuuC2pk/0Lkx/yiGTvMBl5iqVjpKw=;
	h=To:Subject:From:Message-Id:Date; b=ZDTBeEQ1IvRyM4ahEnidWgxkQnYtxIiCl5UzOkH/ob6Qkx79M3SiVpjSrvc6wx+R90hC5E4GDCwwjoFSSXKPqYY2TnYbbzVTQhjstnRngSX7dR4/5Cbp2uxFY90Hjge2Q4NEs2I83hJwfYkwkUUF8qE/RZg/bXlaAJW7EcF8ToA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpgrUTbq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpgrUTbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B10C113D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764712973;
	bh=RQ14NUIRZyBEubIuuC2pk/0Lkx/yiGTvMBl5iqVjpKw=;
	h=To:Subject:From:Date:From;
	b=ZpgrUTbq0Fx9bjyRFF54XTEzj1+tXC0fe+nGQSQW/7BBL/USfp0TB9oNWLSP2LH3E
	 7E23R0lZjfaAEKpBtV9HRFzv57BF0WYIon3NaSXeZhL6oHZLP0k1x9y5arxHouEn5o
	 CShSd+ochE6YFGWwpH0SiCqlC4ypNRfSA66YCXvN4x5WS/0UF/7d9UVrDFUVok5yR5
	 Awl5p09z2RrsmmTfkHWoaV8fAZNVfDkJR958VgB8VlLuGebMdM4SaJ6XnQT2Rq4SoX
	 xiF7rGQ6w4CEG7n+c1bbZxKLM5aCkthsuMmHBdy3JQX5jzNf9SXcNqgeq4F77BhKtZ
	 hGRwROgL9p7Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91461D12676
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176471297358.9055.18352494690730435193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4fa8202497aa8aa933d1cdb7feb4be7e0743c51eaa1ca015b872a8fba77bdd
Date: Tue, 02 Dec 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764712973
