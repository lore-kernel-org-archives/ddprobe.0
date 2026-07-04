Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B4D32FA2C
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783149515; cv=none; b=NyDLiPqQwZoAqgzaoDnrWlgiSzBqgKTo9CygFJq2xJHqVBvFm0EUT8mh+NJ+8OglwPE++VllklQ/iOqMcVkxUgwNuDDkDPBaIEVmLCyemhtYMx1uajj6EBuIrFHTS4gSPaqotXAMXb5WIE5I6DJh3TKftznYyjhTOD/jU4wW2Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783149515; c=relaxed/simple;
	bh=GZwCb0CH6LhC389dzpUDN90pS2y3Xlraj9C3uHCMLD0=;
	h=To:Subject:From:Message-Id:Date; b=syMo9iiRHDltesJqzgQFG40hHvsCD9XXnVA6eGwPa0S3k2lLavKI5VmyaTRNCpknEYuIXb/1wznYlU41QvTpEjmQHihbfQBaoolAYLu9+T0wdvReFMMNK8JAZoGnkXg2feuSPHqGHbv1xxW5/DqSrhX5pIH3ogSjDNBk7GpaTt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sp2+gMwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sp2+gMwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C91C1C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783149513;
	bh=GZwCb0CH6LhC389dzpUDN90pS2y3Xlraj9C3uHCMLD0=;
	h=To:Subject:From:Date:From;
	b=sp2+gMwLkLWZFamZWsDDai6rYOCWYwYyWmpYxCVZPHSTahgQZEBxoYjFjUZaWqgdB
	 FmoGv3ZTWXoiTg7ez6T6SGeSr9u4C7mdDZ4bDF6VBe25iLGLKUQnfWyuVoJHCNiElu
	 gQMFt9q63ZdBiYJTgMIk6LNOpVMzga5k6yEFw2w/xU+Sep3uDBCRp0+eeaHgiy/9Dr
	 FvlNFzWlIsvzzL0n5GlmEuhh9jZ4sHgE0bxFI+olHdrScYspwrMNEOKu4epE5tx1/I
	 0XVQGwr2DRH3j1QC6kl0H3pLR/VFNohVuR3GK1FSRx3ZSsucttm0WnZOCyiArDXxD4
	 c12vwL7xR4NOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A805AC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178314951368.30637.10674122537237621474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17aef74c86ee3adc603f6b68aa6536b096f8c9b227eed0b04bc152e928703ea
Date: Sat, 04 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783149513
