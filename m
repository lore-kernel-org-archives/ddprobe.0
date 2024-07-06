Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6E813A87E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720289183; cv=none; b=ZX4pGSBEFTz7celwzVjVMqlQNyVAHTZaV6o8K1fPhLGNN7uY4hFaLOhmHI0N2L9EhynlII14DEZ5JKsGawvtGYjpgB9eiQkGA9LMt21RmR+t+R4rcdK7/4Grx2bFqdj8lpERDY4gIJfr6qv7iZHITb3IoM6QRubTXXOYi7fCOis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720289183; c=relaxed/simple;
	bh=Ds5AKPXKw458iuyBlKUgRyaBkkT7pDfL05m9PQWIXVs=;
	h=To:Subject:From:Message-Id:Date; b=dhEGUS3Cml+MUoeUTdP1IJ+cg92lhOdnNdGF/AfLfbYyPPoIn7D8XAPOYvCsQMePEIUq3oe7o/73X7vnDZ10TlRA0h0Kw642RHtPsf4eBbkM89Dk4o2R6TWni+QzTTZX06tLiU3EnZghXXIyTqP9XWXdnORDN/5CGco4e5w4r+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hidvj0G3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hidvj0G3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF66FC32781
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720289182;
	bh=Ds5AKPXKw458iuyBlKUgRyaBkkT7pDfL05m9PQWIXVs=;
	h=To:Subject:From:Date:From;
	b=Hidvj0G3dGYcB1T7TM+LXcfJ5w+uBxxkVFGMtyYSkTYj+dGeem7zEwNgMMTm/Okup
	 NaEdWZS+skphu1tmZne7ASYx8R6MHWdhbEtS1Qq+MEBWa31W23FH8BEqGMvip+F3jK
	 FFeZCB0w8Q95VyuB2tMKR02NaI/S9PFka9Fe4pI6DturupgSIEyx3M0OPtsS09JKpm
	 tusJT8dSK3hEOpsp+vMfgExDmPyoFMUpcNu+t+fo/ajUoc2SpBdvUXmVyOUGXxSKCO
	 far1V2SSqC3KfZiyxIsQt/zulc0Wjyb07iK+cFp0Oog0G7Pq6ATqfQoJZJ0VPYOctt
	 7YsCWr4C5hABQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFA4C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028918276.23788.12928271737220182283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e2fed6efc86c14c6c9fa91df737532854fc14e6e8093afb5b94bf27f6b2c838
Date: Sat, 06 Jul 2024 18:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720289182
