Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC681C8611
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752719394; cv=none; b=aNhQe7sEB8yuqCW0EZJSAUW+r+IMfJzw9sLgWVWEll/FB1VSzdfCMw8cTCdDKKV5VqOrrdOP1d8dwprbbluPAuDCX8y710deQprp6/Z5/804ol7OxHIpizOSFezN9POhFtpIJUYAI45TspzWc1pJwxo0OdUIDDFv7JyeFlLbZQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752719394; c=relaxed/simple;
	bh=MwYSvJnbFAfMk1HNHJghWPN6pnH2X0f+TwL586g6Vmo=;
	h=To:Subject:From:Message-Id:Date; b=NanSyKzkn1GNi+8uITb6yYD9CLHp68NMAdD9/ajUHLTiVwQlJUbYHQp45vo8sHqRDTKIYjwUk/Twxtwu27N61UQqrh+kk2+CZIuFeIsN2EQ/FB25VVzeFuxRIj7bZK4Xs1hzlVReonQ62i5ohCPFFXWAAhlUYUbZ4xSM1EPoMFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzm/CSKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzm/CSKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A796BC4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752719393;
	bh=MwYSvJnbFAfMk1HNHJghWPN6pnH2X0f+TwL586g6Vmo=;
	h=To:Subject:From:Date:From;
	b=lzm/CSKzcgkawQZb55LaV5NmpMU4cUzeAla7y2tfIbI+FfoaBj0xEhRL/1yvMc3Us
	 eJCHL4Wflibb/GIuMLVbljGElSaq4qu9basSm/pCQgMtmLTd9g4HCCs5LXlHnVWr23
	 B53HVnm9MzXFTLDKPt9CK5wXXz3FKRt9onb2ppowgFTUKdE91JEuw3GiDpiNGFG6hv
	 lojZCrru+TXfmHJvk5URNhmXlwkod3i2BcqGJaL/0e0aTzRfimsIrjt2bwL65Wtbca
	 h4DO0IPjUWN6Ijz70KJ9GunBiEl1lYapZgVIYfepU8lybI6jO5tQQPEX6pOX3Ukb4i
	 c8kZoE51x6/KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D28C83F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271939359.14024.9021614786940759378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb283bc05daae67b51a8f7727c81ea4fe339fb5f6dbc1ce5a1df6815ab4e3d81
Date: Thu, 17 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752719393
