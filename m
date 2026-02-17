Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B9D1B042E
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771361094; cv=none; b=B7VD41Vkfk6tFKW/BZ94/xZmrBZ5BL1wcyYRnH6SRrvnnEkTPvgvBCwnL7Ue505FlOvtwCOnRRNUB4gVIlQibLfuZVPEd3aAKcF3klM913l+xrZXvpagMZhUDe4WYZAFjsOo8/U685XX+GI/1Uf9veJEWE6k0x6SxU63JPA1S/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771361094; c=relaxed/simple;
	bh=fnoT8p3y3PH5d9rXgCLhGoW3eKl0x/WFjQqgPeT6xm4=;
	h=To:Subject:From:Message-Id:Date; b=d6a8iSIz8v5/7OnD/DHt5CC0i3QqXB+c0Ey//ZeVJt1loOLn171MXgxO8SqQUn1RAww8B79ML7s3FbRdGTMcj1nG9Vj/C70r2NeQnCuLxhaDX/uXR9+YTcTxxiRM7WNdL9+eU0acAylapKUklzWRG+kE2z404Gf/HcXRsPRMnCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOdnWIfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOdnWIfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A76C19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771361093;
	bh=fnoT8p3y3PH5d9rXgCLhGoW3eKl0x/WFjQqgPeT6xm4=;
	h=To:Subject:From:Date:From;
	b=ZOdnWIfXto6YUgpWlK4PnYF7nLE615K4S0FPLPqVVZwR/pXiok9qEg+c7UsMF2Rzq
	 a1EIiJqKdMgV5ZyaLeKaA5KBGkczR+GX4C4dmWyC3FB2uthVIrRXB4iRIT22RFLh52
	 P+p/2FU7vXnSZyJxm8yKOt5SO857+O8r7npcfE6zPv5d/1iXMONrR5KURm6Nx3hOer
	 Q+5oqyMRGVOtaoji3lKU+qi7grEXJpV9Yf01PZ/xbKuj9SiZYOuPyaD8dxxeIEKJOw
	 cZp+hgGz6TmjmxHqioadxdOVkjhL6hLArFiSxoOsURWj/vMZcE6gVCETj/2W3t4VfN
	 pCyjCKWK9aP+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954A6E9A047
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177136109359.27400.13455454871567138524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605513c20cf2639c509acfc899101555be29ea913477acb7bbda4ec046d1d1f9
Date: Tue, 17 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771361093
