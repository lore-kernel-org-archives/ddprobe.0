Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636A81FC8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784333314; cv=none; b=QdXjrv1412BaUpaZSLbiiVt4OphvwoA3Q37FKGgNqBLpLj7W+sInHlpDSdCYAOh9pZ2c9JunMe1y03Ew4d8ccEIJeavt4uLm58R4g+rHuSlgu9GtZcEOhiyQ1mSdHjQkoBdFWoYloLybKS2jcR0jJHUS2LBnCRsLmUKmKhd7blU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784333314; c=relaxed/simple;
	bh=ok4vVLtO8LXRqNAKZSvTn/pzEXHcBIjjFbeeXaGcvnE=;
	h=To:Subject:From:Message-Id:Date; b=FrZ4CnuWPDecWiZWU3yTh729oT35yobb4QaJ3qsflHpMZpGtB8LA6o2krn60BcJVVPz6L0WR081JwupFOiIbgaJSToRP61jf8Dw2hlCeHLswbARR7INrBgzP3hQHL+YAec1GE/PZPjqgMHripoyVsME5ShkoEQx7qBWu6RNw9DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/0JJEcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/0JJEcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E276FC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784333313;
	bh=ok4vVLtO8LXRqNAKZSvTn/pzEXHcBIjjFbeeXaGcvnE=;
	h=To:Subject:From:Date:From;
	b=O/0JJEcLqeqx4DUz1PRWmgkSFvQoKvk6YottNmnY65b7Kb+on2CJ18Y4TwGqcD3S7
	 zWJAW2NbF+LWNpL28R7BQL5UjUn+s/qCc4RcRTnlq+Lr6XREoCfHp7DJV4WqUeA+4p
	 AECZHBiLLalsDhx+aNwKa9FCCj1iFmgUhCVIuxrrRDx02Y4d2Def7BemwZDPiD0syr
	 /1a150BF6/q6qMUCw5OVID8R48i4nejt9kdUekIuNBxPp2ymdVDZo+sfkCBZWZZpT4
	 Oh5NkkM8qZUzZZcjaoVRdvcOn80BXn5jMWIKV8y3wGDT+wgVwVUG22H31fqboyoRBF
	 h+AWs4g6x7cGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B68F5C44516
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178433331373.24201.5904336166915921248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfffc2024f1927d08f8ada8e53f2a0bed08265963fa5e852ebd0aa093c1083be
Date: Sat, 18 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784333313
