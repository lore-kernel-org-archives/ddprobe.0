Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C38632C8B
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731147954; cv=none; b=sAkP6MARt1TJnHgAhH9mfOM+xeaPJOSTtVBUDB+fQYO+Fct2nQ89bHxc44P+rwwFrctBSlHpRlZhhOLzzl4kNQ6sj808c/oQuQkOv35N4ffs8VO78TzbixgJ44FSYsZoJ2BGmgBgp9Vhdu0OoRDomDxHclTutHMKr5yJfEnZink=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731147954; c=relaxed/simple;
	bh=9feKF+170BVJWlSvp7VCHFoaBjip6LhZZsEQV2+VKPI=;
	h=To:Subject:From:Message-Id:Date; b=STO0tYm+gDCQqPS8jxlV0FEfscGNjR5MS8KV70UeNUOfGjHYCPQwoxk+0Tm/5bSeg4LFRESVCr3Z0IBeeSsSF41gD2m6kUVwjQbYHOoTT+793e1wNMUsLEuAgV5EYa0SHrMrFL+CJO0IbZrJmQ1NdZJLZ8Fcm1tx45JjK6XxAhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2N6XTio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2N6XTio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA357C4CECF
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731147953;
	bh=9feKF+170BVJWlSvp7VCHFoaBjip6LhZZsEQV2+VKPI=;
	h=To:Subject:From:Date:From;
	b=M2N6XTiophbU79GqyTkvtbVXFGLOo7joR9W2I8eTZnHDphNzk8zrS7bT7xSfSnsXk
	 rp+LtE1blFvACwvMNB32hg9cDDkQsCm7d3EvFC/6cHB5msdKgrZGH7/Dta8/j575bP
	 s/dNMxa/nGcOOKi7bpbgzNb0pzqROGVRrUlMW217PWrglroAOd6tMNM/lCIXF0bo34
	 Z7+5Qk4v0hz4qF24tthJypigq0qHEamVwkxs+AdVVmdxSqz0Z4TKJHiAW92u73m7u4
	 Sz/wNVO1oiAvjVGv05w9jjivQyUbBXPFo+d8l990n3aXweAppT9lBYR4fjaHq/dD9s
	 npdImX7egraEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99538D5E362
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173114795358.8848.7921597634523457030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57a926ac75abc6a11e4413a6bb0ca7595503515592e12edc097ecf126db3b8c
Date: Sat, 09 Nov 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731147953
