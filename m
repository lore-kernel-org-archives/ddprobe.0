Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11222DF49
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751378994; cv=none; b=Nkmu2co57Xqkm+9N0CgplbvTc8SNYmT+gy1cZ5G6VDpj3bDSZiGBSB2yZ8oz58ws2/ZfUQq1GkEztuch2c6yJZbncgNjtFxZvPNP2t+y0BsHE7TPFKmEaOor7WMC9asJgEa57rBtyjbc+n+Rzgah35rGrlUfUFd9aIo0EL9fQac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751378994; c=relaxed/simple;
	bh=LcF59qmQIskqicCnG+CKFsN9YB00nGdoxkoMcEW5On0=;
	h=To:Subject:From:Message-Id:Date; b=fi+D8TJ2MYxNt8Hoxdu+d8ahcHLx1ObHgTOyWqh8NhBnuQSlpxcBuRnjkkmL7XWvJLHih3t5QNgtFQXvOqmCIeAzSA+YQ9SBP8mMzHg+tEZQe/sa3F7ExtQ5ap7tQ2I21ldoNEnqgzdun3jGjFb0TvhM1xK8AQTzJw0/5Jo1AcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRgp3zsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRgp3zsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8BBC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751378993;
	bh=LcF59qmQIskqicCnG+CKFsN9YB00nGdoxkoMcEW5On0=;
	h=To:Subject:From:Date:From;
	b=gRgp3zsHF9mywFkTPgigGumCIRexY1UwjkX9tXTPymW09YI4SYDyLCp5HNHDd6G59
	 /0kSZ8Lb8u7fXrXUmc3NwMmtKvwxFULdgPT2DsFzb/c2X1piJphkoghgWRkKyGPr98
	 Hh01+jm/TfPsGMRcdkwjIJwwNVJFrlJsFsIyNiT3LYZJfv5cnY/y7AMf+kKvMonKFa
	 xrp4+a14Ih4kq2HUHY+3w4gPoiMJUkJ6ZZ+rt0z4a/bu+VL+JlUK/WDuSkl/hCP+9z
	 b1vPxWKIttvHfJ65TyJckUvdl+QfqZIuBjDqxv6chz6uCHfVOXDH6fWEXHAeiLILAl
	 SCkPuFM2O1FeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E92EC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175137899357.28105.13872335063343502510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b949c28623d970e69578b48e0b6a07d9f9dfe18d7fb1a02dfc735e7e2accb5
Date: Tue, 01 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751378993
