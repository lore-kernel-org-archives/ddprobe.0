Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BD72D3A6A
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769831634; cv=none; b=GQnbvlPGAutAhnqv0vCprfuovzr0WURUv//AH6D8WQdRlT3S09vACTH/2FcZeg5l9qjEIrSIF8KupdSGjJ+wgIJnVdE1liuKuigRrC0eghUxbXbf5kQlJLSiyp7Gh5fRKSH4JOS4KxWgW/BOAqEI4eNliS1I47293yxnfq3PVyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769831634; c=relaxed/simple;
	bh=uh+an91of0A3rmoZlpJ/q+5wh6uftYyc/PKnXGHYcW4=;
	h=To:Subject:From:Message-Id:Date; b=RdcQdludeOi89TBuDv/KJ8D3e+SeJvNyS6OCgIiSog1DjS24fam4+FGUD18sIEPLnUnb7rD4qaL477kovwlv7mCbkKIHMSsFeET5frMy5Z2tOVLiW/RfqYi+KJwzw9nNZB8saniHWFbgH8N+Z1psLOebDeKCslHkluw/FqFF5O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJdXV8Sr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJdXV8Sr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0910C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769831633;
	bh=uh+an91of0A3rmoZlpJ/q+5wh6uftYyc/PKnXGHYcW4=;
	h=To:Subject:From:Date:From;
	b=sJdXV8SrUT/rroBW81sekZi4NkdM2829UFceI9MZJkUgeyPbfxlzND/cUWmFjKry3
	 8D45SSHFwkka8tzRAqbXT+oB41mnQBGMKWddsMzDB08vhbLQk3n1yYG7h/Km05f0ni
	 P1zA2DAob1e8x9pRyR4/r1/4QLFMyW/yCL8d39kZ00760dTeWAaZyIH36g50UKo/WY
	 njjNXJnhb1RYfmDYOssRS/PdbEumVRDN7ylWUPDiQA5J01NJE8yoQ2HFJ7qd2f+cv0
	 sFwOuPFwbCNL8yaWZASw7um2fJ/4683bFdweqArJ/BhtndPb9o5c+qMr5G4R3q+tYQ
	 ZP4uVXx4BjhCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F53AD73EB5
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176983163357.11653.324687631686742078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca9a3b50f1ae3bdd4393bb90852c03e2270b9e9e20fd7e6fe4330e630bb64bd
Date: Sat, 31 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769831633
