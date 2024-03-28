Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C381DA4E
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711590497; cv=none; b=Vhrn0oSRLOnjWg7ng3aMWDgvKix5tQcsNLMacQAzT2PWFAaRflaeNnRhV2H+dsyVK+SmPX0x1868VnmxQ3+fha09XiNqp0JU/SdfUn565HmfZ5xtIBhnlbYElWKWVQ1BBNhS4Haz1+PhuyAl89yhib2ufoQ782yB1coLWQfApos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711590497; c=relaxed/simple;
	bh=xTpa/LfefcGQyf8Y/jwAKHJOlUuFfdZix5Pm/ig/rrA=;
	h=To:Subject:From:Message-Id:Date; b=piQy8X6o8sq8KcxODH//PpQEqKcTOm5LvMFjQ8+VYhBX7WnNp2nlxAYcPi8H8A7CbVtzZdRLAzD/gBsjVKZ41kuKXJ8HV12ONVWmGROpKp/q/WEJFBu9SbSwGqnOxSRU3JhbpOTyS+O3ke6SCG0H/fy/OrMSPCuxgT4oliI3miI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmU0/d4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmU0/d4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 849A0C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711590496;
	bh=xTpa/LfefcGQyf8Y/jwAKHJOlUuFfdZix5Pm/ig/rrA=;
	h=To:Subject:From:Date:From;
	b=hmU0/d4JKKvR7X0wCI+MSlCQItgoCRGeN4fBio2+eJKRRpdIDt8DJu6oGPnseqf1Y
	 ehRSq06Fp5Fe34WJDEsO4VKwoRd72CwvDYO+k47Bca1CEzV1J9+SnVhUzMrFTnKXo3
	 Etu4adgQucdp4hz6doppYWDIaqOgKh5w0YaaL1iA5vfLsYU7RAwG0Bz1EY1Hot+aQA
	 SmKaskagg6gaksrgmj/V0p4xUSlohsdo5O86HPfE1IK6HUL45lDx5g1BzWaCESNvMp
	 5pKXDNJB0+ukA1O4ZpF8PlCmz+L0xJTYDyJEv+vK7dN1UCcun+pC1noVI8gjD83wbu
	 Q1+MD+OL96ttA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 702A5C47DD9
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171159049644.6077.6599912770578368575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62637945dd430dd3c80b7cfdc9eecec98c4d031f39fad530c6fc7ac29b6d22f5
Date: Thu, 28 Mar 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711590496
