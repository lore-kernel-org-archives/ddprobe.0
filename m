Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BE82E737E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783183714; cv=none; b=bFFsZ3ud82pvEc7k7RqvEkSK0imZIWNM5atBKguyMP6FsnlDMn8OS0h5O8YpDxDb1fbLYnJJHy3WFSV7/vMdqlHq/wWcIlYNvBeU0gNyMPgWIk+3tNjxpSGunMKiBqvdCI6IZ/+19O0yPKLmQzHeeZuWmy9zk0ki6fZNF+k9KeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783183714; c=relaxed/simple;
	bh=Io8jUSLP7zW35EbR2aRa27gD+ApEI1C7lj0g6VSlR2c=;
	h=To:Subject:From:Message-Id:Date; b=RodKYFptHXvYdJzcaguVPAmPHl15gUKOdG//nW0lPjsPTGOjYcjewGHMLvNEPlkojz9QSuEAWQbIFyjd7sZ4x7xPDZ/mLQp+3NhDQjmEwn4uMRqY0dO2TYVbnyb+fFIbUDsFgDEy6Pbg5k/tknzC2Jjy6mTrHQW5acEGroUedXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYZWskWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYZWskWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFACC2BCC6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783183713;
	bh=Io8jUSLP7zW35EbR2aRa27gD+ApEI1C7lj0g6VSlR2c=;
	h=To:Subject:From:Date:From;
	b=KYZWskWHqhyn+uW9J0Q2nZ9hH3Y9bTxwAzR6N31BCyYYjHRIvY+HMLKxAuvOIhMiy
	 ca5jXhEQ+9O8U2MNaZPNvKkc/+CdK4M+6AAZXiOhy+PezgjJpT82RYS1MxTFDJ2LnT
	 5Ni6KEpGQknAdlho/DNKsibp5Js9jpPOgOZvPAZF+XVVQ4BfCZO5QM+ehH03WjETj2
	 MaCWL82jhH3zxq4ejbaCBsvS/7eTJ8ttcpO4snuUQ/92dJwfw6kRGX3ZEFy6WlrGkp
	 rcNZsMrv70fsVPZElSm12PL+g1lL66ZUA1YZQR/BWNLQ3k9472vKoGwfoySOIdyCbv
	 OAjfES1ZI98ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4B3C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318371368.16626.12546601388821132371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a15bbe8c5b766e8cb445ac7ff04f6b3a5916d04d7c76ace9e958e0909d4302c
Date: Sat, 04 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783183713
