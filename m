Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1618E145A07
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724007354; cv=none; b=ojxj6XCRqbwHPXo0UoTqq12lXftQW1MMujTZ65pqqi4xB39r1FzpO+k0jYkL+3RILbXI2BokJDkRHzpcZgIKzsMuSzvszVPNfNFNWr7eZCzwS5Ed991RpBiT1juwe8l/46qYiKqXDmnNXCNfXNj88Fg/G2FsUQdRHzxSgmQoLEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724007354; c=relaxed/simple;
	bh=GnUKY/HVKs1Hiv9mlnqQ8nG8T9fTIJAa6tdQLGif/Ws=;
	h=To:Subject:From:Message-Id:Date; b=Y/4zsQAS3hZITAeIZn6/HHbTHs4DJZO2asezIvHYwzwbdEQM9roXpt1hr8nJSxoU9VSyBKonXGZl4cCcamJeNhtRzKBlg0jejF+qXmVMGkXn3n/rhFw2CRUa+MvvSCkfT3jkvSaEQ2LJuOOZxQabu/5QrgqLwxQJ+v5OUhpnHi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjP9RlBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjP9RlBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74A2C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724007353;
	bh=GnUKY/HVKs1Hiv9mlnqQ8nG8T9fTIJAa6tdQLGif/Ws=;
	h=To:Subject:From:Date:From;
	b=VjP9RlBJR/uh4I5gSkjR2kmsNgIgE09R3GiW5H9o9kVQLiNbysGgZyjdR6aNzVQvu
	 IByXGRNIXpiYNGFOp0td7JM6aHgjNm7C5Yi+lKmRSKPBAgWgyBPuRy/ktHDLVEkNFT
	 C/DESqrN9dLaYf9MG8AKgWwo8KserT6asSP+CBObbne/Gnk+N7qbqknm2DpPEYAJrk
	 pG4Qec4VvqVZkriimtFmsdpxnjVTIauPBQaSMcolPlRgJ1YeS0ao/sMKZSowIbVZDv
	 KRKJGAQMz0m8PD+mCRde2PKUOCtDA+buSmLIv5AXBH06ewkVw6mjoJMAPc4TXrnBzA
	 q7o64NNufXceQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96660C5320E
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172400735360.31555.9342294772082269538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ab936ab0c658bcda8efc4b6207776c53f8116565797ef0696df2aec39a5b8c
Date: Sun, 18 Aug 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724007353
