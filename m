Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008031F0995
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751799594; cv=none; b=HoWSZuteQ+COUg8xnHqhop9qO9jZxhhsbKfVK+0RFB1h9pejj+uLFGCEm0jIonS3HJlzWwlU1FpVX9w4NOlHYKU882+z5J1x4BO7ZegtkiZNmL7BDOVQU0MRGQcoQEmzo74huIWMIcj1FuoCfSG/S2LIIpV71D1Dr1xyWRuxeXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751799594; c=relaxed/simple;
	bh=fIXlgN2Lx8MpM50JJuqIDKfSuK6ufPAZCRfqNbguXJ0=;
	h=To:Subject:From:Message-Id:Date; b=Ds7M5sYb5EcsjtWwQxY9IKswOgdvtaQevBFT89sCAFIuWP/5LRqi9+33zxlITx7+zdVOvkyLuDia1KlB6mCGPwnBg/b5DvzXo7RHs/iDdAMrvcTL79TY0fdkBlcxXaXJcKazKBUA57ZiLHpsATSMAOEvJedGWeDOX8gA+sPLQEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rb0f872e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rb0f872e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E260C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751799593;
	bh=fIXlgN2Lx8MpM50JJuqIDKfSuK6ufPAZCRfqNbguXJ0=;
	h=To:Subject:From:Date:From;
	b=rb0f872e3l0g3l1YweGsqzfr7t7GsHux/CaWPlSEMFmVcRhrg9q1oYEf7HZUu8OPE
	 8tEBJ1hfmqmrbUZKCaHLpYBv0mEBQRcfn3/+OupEfaOOIXAjyVSH5pRwKBTyHyq7C9
	 EykArOGhTWcIlm/7TeuBJMmQhSijlMG5SMr4O5KAJNLqsGyTEuDn+1ZK05TpBB7iu6
	 nJcqFDL7fDYMiHfzOQXgHzV8i6A0POvA5w0oedVSAb7rJLf7/aD4hsru9DonzNhynE
	 fxKMVnoKjWOOH14tU7+QSv3hy4T09mw/KJ+xXwUeUZqX1D2GgL9X7AzT7PBnaKaHpq
	 I15Y3CplxHVng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0E6C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175179959357.13512.16575506195275044967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cebeeb1cc2262c1f8271e7349a2a6c600d249a4b552a1709356c81598d59797
Date: Sun, 06 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751799593
