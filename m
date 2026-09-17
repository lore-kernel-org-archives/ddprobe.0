Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7999E4A6CF8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789636234; cv=none; b=KEOFce6qhH70BGt3h2AR0wdmzHOJfsNoMjl7HOhUViH5450RjjPY6zKrSij8TXK6WiYzH9jVk+4aVirZ8oSi/X78Ay+rluAjCOPeOKlNJhQCM10rRWTdMPXptL9vZXEagTzXcBoEKmCBlWt6tz1wH0XZ+TuIbUEubrDn4egKXLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789636234; c=relaxed/simple;
	bh=EJWeozYb1hI11HHJAJJcFQAnbrC0hPlHHsqsWvKlu2Q=;
	h=To:Subject:From:Message-Id:Date; b=O44yAANixe7J2gvk2/PJd6nat7F4k8UTGkmM7jpJZwzLzOJQW67r5/4gs4cuAMS3/FMh5vpomBAEC2Bje8mBaGakVJyOH8DDDaboKa6rwKjsRVVRco0olBXcJs7mEtMCC5XoBL/DLXweTPgku/koehsaJeRp8wKxWgRUmV1lsgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaAT7l0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaAT7l0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2CBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789636233;
	bh=EJWeozYb1hI11HHJAJJcFQAnbrC0hPlHHsqsWvKlu2Q=;
	h=To:Subject:From:Date:From;
	b=NaAT7l0YhYWl+C36yPUyR3pKLy1HIEKzl4M2bzmXepAjNVMPhseyz50/fenonIy4e
	 7QWE2bb27UXmpHliY2nApOza1GEbtZ4uIOphJqx0BnkX5YGq9ALXS7FfdMKo+xP4TG
	 BuNgMMnrPjLdbcuMBq7uCPtjQZZtXPKBj7PW5vUndAVDVNLucYzL3Zw4Ag82AuX8cK
	 RAToXGxh63Jwy05PdrUfnWzb6XpAIHTkdaU2CnvHDLfLo7dVB6KE/v1V13MOJ0dS9y
	 jA7G2iAJYByPLliG6VXs/DBjnkh00JtiXpHsNMwfNdury51LHLRVbcdtjuXpF2fUYi
	 9himNvqwS4lJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B88C5C982D2
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963623374.1230.9625846774100959641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb47c4785af79dac61ea3c48beed0b40b9da15fbfa4afdc74036d1f2540157a
Date: Thu, 17 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789636233
