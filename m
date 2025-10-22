Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2151F30506E
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761128994; cv=none; b=BnV0gO8UCfUI4wp5FSB9f3T/1Fz51KuueyyLnf9qjfIMj8+b00St/X9pg7i32/OjnTR2H1QkePR0kcfi/wLO5dG0P0h639EmTwmTF2qMv2ka119BmqaghYtzUmSWcnq3hN5i22OWH0EZ8BlYrbjkKaIZLwMpqkvE25YZeyr1Ang=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761128994; c=relaxed/simple;
	bh=NITWinf6achISmNOwvScMtwVY5bGp1lEntQZl7l3L1c=;
	h=To:Subject:From:Message-Id:Date; b=ioH85aC+abSfdLdKJJXxYR3ZKHYoZU7nkOVJVfXJ3oTAd7lYECmcXIQUDDa5uVbI/LJwGJ7YAh37lvkWrujfPlTevaYIfjv8lm760ZwI/IN/1VemDtaPrkodGSoAfNXZhFSZeUW7y8uoXPT2Tk7jESV1z3vcd7XJ8MtBatn9/sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgVFvL/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgVFvL/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A286AC4CEFF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761128993;
	bh=NITWinf6achISmNOwvScMtwVY5bGp1lEntQZl7l3L1c=;
	h=To:Subject:From:Date:From;
	b=PgVFvL/97pnU2Tdw0CrLkRQXDaj+NxCb0D7pbYuwGALurohoSb7B3OsJubgZGSY0e
	 ESMI8eJ1LtbCJvy8Jdl7OXyQT99F96T9vr6BN30LnWEXtM+UPrd/m6pXxoF38LNoYs
	 mrwmnINwtI2tk6HuzY7Rfk459B0GB9i+pG3T0aVL+pMzilKZZFoDEgaXKM1DjIVuSY
	 gQPAdPOm6NGvdF2G/6ckEtKZH5qn8RhU5FlVAyemkMbj8ob0LP47+Mrmaeldel74lm
	 5d7DbonIyP4FIXSvpTYUgrBzq+8u8f1iHfyE+dOKzyeHxc1FqqqGgJh3ItGsd6AS6Y
	 P5pZy01/Av26w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936FBCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176112899358.30493.5829815026463489732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad22a174a31e60b87794216e402146d6da7346e609156fb1520a560a066d0d0
Date: Wed, 22 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761128993
