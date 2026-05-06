Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2582A15E97
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778041654; cv=none; b=LPNAJZI7ys8efjNFZyaGg4o8QXDoUk7XgMOynLF0K8iA7fRa7UiS9NAZnN2UzyNeYUv931pBH1No8MPz92FJyxjrj+lfDFKp6NEWq+90rM5KtjyimbP6Ep0u+AeMNR6DfLOnCbv744jMs5RXL+VaQ+mbZfc+++1nM8i61pVTBMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778041654; c=relaxed/simple;
	bh=RZsEoBYrYIFPx2ZwtM/iLFA2H/o1dQ33AN3fwuZyKTQ=;
	h=To:Subject:From:Message-Id:Date; b=DM7HIuKuL0iYTgMryQ33falb76NOtbPakmpDltYeb1j+r0h9ZgIqkZcs5UqUJWLqk5RmwF2KOVXaalnJPT/ksdG2lwXwxs4jMP/AChshJ1hlR/WOmCdIMzzYEBHfmBsqxXn87AMPbRZR0DMY7fL7yVSYGNp0bJRXCaH7LreucdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRyOwmL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRyOwmL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEA4C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778041653;
	bh=RZsEoBYrYIFPx2ZwtM/iLFA2H/o1dQ33AN3fwuZyKTQ=;
	h=To:Subject:From:Date:From;
	b=uRyOwmL4w7LUK45mLBslc3gb8HSTZTrDyQAOJFRKT2znxlSOqGhnmSGZeqyT/Z506
	 N4vBtWVtqqOHvI+GmVeIYfU1N4wtd9Vd/kOzxotepL/LAb6dtMXuOAtQAVu3hV5p29
	 IKyzKTXn+8PN7/bzDU3FxpgDTs4UUFPjlHVTULTcs41jaclGzEJ+k1DDqYFsAotWBT
	 tOheGsgoLhlppJrlAO4+NAtIoEips6tZW5WxrP4ngB6vvER2a520WwtSUpzryqF5Kn
	 ihOq6bM6enXZrG2q2m2Cu2gkbP/e9hWTaZ2VXOxco2AEmqXR3i2bB2l2KTYAeVotiE
	 GfQXVCj1JElMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1083CD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177804165369.27099.17266629859683841193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3966183d4d86b77fa921c75c080c9a0096917b8822042972cd0863f0d286036d
Date: Wed, 06 May 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778041653
