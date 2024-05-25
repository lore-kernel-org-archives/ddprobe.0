Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E94163BF
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 05:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716614063; cv=none; b=o1ePyjv9xmNLRAcQqSZmwDRgAJWrKuvRKi/ZeH/T5JtwlDS/+LC40OOMNm0GnZkQ8tu1LxT9M38rFFGcaj3fVtyF6Zn2uqBEu6iGBVIIAzlvFe8O/yIuL3i45MIKhGr8RTrT1trNTuVeWp16sdONCUsnScuLoD5SLZlnCFdSKSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716614063; c=relaxed/simple;
	bh=nQQ9qgQlIEt0IxtV8PAJ/LdAJbIqk2TjQh91OBrNW9o=;
	h=To:Subject:From:Message-Id:Date; b=Jb2pleCMBWMuGIqVoEN5fc0B5Jy5IzE/0XOoccxGgnwswZPsZSb0xwNdSj8ZDHL/1S5vXKHug2GxyD0DuFVQpuLVKqRkuDS6sLL9RNwZ+MnkcdN2qkNMjyWQqVoK3YcD0m2U3oXJfwzZAix7JVG8x/BIIDq9HHb8nPjnj7qgV5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z60pStL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z60pStL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89FBC3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 05:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716614062;
	bh=nQQ9qgQlIEt0IxtV8PAJ/LdAJbIqk2TjQh91OBrNW9o=;
	h=To:Subject:From:Date:From;
	b=Z60pStL+z/tqC9r6EF95loIa7BvTKQyTqKMaOSN9jYWV5PLankWp+/QPs2QbvjJvs
	 T50VwHKhr8wg6/+6sbp57ynJmI7p5/NgJ36OuebHa2IJrxgzbFc/7bgxeB+xImuVti
	 kCn1tDsxYABtsegSmlUsy/uLtMPMoYBiSdJ83+3+ZgZ1+9IAamwNntS6p2qDLYlppr
	 jIy2YiDYt2avjtKH2b5Wdp6PF7QZ0n4PyRt35IVyFx8LT4Pr0h4squsOZaCY12mSiZ
	 fwH1gdDAyj4Kct24wuFDlskpJMK2UFvEfTu8So02b4g0bvsahTM/lCjCZPpTfoj4Sj
	 Rthlu6V/zb3pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE277C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 05:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171661406275.11946.8073742158081200899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56092db4d8cd07b3e4aec70f4065d10a49544f1f826af854ed3bc46c3a8de63c
Date: Sat, 25 May 2024 05:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716614062
