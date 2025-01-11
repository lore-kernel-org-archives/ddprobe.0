Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289861B86D5
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736628955; cv=none; b=GfzfD68jZ/HHjH/yWd7APx+U4x/Uy59ZpksG0JxDi4RSYTtrW8s68D5NPmS5Z3lsZrc+53IaoYAfeayzWn7ccAoZJ/L1ekkYcBcVEveA4c1aUPkCY2WwHTLgRgcqyVOJye6qsmvdMDSCkXDY2KYYvvH9fs67VL3yhWnu7UTVkao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736628955; c=relaxed/simple;
	bh=L11LU1Q7nQzyNB2mZG5v+3EIphwV2IY+KtByK8lZlTg=;
	h=To:Subject:From:Message-Id:Date; b=LyeKt8QsiY8aZaH/8IYBo2rzOx4f2mNuURXL10yaWbJJ55cvP6MmpOqVqyUEhQpMgAS/luO0NJPGjaKpbQUMoN6c8DNGirMOq3PEh5d7xR4EomaJRxHS7c+vzo7WWAp8I12080jYjfJIKvwD0yZVQW3+TYdy4UEyVzTqXr5W1Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RR0YWR/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RR0YWR/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A795BC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736628953;
	bh=L11LU1Q7nQzyNB2mZG5v+3EIphwV2IY+KtByK8lZlTg=;
	h=To:Subject:From:Date:From;
	b=RR0YWR/kYYJx1LwT0JDt1DW/vwUNHYPPEtC/8bVW9uQS2tVYaLUkl++/NozWVAxzy
	 SfE3aPWqb0nkQz/aH+Gpz99e1bfWfXMSywhrXkWhZ/QtvC/OkNox9Lke+7c4Cs5rE6
	 M4mK/e9Iy0L2Mvexcz7dhGu4mixs/hgQkEa0pNGozDspG6nAd1u8WYuF1BELiPzNZR
	 xJ7j4MXQhvYRzmXGz5hDn3yApk6KzdT1uY9KaqBfhHDHrMgzAYfou9CNGE62XIDG0Z
	 CBEt9llKurA3XivkMb8NnghjAfivmuVHDHt9oaM05j/N0cWQqwSMR898drtaKaE+gd
	 Zg4g5zCkqgNRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9750DE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173662895358.13411.16046826184826522709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a549c6bffec98eaa3dd71d1bd44ba21697326a14c2aa0ef73302b5a616ce783
Date: Sat, 11 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736628953
