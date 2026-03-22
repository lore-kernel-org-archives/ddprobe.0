Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234C929D26E
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774176894; cv=none; b=ZYiKpM6EIw87EJQYJ669O0dEXFM7yndpt85D2aOWAVuyZxcMFqFAXOjOX62BXgx1C8rtzkMHmiiXr3cXkSqBlSBTzMs15658fK323tAZytiIPY75E5OywHsV58tLyxJj4Q+WiWqz9/nra7rr6VG6n23jnBJRdWQ6Efwuh15nLF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774176894; c=relaxed/simple;
	bh=WOrW07OMZWp+wZsHlf+WxPDz7alznMjzu6U2HO2VPxE=;
	h=To:Subject:From:Message-Id:Date; b=ozyD53v2JN48U5UafgIn6rWfOGs2i+UvTz/RQkt1UqyTllox8uOJ4quCBYcGbnHt7hWw06asM8661ADh3aZjMiRrNfKByCdgs3b80GYQm7erDP/TuH7IFFIJPhgcdV5vEf6ommih/1HyTcsdq23MN+oxhwMHjHgAwO+2JRggVD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdxIx42K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdxIx42K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4FAC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774176893;
	bh=WOrW07OMZWp+wZsHlf+WxPDz7alznMjzu6U2HO2VPxE=;
	h=To:Subject:From:Date:From;
	b=CdxIx42Kf48xwz0LnLu94JtrfyD8kq3XJZfbMBkG/Um1cgmQ8HVn76DSudUaunE0p
	 u4HiNQUaRfCrIC2JALU50v74zvSQ1dxNaimtzw4Bdrpb4nrrkMrLMzyvifs5JwboWs
	 3s+trD2wf5jkBHkN2/3V3Hbf+u/jBuuQuNbH4FDnLQn3ezDpeiJ3fcU1vBXQ598Pnd
	 bnz1PCltS0xFfZ5AY1AWJiEDd0C6g6pAq/k3Cp9XMdviuYy0aNYSZf09rwIcYd2+rp
	 uopG8GXM8JIshkl0d8aYuUnNprINeHDLLLkntyA8cyykzntzKaN+Em/P4YkPZkbt4k
	 +9k/xJbOClRkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914BFFC72C2
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417689358.2916.18370801152468551816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9930a1077659b3837c056b13e6c386345185522e4471d298bc696f603320d8d3
Date: Sun, 22 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774176893
