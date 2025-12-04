Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229DA18AFD
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764825774; cv=none; b=GcqOs4th8gNELBdtfPKScKNRVVmOTx92uBXIRbJybd9cqPS2ywEaSnRDbI7LM17PKsuRRyfszqkVC2NvKG99mPMZgt1wLSb1iPfTqlQ+ix/ajaBU6gxYfZk7p1eemnKAp1n9IyW0LYkCzpeIH29zjKIXhOZTxs72LMFrLwds8Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764825774; c=relaxed/simple;
	bh=BTyirhloLfjdAKbBRrQ0yCWQqDEYq4Bcjab5RYcn/NE=;
	h=To:Subject:From:Message-Id:Date; b=GgDAiMl9gf13PzGd7NWKt7oEKbgbqstc/H0nM5aAF+sSCvIdfFnSb8iqFWRUc5zwP5caQZNrJy7ltGkPt2/Jc8roM+nQgLVokOq6t3TIvlyglrM+v/mAgfmc3jyeYzhi6jXMhOTblZXJ9YpCp/NG6Yh0pBIKBF0NC3YgBElMHlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLDAZYPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLDAZYPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B064AC113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764825773;
	bh=BTyirhloLfjdAKbBRrQ0yCWQqDEYq4Bcjab5RYcn/NE=;
	h=To:Subject:From:Date:From;
	b=ZLDAZYPWnUbkjTdC9Iv4p1LqPQXJtPkWLpX/MXRRrvM3c3soaCRMaPYty2/+xpl5R
	 1+p9u3LAnGk2Vh/ABks6WiLSiv9Tkzh2etwDyBGk76ebtKNcG7yYDDTduAUXJ8jUCb
	 NSbHYubq5mJjSpDhXcmzqY5vXk4AHVpmfAmiMLRb+ySI28I1kKSbPypdnfjbBnW7Ed
	 zFRHnqCEtSjDqrGd/B8KeAy57UiAQbxDuPWjyvScdQK/8fuGVcno38kPZBgJgIlJSP
	 2vhXYlWFEdxIu/51mRsTNlgmLiHIw/T686u/3G62DuIvwhavXnVWFHxvwREZfknB45
	 /YZ5mP11Sc08Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DBDD1D865
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482577359.25071.4434071252425797874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c2b43c5f09b70446d1a92fe62d992416a15f33e5d9fdc4f7d7e93bd7e32ca1
Date: Thu, 04 Dec 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764825773
