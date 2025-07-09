Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B8E19F40B
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752070794; cv=none; b=Ke82p0E2hX0jjwD5B32J9apDBZUb1xaDaFNt1XRznD9SSYZCPkdshlFerj0A5swB53dZto11MUAlKUD8/I/KDkUT9MI/XrylmkuB3TJCJJpOxhB5rBx8S8rzDV4rKcoI8NzSAHFSlGIFDE/99Mav1o1A7e7YIqhSPncr1AZPZDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752070794; c=relaxed/simple;
	bh=d3gqXsUbre0tYolMf2ylMWUPaP5H7FHWIpQd2VkeA/8=;
	h=To:Subject:From:Message-Id:Date; b=UDCHd5KNiUQHQ5qOfkE3XMEwEhuwFDXlrknq4kyIsJdMAQn04VX64RSxrsjREfgq8LodLiS6HLgMo3jTreCYM9P8BCr6gnelNkLR53r55+UkJa1f5JypjfDpNHaQzWF3obCnmt2S4pFSrnOEYDZ+11CgZgzYDQqgoVdNulYC7SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuThhwzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuThhwzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7D2C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752070793;
	bh=d3gqXsUbre0tYolMf2ylMWUPaP5H7FHWIpQd2VkeA/8=;
	h=To:Subject:From:Date:From;
	b=uuThhwzKriLbKmVkXZPpELQ6Q073oQOpIdHlZPrjvNlXLUM6mwO2bi/WBvvvo0eG9
	 bh9lVXNhKlQyGBRixkgIbddziXGj2rgft9syyOQRGL1P9/HDe4Wjz+98knytQqJYav
	 U7Vp8iGOPH9M/OQChJzw3XbgrUy4ANIdyeUMVsaJK9yWWstqFmYRpwwwl544vKK7nh
	 kQZ8zzNKDtLTzmPlFytlHMak2+9XmJtYBP4gmqkdxWRd7LxZ9uabo8GqBvCcNYdVBd
	 dcAxhi8FeXYv3orAhGojbDpZzdgEvtoJ6FlG1O1as7MV2RwX+ZfDy8OXEvJ4ET4iIe
	 I1CBEgrn5o0Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB2CC83F10
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207079357.12477.7324321643953252593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84dd08e086964a8a7d689594f1e06a5f64530346f27381da79fe94a61fef1627
Date: Wed, 09 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752070793
