Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A3F296BCD
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772200494; cv=none; b=EdZ1E/etY3pI0HFNvykZcpM0ideyYyUq3Rx1iYrEKgP4hJkuWa/v7e/8fx38f6kn6WjFqvJ9h5Hf5iEAjZzBM0zEy59DBDcsvqWb0Qp/4RiZ2COtmpELdHuax6kNI0TdBWBfu4TfN8vSg165jAry53f67BKQR3NNAfYGeIGFx/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772200494; c=relaxed/simple;
	bh=EkJXnuVoNcDftFg1WRofWzPQKeSBYfeyzWMoragnZpQ=;
	h=To:Subject:From:Message-Id:Date; b=PYAIEx7AG6QvCck4cf3yvomzeTOgLu2p5lofCirMs5zkjGFhv+Q5FnOfGrE3sbd5TpAjnzcfvrO8/4XaQo6SIH//ObGYShx5GMLEuwU/GlIgdkPl7gd5c40VEE56G4wNmULqjz5ilHf//QRIx76GN3Tv0pb/iNgCGx5c2abTfAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Smf4sFhI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Smf4sFhI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0255C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772200493;
	bh=EkJXnuVoNcDftFg1WRofWzPQKeSBYfeyzWMoragnZpQ=;
	h=To:Subject:From:Date:From;
	b=Smf4sFhIj3k1eZWRIcpBZOsybHV8emcA5z7j/NMcEmubOUae6Iw8uL0CUBQxy7Mpz
	 dkzu2B4gM6EE2lB57oc+h0Nxc8Jm+TeW9laanx5RQI0AhcPR4TXjNWjziKg3btc0Cb
	 FN617DNALf2C4NANrTOWLcX2xm65Zn8TKgMY5ejg67C79WUOOHh20ikyf/RPf89DHm
	 BEQphSkfkgM7MaCOyv7YH0rZN63p86hmoemTE1dYtObbyUFSgCb4zffuizSEnYQDj5
	 sQY6P+MAX2eKGwAKjBqiNoV3p6ZlSQ0KDBqmqjTBgoeUlzjHLCNE9nH25ENWrTnMYU
	 eNQ1z93VMD28w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91708FEFB50
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177220049358.11212.11113505440292570698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85af2366635e43b68634d69a81af82ba62a688b238ccab3976f6044e68b2e854
Date: Fri, 27 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772200493
