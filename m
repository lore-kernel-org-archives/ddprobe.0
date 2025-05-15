Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAE7132122
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747318194; cv=none; b=u3S64Gw7pGRxxgGoJVNlCXu5RA/NrxzL0mRYWKByKYwlGE5CTMEkuWCY7QuT1O2wwE1MsLvQbWazKone5hZnWh/ONGeCKrSCcO1ODpecfXLTIh1E/Qy8Sy47fu+1PIX0pEdCmZseQpaeoIU1ARLmogHBiAtsTJa2+r4zJ8hrwVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747318194; c=relaxed/simple;
	bh=jPux/paky67SIeYg8qGNy+T7l1AQbAxaL37Rxz3fVQA=;
	h=To:Subject:From:Message-Id:Date; b=LosFh6ojLTkCBFdG56mLEroRjZCpCfMk1UkxD/li2UATeTDm93/sFQ5XQW4d6bEX1F3mAiBYI52holoWRlSRKHZecVbSPn4cBKPzDMohxTcP8AS2oMjBYt8S8WdPsNdDlL+6Q+y71AKehDKIiJwXrqaxA4NTVVvBpzXgkqp3r+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFVXmIwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFVXmIwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EE4C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747318193;
	bh=jPux/paky67SIeYg8qGNy+T7l1AQbAxaL37Rxz3fVQA=;
	h=To:Subject:From:Date:From;
	b=AFVXmIwEODwuFg5rZeYlfUdrT51kxPMxDdfy8xqohK6E8YS6aX/m77RMtxWB0yKdX
	 fmDe+XzIiE+AHN5lWMx3T74hH4YhE2lCKemJ/ko4b1uWCcfEyd+xhBprDc4NttNL9A
	 o5b3wB1bZ+cWt0lc9mO7ZX1k5Pal4WOKT3HXRkg7ePRBNVYw4cGzQ4RiJT70OpWprk
	 ggE92x6wAdTUii00kho9EHQaPpNMQJrBTgYA6mL8ljGEXKucFTTlhHZ1vJAcmmQG9C
	 oRlR5vuxbTTvq8LO4e3sOa2SJ9aOoCTSAO5CpTx0xVILLw8VPQXSwbPYkt1j3asuUo
	 gm6r67B0LVMHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93255C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174731819359.21235.14884867022125202792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e65f40712289e636e3a96a7f54a22f6346a24cafc64e4eec68c80dd3774d7178
Date: Thu, 15 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747318193
