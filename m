Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492CA1EBFFF
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742458795; cv=none; b=oYx8axLqxmqR417eZnnjeqZ4leH0CzpbgoEeOiVw64ISjbbg/mQ3zj3b3+R/ficfVzADAPUG+S1NAEkXKOlRXXcQuT4PPTz8osyRVzggaOMiIgASnx2NAkEjauQaW0+SNcNIFIQl4zwu/KF5kHAaL2DoO3aMPIcZKwgxKtKVHfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742458795; c=relaxed/simple;
	bh=WKgEKT6D8Gfyt1sFravEjl/8FRHEt63ecruF4ymJfnw=;
	h=To:Subject:From:Message-Id:Date; b=FPNZe2TvjmNx+wGNLFLaj1iHpeMHC8Xi3Utfh0ZxEDPNXpbUyvMhqROd39TXpIIEmA1qHt8+0AkQv1Uacu5grGMKy2DKYW1c19bNqJXJ49xuvDKjExOfM6ywJ/smDsBrH7G/9wrBT2qFjVQ2LHXbiRj6NyyGFoxwonZXr/C4hEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oP66n2ni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oP66n2ni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C026AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742458793;
	bh=WKgEKT6D8Gfyt1sFravEjl/8FRHEt63ecruF4ymJfnw=;
	h=To:Subject:From:Date:From;
	b=oP66n2niGNJW/UtndLF7UHianXBu69i2ijHTUKoTMxemPkoFIx6yc9K3UOpiUdLtm
	 RRjyUpc0JX3TLn3hOPGVTtphSviq33F6vTDae3/3yLhrOvhXPfl0hWn+3NfJnWUQkr
	 BzuOH/KMLJqb7rT8BDqQbKqZnLWoJ+93qvkQVP/VtlEnrjxLlg3gW8mafzR2vyhina
	 wjF0Dih17KSYfjDPgmS31VahsgO/Cb1Ka8WI5HW6C9zIKI2c6YAaU2JflxQPTTJNHq
	 hQ04m6j2UiWpY8V+t61fQiiOBbRLKUfslr2sGRE+MpUVWi2Q95TM1Oqr1/cn9Vf/IJ
	 3L63t2GgnwK4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63A7C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174245879366.13448.17330319259999411367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a437a000a2375505f047b66fb57d581a9d5e08cf0fab3fde7c7527a2c51c3700
Date: Thu, 20 Mar 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742458793
