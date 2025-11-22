Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1807C21D5AA
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763824314; cv=none; b=RhFUk8iTDiuMWJe+kpvnSxjRN9tErFn6CyUngoJ7LRckXh+ukPwOli9G579r8aIokksTUxJ5Bzg7OPoJc8alNDJ71rRWxWMJ2JzTfFEHtMcT4lziEoYvDDFfkLrWHaxBn5WYU1mXsZ+5cE7Jx56ww37chdw/GtBgtMmGdzcJOoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763824314; c=relaxed/simple;
	bh=2Wz1+GvTyWL5NqqnIv4M49dvyyf4q9mli78RWO3mlpQ=;
	h=To:Subject:From:Message-Id:Date; b=nEJxSte81quQxpNx5iF6z6IjOZj2OckG8pl4mY9zuQ8ZJdNbhc/b+ue2hT6WzsBzqpfkhdEKCWOJhDECFz5crd9ym8uoHNZgKybIrubFBYPY3i6MhZHTprX8jaDPeOPuQFll65/wxKJyfau+gkjsAdTwN+d6hI3tfUWTaO4Pf/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AeVl1w0K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AeVl1w0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B3AC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763824313;
	bh=2Wz1+GvTyWL5NqqnIv4M49dvyyf4q9mli78RWO3mlpQ=;
	h=To:Subject:From:Date:From;
	b=AeVl1w0KZLrkLqe0bwl6nRZDtA5QtNfmBesq0a1TRZ9aZ136H/lzLFe843xMxCrI9
	 bODtQx6nd0MinFhZFCo0bR9rn1l/5EcL6ytV4VtkVEcz2BO9gL3TNzhtZZxdAwCSto
	 VGAIR45NSGZdSCexGz8/AAOrfuVv6uL4Td0ia5LzVK/x5Fg3qcW/f0/aQjgEk0R6sz
	 HeXLHsXSKrB4Hq4hwdCHLceL68iVCT70XcW/uM59iVppPQAwCVvgNerpCHiS+ehugf
	 4yc/c5WH3NYfsEer/LV2/JwRjvDqjaesP7NKIVYs2u+8zjdcwG/C/NC3Vloxqx3Vqf
	 sF1u94mN1dOHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93862CFC538
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382431358.22719.13137003353584420682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88239f416f13b283ad5c77c9bdb879d578c2f99b23a75a64de57072466974553
Date: Sat, 22 Nov 2025 15:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763824313
