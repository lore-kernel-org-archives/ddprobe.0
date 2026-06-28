Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6915031352A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782619114; cv=none; b=OKO13oYORicui2mLp6k5XyS/frNaEJD6TjjWubkd8mfZQi1Xoo9cWJHiiM/q811pY2yycDHKlm6V7VYLo6/d4rnajO2bZoW9g1rfBaYkW9moBHJzIJhPja7AQ15ezR9yruYdK9zLwGWTRC1AYhmpNNemz/iC2tJ0GHaSMoKLHq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782619114; c=relaxed/simple;
	bh=cwE1ovAG7/jO/NENkaomu6NoJULh8eZhU/oF8JenpD4=;
	h=To:Subject:From:Message-Id:Date; b=Y1PmSVRlEBjjMlLMPuzChEH4UcKVk7OMgePCT7rOEuDWRIQtvb6eiEQvvAxGNaImJDnWTif6QtfnInosFAQZLdEKC1C3v+C2MwsxAPCu1NLBWNf9qoDjhSAWa3xUTxGI+nVx3k5N/ibsHjbxCtOsOPC5kcgTPBkqbGuPDMvFdOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCk5hkbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCk5hkbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3C8C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782619113;
	bh=cwE1ovAG7/jO/NENkaomu6NoJULh8eZhU/oF8JenpD4=;
	h=To:Subject:From:Date:From;
	b=NCk5hkbvkBuE36UYNRt39340uiaDTKx3t3IZaM3RkWwMqVPF9Kcz9pDKMtIGo/Y8i
	 U9i51pfSiCP1VHw6gWQjHt+WUka19ZBG/ekwVCOPbYzGw3cUGjOPPneZ2RoCRmGQgY
	 Pr2JYUpCwyW4LcP8wpS7e+t57CbiGX2WtaS45oD4BsZNwOVPtZX2YkpKo9rVLITMFK
	 TugeEZOD11r1/hG/z6+/8UUkWqOsTKPQ+YSgjdgqZ7GhiJOF7qJbTQPMaDHUwk/smn
	 FlQu2iFGS+/7GQhHwlJmhmCUOF2ucx+6pM0VqNPqgwnpcRgXefD3yBqmoU+6UQJzcD
	 sDGvmmGospeLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5204C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261911368.3213.5137965638468444471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d374eef239aa690c5e285ce3b72790a6e19ed0980d177424e3bd4e8bd5736baa
Date: Sun, 28 Jun 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782619113
