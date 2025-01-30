Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAD31AF0DC
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738238754; cv=none; b=fM5nfWuJ0yJPIcyS69F6EdAu82BwdnzsOgiUVXsPpBcRcHVk8IlB6OZAxiqN6JZL+80O/x+lJJWt52U+eS0uFphjD/s1bLsC1NjCMFd6LxD6TuY282l8WsdSkomSuDCBlA/52hj1k0Bq+wlF0rV+u+fi/TshLBl+p4DAc5A75oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738238754; c=relaxed/simple;
	bh=efELTbrq3QMOQCulyRlFi3ZWTpym6S0nPHdUoGtnm4Q=;
	h=To:Subject:From:Message-Id:Date; b=M3C1I6dNt+4RbK9pnhpIFsNQC5k2QJz36uEPksK7U+aLWnXvppQ+LzZubDHJ9vPBtQwKj1Nd1G2jdoiInr5Fu7xnWjLadSPnmAH8fa8mgseUua1FFvmg0EWfyJ28/VeufxH/eAWUBNAn6Y5HKVUeF3FOZqnLBr9eN51qPJexrvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bbf5IcTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bbf5IcTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4389C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738238753;
	bh=efELTbrq3QMOQCulyRlFi3ZWTpym6S0nPHdUoGtnm4Q=;
	h=To:Subject:From:Date:From;
	b=Bbf5IcTq9qKP1hRbkw6P4yCQVXtH4yF5bMTwCcW6uJFXoWLj1drHMjv+jWjptcXpo
	 N4CHR7olbXvdvJHqvHkRe8hAVJ3C4aLco2sTk0AZsnlOeycwSiCBswVGwBbxqI06VM
	 gSZ2pmZ+jXy2D7wfRALGtdsAilhV+0fD6iYN7FTBcWgnIH2ApSeYBsoo4KU3dIDvF7
	 LkvuNVJ9B71Zt0ISDQ0axKecZBOY/o7lMFf9wkL/DKabB4Arnf9dbk8mFJL6tzz3sZ
	 uz1T5jh/fdyYCw/rjlSy1EFdCNtzZXgJH6Oed7DvRv2499K8Qu3tPOfvt1FuyjAj+O
	 8X5Vql5Wil89g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B90C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173823875371.20779.13661261495896178550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf7a6164a9269bac25874abbf1e3e9a1c060b349aedcec7f2ec5bd5468f13e8
Date: Thu, 30 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738238753
