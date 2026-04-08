Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A722A1BF
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775655934; cv=none; b=FolhJtd2bNPGWvDkfRw4PHyHFNq2RvvChcMunNROpZ9+JbC4Js+B6Ommw6k0yMEuFY8k5FGFbndjR92MRiuZu6hwrrwaniBN8fIj1pLii8vcn5FrISHrSRN4Zg/oknMNybgWtbXz/iUj/+O6TenDuSwDLPZCU5I+qwX5SHIGEXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775655934; c=relaxed/simple;
	bh=06p0Lk+qSaE8WZadZ0hlrIdZD2UjzthLEHYOWU05z44=;
	h=To:Subject:From:Message-Id:Date; b=PbepkfxHLKlahSMI+1GNoHzxSAAAGPIMNFtkYt+oKZ/HkM2VbNW+2uAR/5onUq/CRg8gUjWOdPRehKlX+I53HaT/ymWzLdHerCgcVFQYbUWO3Qz1OMVzFiT2mY893l8T9c7gwCA07b/A17qOr7rj2hATLrlKv2Vcejo9ChLso34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahn7m06l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahn7m06l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B895DC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775655933;
	bh=06p0Lk+qSaE8WZadZ0hlrIdZD2UjzthLEHYOWU05z44=;
	h=To:Subject:From:Date:From;
	b=ahn7m06lAbkpdgz+kQd/Dzq/DhkQYXR1+K0L2ne+I6yCavHeKJANOH6gqULhK721m
	 SS3AAxjgQiLDUUfHQy0uA5pse+ET3eC/pgnpxwJmV1Jhh1p0Z/qwATguRvHnNNiKKo
	 JDAVC+UkxSPytlRCsLFumkwp5Pom35sX4pT7ernom2t2HahM7UJxg2QmKVuJ/qySxw
	 B2UsI1WiMsIuwY0/gJXPrb/JGaNr93E3yw3c1BHNDXrI7df0sa1vyVH8fXU6XxOfRe
	 AilIavLf5zPQ1FBCkn8FjmnGONAC7FkCZTwJfl2J6EemAwoOgz0Sce9w2facNf9H2x
	 iH+uW+d8LeFvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2951073CBA
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177565593368.28524.4035945723107652632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c5e48509490ed931490f7faef9da23f48725281dc087229c9c8e3d3f865652
Date: Wed, 08 Apr 2026 13:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775655933
