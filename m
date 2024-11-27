Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450FC1991CA
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732750554; cv=none; b=lRWIzwZVZtYpZSoS2LJ7/W9N/eXUv4+NelJYxxm19SNR0KxS5+UOjB0eIc2h46EQJQXmNvhenXABja9OeKiHMpB/0yArz+R1n9y/3/1bLsjhl5F764j6gtuwhOunmAVxFvrjojYXhVriyXDpbjJPLMPXk7l6+yzAizZdqArF9M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732750554; c=relaxed/simple;
	bh=9M0yxTwIPDEp6mAMN3rMjFQcioII9pgSe0bMf7ruKK8=;
	h=To:Subject:From:Message-Id:Date; b=oK9qxY3A+B5Snpki2mPXKvWJJpE8KdjGfk2ehk0xqoBKV4PTEJjd7yvnFXaV7XnZotU85+gNdbvTaPMpJcL1gp1HTOm6nCysSWweZp+PUK5MJ709D4xC5t+/+qw+3Mwga20TFlFUB2cgXnDYwbn+rV2UCqqB+DHLPAOe6i8JZlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTtHC+ds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTtHC+ds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77A1C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732750553;
	bh=9M0yxTwIPDEp6mAMN3rMjFQcioII9pgSe0bMf7ruKK8=;
	h=To:Subject:From:Date:From;
	b=UTtHC+ds3JYnD0kwm60nknVylRO5R7UZdzA4XKmEgj6tfmoK97rm0Jj8d0+Qqrq1Z
	 IpCG+L7kdWpqG6Bd5vMQr2jD6qthrw4N2Tr9HpvLsrjL0a5WJAfIETTKIPlAmYLPYv
	 fqXGDTMzTxM1q2rsiPQVUJiKCV6WyZNn1qlF8JA8X7KtwO6m5qDGlSLNOPAzEwSze0
	 SpdYMqDPgpznAnCseXs/uCUWpZpUIgol+X/WuaQuZISWRTBd2OWdyuLjT9zN0K4zbB
	 fCxX+kExbs85FBuXqh5Qhmlt+N1WdMOmrO/Lp3966AW5xbGZ3es74u92qaXPhVVM+i
	 /tTGktk1XLdKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6778D6D248
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173275055365.8529.12719825386021236318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b717a3426f4426c72da8a385c2de5991341f15048ac7aa2e82de838a8101111
Date: Wed, 27 Nov 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732750553
