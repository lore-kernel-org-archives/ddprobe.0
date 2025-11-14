Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3948F28727C
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763107794; cv=none; b=ArsZ41o02eU5DtBV8ciH9K9QEw3EdvygmuJIboBafobpRDrZ2Q5w3KL4YIYqbKb0qu3aEFTy52ppOib309PT+XBplGR/P4PUlSZFAESrqkycFP5EtgjNascm8O1+P/TRN1GRD5Io9W3e7N/lGzC448eTFDjsr89ngx/8WnRUGQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763107794; c=relaxed/simple;
	bh=qkWI8rxIGg2t/0iMdLhE4rw00zLAcP0RrZiKHCY/iyI=;
	h=To:Subject:From:Message-Id:Date; b=G07dcZWzCGMzYMWAReA83PNi7epx0vlpO6GRPlLaj8zug299Umqnv9gckBj4U+lGT+TUGS+ynYZF3VNwNt1iqyWN3MN+QX/m7LWoxZLtxidspGWugAaIq3xWhIaWtpeHyrE0LFacGqwbJtusFBaFl0mQlX9boiiNkWLsvf/qjX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzCq83rb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzCq83rb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B220FC116D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763107793;
	bh=qkWI8rxIGg2t/0iMdLhE4rw00zLAcP0RrZiKHCY/iyI=;
	h=To:Subject:From:Date:From;
	b=SzCq83rb6ir4sbLGE90VlrvE1U/CCv/eBGvWqj+mDjyDyPo4sP/OsxRnkM31Bz5r4
	 mkt5vaorykOcJODbG/9hos5h+wKzRl/KQz9v0sCf2HTPMtCVniOlsKqffaOwtEoTP8
	 +aFv8NfX6eSiudvdao0ELzG2Dr/RqwOGaGi4XtPDFFdqGTq9gCxiKZZCqC3FxKw2wh
	 axD7BfcdLhjfIM1K0a+VqU32BC9eNKwVeVAFJ63XuSb7A5Jsy+VhsV9ZzZp0XymC8w
	 I9myrDdhb0J2PhTEpSZTh8tt9rXf6D47L0ZCzmMOJvYgTFmgep0YbbMYHI9xa++qc6
	 EDo6PYDR2LwJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1085CDE026
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176310779364.3367.6264034564726070601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78c1037873866060430c53818a0b6e9b63a28f2963f67f6be5c0c3cc563d71bd
Date: Fri, 14 Nov 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763107793
