Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488AE4A11
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736295354; cv=none; b=NUGYvphQy/1M53XhESuhoVvB3vptg5l5UoQCpl6aXk6Q7fBPI9DWwZcDLz/yiZSn/f3aj1EyTtBRqXVIOUNf02S7ZFSvTYEOIbVIRfxPIjNmW4iSVa1UphEtxZ15GQu9VsAKal3nHM2M+Y2T1z8E5pU9HHoscPzWHdkUni6Q+Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736295354; c=relaxed/simple;
	bh=rwFX/DMG+ImLKjefpbSInxmOUaeTAeKYqQllXYakElk=;
	h=To:Subject:From:Message-Id:Date; b=WIRNl6//ylk2fIj/we7UTKiAJelY6II2Ja7imlySnyg07XI1S0vjd8bRvlHWekOTh1kpWyKMtxRv5x3z+EhU2Fo8AfOBFWDw/bobg2P9dynjx8qeD2teGX0QOx5rtzz7Av5fRoCpQtXYq2+yjxxNIrGbr0PHz16PFctQp4LCWZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/DQSPhI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/DQSPhI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C167DC4CED6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736295353;
	bh=rwFX/DMG+ImLKjefpbSInxmOUaeTAeKYqQllXYakElk=;
	h=To:Subject:From:Date:From;
	b=q/DQSPhIKmWqp2cHjmEkrq3uR7wM6njweIqFnp3UJAARmN9mtUXq0rjQSTl9WnYbz
	 JWVSNDyMg5W3MtEO91JV65JelhjvmWSUmVtrNOQqmZBFEGAOWafwmnWV+jiXfSAMgm
	 Fm054y39na2thF+nKG0lUIenzpFlmiclvOjFMKBJIcjSJJkbQfIa8KSzXp79ptrcJG
	 FcL7Go2z4xIyN6DfDc56bWz9mgmPwws38nZBCbO4bZN+I1ZskUU0ZzKBBOWzj5+nVl
	 2RCQFoQi3kXTwCzp1kH3FKQTmj4iwyZn+defWE11TfPpGTBP9MncGHJ009Jb0D0kk5
	 k7ZYFRDUne4Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA546E77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173629535362.10758.14301684355015507008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06950dcb5eb4f4dba047460bd9b32556952bd96c436821473deaa8cefc51dba0
Date: Wed, 08 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736295353
