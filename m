Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D527A33120D
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770479033; cv=none; b=iWiCoj1dgSER/UWpqfNqVb1FvQQxaN/i1w75Z/uf3AT3etgNE3T9nu3BhR3CgDGWF/H2zCfv2Q5f6Wg93C0Hrs/nlnNJnV/brR7LLAzp0aspwuOpLQ7kBzg6dzhck6uwkXoUgR363dD1cORoxqBaA848YyGAqqQC99iGhZjCpCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770479033; c=relaxed/simple;
	bh=iGoL2NYzXTyuDoZu0mCbB78DWvKuIfSQ8Q+cqJEir8I=;
	h=To:Subject:From:Message-Id:Date; b=Pw9VyY7l5baqPyrBipF/L/rVkrnQ75cICYYXY2s/rf6qdwUu/JIuk5qdW7k8T7/7AmXfng5nY+Zwq3B7vGFjxK8lZfQm7/wxUN7EKvlCN0u4QZK/m6m5GGuIPhZStYa3I8oYDbuGcx6vEOCCi+JiD5kwj1FmtkPWvs0zHbnOMtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pq/N3ATT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pq/N3ATT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4E6C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770479033;
	bh=iGoL2NYzXTyuDoZu0mCbB78DWvKuIfSQ8Q+cqJEir8I=;
	h=To:Subject:From:Date:From;
	b=Pq/N3ATTP1HgxE4AFdcOOwwOWWHgKMlXrvCpBbmnaOSZEihInIXfDbHILMdsLa5sB
	 MFLoe8EZc/aobgG3roVpv+QRUjK2fVN+T9MHe2IzhQmD6pgeb8GgMsHNYWsSQpcO7A
	 rQvX54nBjxKlqtYD/2rOEj39l1eCHBaKa/eiZPpdk21GwNCrOOITucxWX7+zwRqRh4
	 vsEr/k6jVZ5s0s3uhyCcJCpfqsZK16/SBgqEuVYH49USVXCRt1xzNGfJV0mFJBSnJX
	 NdzoMv5Pp4r42p5CJNsdALnfuwpe0p51TomMJxxnr+3+GbEaH4+nv6Fx/5xznB19Xp
	 mMThiIAbwvxkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99ECCEE0AE0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047903361.1769.16291100520089948782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d03fa78f3ae2c7880286958e1a6e2230fef8ecc1711b86f0935e4ba7a93055
Date: Sat, 07 Feb 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770479033
