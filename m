Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BB930FF31
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774626894; cv=none; b=TaFraMbF8sZMzqV6XSKMjKhUQzdgV5BoIoX7gyEDOVGb9WERhTukKDDS+xAS2YJzbjj2UCQfVH0TgY3TaOshODFUSsZf+5c8yAGE1vR+U81zezACXqpnt7H2B8UY7z8pStDBin3mOMSfMNC2ofgSQ6v4kum3CLUXsTGS1QhxRX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774626894; c=relaxed/simple;
	bh=5/gBD90xn5RqeCRLumcagnveZsJWzP2V5iHtmP9CuIc=;
	h=To:Subject:From:Message-Id:Date; b=TKznoh8UpWAhkjEVvKWx+8AkS81/oMI/LvgtQYE2txwDHFaKGkejNlCC9tEbhVB8960cccvUt/fmr6jmteaB0C/p+Wdk/B9Px5DpwfJIeVzsfyGuavSmtYW6aEN7dcNTDeGQbJ22baGT7THsfXqeoaUU7ueNeE+x1ev4UNVU7C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABamyRdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABamyRdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD85C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774626893;
	bh=5/gBD90xn5RqeCRLumcagnveZsJWzP2V5iHtmP9CuIc=;
	h=To:Subject:From:Date:From;
	b=ABamyRdADsMLoOd+J6W8rtVwfuKSjs1KK+pfvqC6GE1BwMqa5TeIJ3hx3Ff7Fqwsr
	 htG6eqHkr8dwOpq7ZlHOCxOiNTmQplyydN7xJNGrzEc+wnCRYfN2hKqdt0kG23NHP9
	 NMKsUsjdSwcATMwABwTJb9dO7sqpiYtpVmtx0g4vcVmu8BwefvjQ4+LHPItwY+DeQp
	 3J0KegmCyPqmHK8iLjFAKzIOylRG5xkiJgfTdrxyqxxSh0j0X4ZgNAB8Aq2PIZH7Ga
	 iGJTCRZC/ZbfQIfDowDSPjjsiMvRHcM8agCE18I7F9hQnTupu/2Ij7FXthRqqWF5qD
	 UPRXBL38M7qWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9831810F284A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462689361.2923.2804956370096065980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7c444efa3441be4fdfd22f229bb48eb8c46471ca064e6280fb7cf3492cc798
Date: Fri, 27 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774626893
