Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64500401A2E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790584234; cv=none; b=Kkfsm5EfCwCC5DH3JHRARk2FZ/f1kzWOs5xgss0ugAaPcHIKzGLTU3X5GSa+uWoWJMAtwxoEqpfQ35As9XX6z8NL+mR/gWeRfWYJaY/ts40U//PaIjtaB/MlTQIyypu1905YiNlkRb1/jeOTQ/X8PizLElKZMMY/FRsmH/C1EBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790584234; c=relaxed/simple;
	bh=zG8JSBKrIrGdh/XzQ/8JodxCkHZPRl7kseLImnU/13c=;
	h=To:Subject:From:Message-Id:Date; b=tw5Di4RisoXxlV0uoKpmIVRy6NZ2js7bhF40mDFOlnFUDvEe/2XRldQ874bl9pkXitNFMefbUSHQ+kH2YFkC8eLudy3IxQH/U/0JOernpQxNzYor/I4bFv85M9k41JEeSYNfCEn4KotbS8INN2MCm3P67iznQqRWEGg9WNesXAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0kAAjpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0kAAjpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3806C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790584233;
	bh=zG8JSBKrIrGdh/XzQ/8JodxCkHZPRl7kseLImnU/13c=;
	h=To:Subject:From:Date:From;
	b=B0kAAjpAkSnl8/+peOgGjTo+d+Pj/kYegyBiBBOH1izL9wVKVLHjpeYOcXl43lJpu
	 1n4IP+ZB8/WVEHMWc3t9CraeAC0WoHslTBIcnsmEcdg9ICvnE6HPdqcYlzUASb0oyF
	 i/sxhe2j80sgxxiHpmzFRIntbBoZgSb7aGmM84a8YzD6zs9hspZEg1DPR6PKHdTyIS
	 i9Ji/kiERsBOcJb+3kAClmLZcGF6CZbm5VRVi7Jby/+OYD+iPFRtRteHUh110v29v0
	 xBpSpm4pnJxoF/JBFWDUT+uS2egPnzZ+35mOJJDNxNtutFpvTBj/ZYiOTkWvI4zlAU
	 r/nUJ6dzkHgmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF48C9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058423370.5280.11703323101519795139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3599f9aa624bbbd3e4457e2f5c9362d29f9bb102b7915c6446fbe71bfe3407e1
Date: Mon, 28 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790584233
