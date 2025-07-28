Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A1C257AF0
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753707594; cv=none; b=QrR/WbP4Bsw6XlkaeItVTztXtN8cTJ/KGSqdaXXJaORxCfeAqlEpJ4S71UQjI9L17vrIQfciOS3I361yn+ACF+ZlvN+AI0BLF3ZFx0IndYd9sJdanOcjKyCZZAe+SryQjHwaS35dyqcQHy076s1pLOQm8GhUsGcrQj6veRRDxcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753707594; c=relaxed/simple;
	bh=iPRtHAMTsxsLbhHqxN1g/u0OeQlrs5vdnZpwOtsVuRk=;
	h=To:Subject:From:Message-Id:Date; b=lh2sdzr9q3qKM4F+h2LpCzyJ5/ni/IL7tcn2IdX8EdmMGnWMv32i2WBb31mt1ctoRdoo04IvIsZzE/E5FbWZN8TRUU/MLngATGuokZr4hCyj+q2OdLwKky+sFULhnBakG8gf8stMPZ3sn5OzNgkmSVBLVzXuo57yZy19H6JgjoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HaSXu/SH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HaSXu/SH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFDEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753707593;
	bh=iPRtHAMTsxsLbhHqxN1g/u0OeQlrs5vdnZpwOtsVuRk=;
	h=To:Subject:From:Date:From;
	b=HaSXu/SH/++FT3HZ4BEwoRGj7b+/zr1K2B3Q1l+jyevrApWvrrgApJuSb3+EmbBl6
	 UfthEaCen9w7e35bd3ehnleJE+BnjxSf+a2tW4u+fNti9j+RwptSz+rC0dMicU3iOW
	 4/3Hfnomqrep4h+JjKByljYgXq/Rkaaqmfxp525RPfDVazaNLz3hht7QJfvePf4nel
	 1NOx2SvzuI4ilZ42TDd4lSqZ7HMXzUC24XrLwAZ8APZHebSdpWz3zFj79auArBFg/R
	 iXs0lyHKOZ++k+e2e1CJIX2jpeasmixwrqeMiAw+1imGd2VMhFnujLAiyPmEUsxUZO
	 LIJVoR7maEFTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF28C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370759357.31425.18035305478002500317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e6ce21386410d1a353930ad9a21bbb1feb37f24f8cd19304b573081bd4d54c
Date: Mon, 28 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753707593
