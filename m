Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E1043169
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753891194; cv=none; b=fJbLX8cnwWBSlDkTEJH5LOyGBRKY39TDEJ7ZdAdTDNEMyZoUFF/9VDGjvIfZc/A5b3HXNuUuOhgCKlPPufTWBP58UJnDhveeHvvmX+bRAKVn59pITUyZojhxeeWc0Eqxc8Pd5CASFw9TCPL7cDf2QM3pGiZNjkcAHiIdEQa1se4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753891194; c=relaxed/simple;
	bh=jUgKuhy/JsDfnT1j9Boa46yPmRUBY4T0Oo1UDUIjWcs=;
	h=To:Subject:From:Message-Id:Date; b=eRdjuIDfh8s+RNTa/dHUfKuTEj5MDhda9luhkk6nSiaXOcRdSaQpgCacOGmu/1i8tExrSKoDD3iyf1OKIn767EYr7BWFNpcqMhqZYrZuHwWDRd0n/NodXCz4U6fH+Guv0xGAr/w53hoNyINTNxMj+a86R5u/CYPOM4D7Qv06rn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVdrQqFQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVdrQqFQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B52C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753891193;
	bh=jUgKuhy/JsDfnT1j9Boa46yPmRUBY4T0Oo1UDUIjWcs=;
	h=To:Subject:From:Date:From;
	b=fVdrQqFQFzZyGJB+DPWaL4MKV4/rQStNatbzkjqZNDwRbHw+gwoTAZ5B/6OoJQ0NR
	 PYEJp0uRV99XqUc18s1RL0IJXDcUx3bfHNUEmaNHIB68ciAMaodwKVhgIkdMQ8F3hM
	 64yMsM6JAR12x8dGxHwPx178BlgAbXUt6E47JQVoHF2uDiM3DB4DjhhyxqeXoP8YDH
	 AYlAJ1/ceblXrLaLOx/qMoHzFjZqLokoWVJLG55CFQTVMExchz+Ld2vHOk2HBqpDD/
	 bSXIEz8fKsSETQ60o3QdE8xaqFktQiu1gZY0BuhBHj+Q9JJSeC4UV7NStcxYyovskf
	 bxEAtZXru/ulA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F22DC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175389119357.1713.11112890873314484685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51115ccc0cee3df47430b66ea60e52cfb2c5666763219bfcb9dcdf3a97245cd4
Date: Wed, 30 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753891193
