Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357FD1E49F
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755724794; cv=none; b=nZrgrPx5AEjGavk0KKa//iVuQIIzLfaqWWY6dEsTLh+4V2BbZM7oVYCIh626OzIlatWwuhfCY68Dx5JtAtp8qIGaJfwqxT/OFDXPCDwErznJb4MJSib6VLsa4tScZvcuZ5eHl9kMXkviOtC1vS3+Lmzjvu2aTHFhMVoI1Yk4nSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755724794; c=relaxed/simple;
	bh=JuzZ9glovh/9ktNaRYycC0YIcVg+czKFe1Dp0jDgqXg=;
	h=To:Subject:From:Message-Id:Date; b=TYBWFQEwQoptLmOU2SS5eppDJ+omC32I70nFJHj9jnmeZ/pUecZDl7fARRHjbZvrcUbSo1kwkz+xUuvQxa3jo/jfQbB9TiWhgllFriJ66Vm0KE8IRUN16THyTdTbwfxrzvhVUDJw0BGyQJpes2EEh9fE86KdDSm/42YA0yfbeTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRWSOGEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRWSOGEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A253BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755724793;
	bh=JuzZ9glovh/9ktNaRYycC0YIcVg+czKFe1Dp0jDgqXg=;
	h=To:Subject:From:Date:From;
	b=fRWSOGEi/KePX/Q1ARrqeXafkqPOL4tdy8KMmRLSEcii1qi0onAeaVH1/Cv9vTUWI
	 WUAaFUAfHUfxNAxUlCkayXOosWozehCpCEzlMHGFCDj8FUcQf1CNRSDv9e+JHDpnOp
	 LvLJs3YN0kYFHf3vsjncPb8iuXwOrGdiKw6ghOZbuQUJHxw4C18wBGmoJabHTfUzzT
	 hOZgTlCvH6+yHXbzrUVhAwO+gzP7r39jdu7R8+xsfSR0VE8VCSzGMsDYhaVcE7Kt4n
	 ie5InhLjEq7oVnZqBEnS7trIbUAxjlRy6Dg/EWsbHKsJdj6kGfnGQyUoYw8Bl6s7CW
	 U6k06jZtgVeVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD98CA0EF8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175572479358.12904.7245303360985787930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: debc23bd897f873447a331b1d19e7e8a612f156392f176f3112708be87d0da7b
Date: Wed, 20 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755724793
