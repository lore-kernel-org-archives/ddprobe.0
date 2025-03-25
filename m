Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D35149E13
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742899794; cv=none; b=QjyHNjN3zD6fT+58JK8Jf+Tg787KfRu6MMW8U8iFRNpKnERIuumyOWLvnklio2ov0CaX+p1pVRAqA2gIFTj3S1cdFUziCkIvzmYciIDvAJGwXR9asQpyhfveThM8gGFf+xXo1dEihMCbxBpHrnq1znvtIIstyGChNjQ/8nY7OyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742899794; c=relaxed/simple;
	bh=1N0dF/AlGHS7oMWGXDKuif0T2YSnki22YYyzStk4Cbg=;
	h=To:Subject:From:Message-Id:Date; b=t16mw4zHgDE9nyrTRnSLKiqpwWK6fxe1t8q8q/LS6aTFoqehwCvLWgD+6KDcwYUvrLcfaKbagg0rvuvtkQ2GOKg0FJ2kxtqTiGj7SIYjIl7OhCe0JE7fMShDhsAt1yeeyowdAHdomD8EOhiEPOt41CKlK3EIrSMF6inXcEx5vuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgsP9knC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgsP9knC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92B3C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742899793;
	bh=1N0dF/AlGHS7oMWGXDKuif0T2YSnki22YYyzStk4Cbg=;
	h=To:Subject:From:Date:From;
	b=sgsP9knCgRXEViglR1/Xxeshsx/CdVBvuBW9Z7e0YdVxUY9U5+Npk4VGyCN6XsGef
	 M2BPQWYLa8aFzvz0uPn3wjED31BrQkUI7PRW0dRV5TcqskdV5H2slWJMoxp45XhKSd
	 VUZ7cMhSx33cwfIuXmLD98tzn5lJwD4VuTOIaU1ddG/ntqHz1MtKARsULZAuNM/fWJ
	 v8ucUJjrD3NC1L4wJ2xcoD7hAetHhk/PetqrRPr4AMpd9iuc++z7PfujFlH8jq950t
	 zBf+Cljm0NvnNk8Cdqi+j/mbGmA6ZkhimEhBmsxgRZkh0i9bBF1ciibet5pN7H+Hhd
	 RWaIRb44e2tcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9939BC35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174289979360.27826.15778153216073455988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb76d6d07ca1c9793674cf85ddc8a93628dd48acac2bffd827aed1c3f08888f
Date: Tue, 25 Mar 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742899793
