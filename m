Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E06951022
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746897594; cv=none; b=q5RXo2p43NYgE5cW7Vz5yaMrBBfIo9hEAnaNVzGHO37ZgirSpBNxIctH52j0E/J4PaF1jZRSjyNb8n4sk+MxyMIMdwHAOgyZhcosCMw3HduB2sAYFz+blnW2wSKjnnEgEsEOdDx1IRPQMJj/AHPrE8tLTH97iGr7A6bscB96sck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746897594; c=relaxed/simple;
	bh=wnS2sLY0yfIbYnjP0vr9/dvhA3/15sb6MY9qrTXFBAM=;
	h=To:Subject:From:Message-Id:Date; b=gDvYuD/g3RJ2KuBVR/nSWvLjrcdKWPygOGCSqRrgr0Zt9KT9cbMgSm8kcshDD2vqm/FB6Zz3ycRiRhLfoIObTiMb4n0TRO6U9JA45meQtUYvMeVV9nScB/1PwCcscsLPIIf+eCCeTeIdETfSBnBaRD0j28jbaBOPHuYSiU4c9jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvQN2j8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvQN2j8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34AEC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746897593;
	bh=wnS2sLY0yfIbYnjP0vr9/dvhA3/15sb6MY9qrTXFBAM=;
	h=To:Subject:From:Date:From;
	b=GvQN2j8oru8KtipsN/kU40GhHItCMvJtrI2YHKB2X2qJHH7Vzw88ZIw0/QLJwkTaH
	 2JUilLX+COSnhWgjPFq6gjRwnRWVlwVP3pBBM7uIjWUOOIO443TAuk8Q/qd2GQBdLc
	 pGOI33RPv6trwbRg87pcqdu2K/t4zDjd2V1aMbfMtzEZBykKW6vKCdb+AKuEriR2fG
	 X1kjzjCICQ4NTNSRsvrIdVGEvJ9Y7MuzcBdfUMBu4SCWD031+vDBKJS7lmngexlRUo
	 w+lndxNKbWU/X3Pec+W/l7GJtJs3+UnJhJCAhTMkHVz2B/FTYz5h/3+QERwrpijv7S
	 EIvEKnSqyv6Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FECC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689759357.26845.13984734565988431118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a493741f72df1728652276e8c01fa3daa4fdb57d37e49c0cced603195c7fa5e
Date: Sat, 10 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746897593
