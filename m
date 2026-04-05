Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BFA40DFAD
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775399134; cv=none; b=YEprVxYInqyN+ngy9/BuZlOi2Cz/Tw0OQmAAPxfvYKSZwEi5gpzy7vw1x1gpzAnsznJvnY3+vGdw7xswOw7EHrXfEx0UcxKY6ORGkGZKwrmUIitfmdzrMNfExq0TMmZ46sV+MItzzDtdRiU1R3IFYgEhXTj4GPNHqXAfEw7QN/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775399134; c=relaxed/simple;
	bh=rv4U8hrmDGxcgA2yrV07rlgysZ9fLUavr2LdxNGdkqg=;
	h=To:Subject:From:Message-Id:Date; b=Yig91isDQ12PDBcf1kb8Y5ZgD47cBKeIjDKbzbhLnXtxYieQEkUL3PH5CuiS5VdQ5nJ3a8Ob+dOdij+97aAd6+6Ss/p7empnXfmyJJvKiIqnd2y4JMfF3nBqUf0dPsM5YfIRTbYVeJxu2yqdQh6mOzspaQ99GGMMdhAJhVSxssY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUNnJqKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUNnJqKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEC3C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775399133;
	bh=rv4U8hrmDGxcgA2yrV07rlgysZ9fLUavr2LdxNGdkqg=;
	h=To:Subject:From:Date:From;
	b=JUNnJqKp30YEr0hkTNbJhNqvFunkiUj3h5QPozCqd3ZTRsT38uP9il3GGP0wB5Tso
	 JrEoFrjRqYpLo8O8aWx8b3/5x90YRLHNrhNu1J8Se6KpqTyBMKzUCLG2p3ueBQ/xmr
	 opQo/MpuiUs6TR0FwteOQFZxVk8CNo50vZWQdMWPrM6zRFizff0un+MjiRTxIg9uyB
	 dvofGnNxupE/JPojnsHnEuLc740b5A3ya64Qe4q2U+Ws6KSb1kEzrFacF/INsHu1CJ
	 ZGcTMyNmDuEshJada++sjiAknx2UVNCBCe74NmMP/aRJvqq2izE1kJa2N1y95PuiWK
	 iSRwSYqDaLxoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F73E9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539913369.27446.4367224109328927212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 233e74bc4bafb9b73fcb07c9456cc6b4f3a2fd14c349a1fedfac94f69ea09e3d
Date: Sun, 05 Apr 2026 14:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775399133
