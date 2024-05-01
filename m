Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491DF4C62A
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 06:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714544543; cv=none; b=KKYPa1F7E6wXkVkTHx0k/sTmJGp2zCy7oWSgFaI2SCdAmMtwv2x9bF2z/JYcR6LsabGRYGPrYcCu843jn6zP7WN5ldVV1AcxgM/5ryFgus25AnRbwirtMVhIttKJ1iNARJ+0Kw4n4hw1lbP0LIxh6bzB41ynqAYOOVcqWcdmogw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714544543; c=relaxed/simple;
	bh=1662ASp/yrSBe9mHKSo/BuGp4zTn4ZHu5+qmoSP7CKc=;
	h=To:Subject:From:Message-Id:Date; b=D6mN9pbTuED1WhW1pI4yomsr9oikdNxay9fCWeiSNjRpklyCGMrZ4TpJUPoI7ZJm82Z1vWDPw/3AFN9rWxPnN+5I0HLu5RhExrd6HLIgOb9YXaixaa4SHwS05YXMZaoBdeqBrbkqLFcNLxZLENNVEbcUHaAlWf2VrbW+do0GCw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3dSeBRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3dSeBRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DADC113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 06:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714544542;
	bh=1662ASp/yrSBe9mHKSo/BuGp4zTn4ZHu5+qmoSP7CKc=;
	h=To:Subject:From:Date:From;
	b=K3dSeBRD5vMa8R1FvkoC3zA+psC3CM96q4sDy6pJaYLaV9sEvssCqGrmCrbg9RTJl
	 yiw1O1JcrJ/aTA0UWz9I3zso3zrgjBnF1GwHQvAN42V8GbpKsYifNkrjUzseQaNFGz
	 rDEzQljDaQjyJPtcclHVwYswrcuVp1Slw7z5wpIF1waKtVV8Rwt++ePm6jXhVOSh4e
	 JWE3LMav6nnIdrImExpAgPgj1TlcYDxG8H+x5b90pJNKQIfzZzml/NKFvIs7iZ8ya8
	 KO0Jqcdn0rkqIDxH/pzvQrkgC2SbQ7KbGIg7gxqtXDHfesT6P9ROMVDhmRZbqyVhF0
	 uzezKOiVwVRzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C632EC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 06:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171454454275.5694.15094630870852716918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21deef7bbf585f947e344eb08156f72d157b07331966bfe575b798409a74c54
Date: Wed, 01 May 2024 06:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714544542
