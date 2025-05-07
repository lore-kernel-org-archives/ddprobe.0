Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3878C42048
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746589194; cv=none; b=UYCmcf4tgzSgOUeJc5L7fHxEtDkPRE6/IvJKfmyunAT+aHjczEaMKkQdD5VkdBI/zafgh5XOyQ+VfuTypHmlI0g2GwbNo7RCYcvSA733ODIIo9wNoUQykWUhGHYi2TLbe4J0l3ZpXAGKOlQH1K4U88Fdx+MuNmSmzl/dGRSPfIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746589194; c=relaxed/simple;
	bh=jGffkAeb16qVWgmF9eSnzZQCEUtdfVZ8//pS9K28Lnk=;
	h=To:Subject:From:Message-Id:Date; b=OlR5iFtfr0kSor3nTe5tFv16NYc0abAd7K7hSIHWRG+CqhVa7eHfR9GX+lTPwMsqbHblmNb0kI1jIrjeuH7xPSNazpQz+gJmp8A1zMFAPkAngrc1dcxNM6BzekHEVKas/TRLnxz9XFcAl4TP4Y0Do6dR7ViDoOYCFbMRRCO7jM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGjsIpmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGjsIpmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53A8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746589193;
	bh=jGffkAeb16qVWgmF9eSnzZQCEUtdfVZ8//pS9K28Lnk=;
	h=To:Subject:From:Date:From;
	b=mGjsIpmXFUTM9lyCjysT+wYfkH250NXK7vw/tCSpE7geDOZiMVRAWs7PCLG7Ice+p
	 mHES3+GiDxpbPW7fD2v0cZLay8AX2PUuDK+H9uX1qkjdmZDd/mldANN0YsXm1e4YVA
	 Lj+oGZvdAaGIzYyn+FUQbJibBU0XLrwSEHsi5MoVfiGyRWugFVORf60x0u9uEaYYmW
	 C72f2CHAe6qARqc3Xzv6C7Sk8H0ihhj9ZMEtBPmkklA3y9MD01LQ3ENm+dml3Mzq0D
	 5/C7/kQugCteUdUA47PZI5RvHYIxtSABzVKo8gpvhi2oOn/AnlH9D0rBYaCb2AB30a
	 UrLUt9G6YKXog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AFEC369DC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174658919357.27458.9140538667093089587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ad8892cf287d8dc23df5ac45e09d21292a2b93d5902a21490fcea1f70178ed
Date: Wed, 07 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746589193
