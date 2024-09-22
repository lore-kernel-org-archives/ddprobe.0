Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EFE6AA7
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727031954; cv=none; b=oy0ADqW16BkB/semWvgBuNtNx8KCwRhQE8CjI1Hh5/lAJae8yKRZSUrbySvwMPdCN3znKuZOAtzpztVMmMIFDOcRZ5fbYRAIxgMrJ3ZpoFvDBfiD68vKAHZd73MEwb4ArXL7Gr+4uZ3qDbmTni4NWm4+JCPVkohOCFROBu4upeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727031954; c=relaxed/simple;
	bh=KoWfUQdps+UIwHsmF381SpaQyiurfHvH8d+V+T7SeIg=;
	h=To:Subject:From:Message-Id:Date; b=bDuqDJylO+dzW9B97UDtNulCNcuu17eBLrL0yuwD8/2nn9yCrlc3jwQ5RIreCADXvwbedYixZDT9U6tOboQb1RgpD/oiGdlQFm0qWTCU+1DjYFpB7efU2wjz2REOnfcBMDpETUUQUpG6Mz5vXOG4CuOrBxx9j9my8N1x5sfSjl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLol7oPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLol7oPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE2FC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727031953;
	bh=KoWfUQdps+UIwHsmF381SpaQyiurfHvH8d+V+T7SeIg=;
	h=To:Subject:From:Date:From;
	b=aLol7oPvAfwOJLZD1UaHlQEKOr7bCuw/DtARGWf2dwq2Gc4RAztynFUalRIIj0F3F
	 JbWcb6auXwkZZqJm9aD44WKlaY48pFY/3qdl23/ubzoQG/d1nH3W1cm1b0GxyUAV/7
	 B75Nkt16xWW3Bx3RuECJ5tEkXaq0t/w/P4/DDqddySt8wxkvO6SZt+ahha0yghp+/z
	 hW4Gbc3lLW+kcqNQGvXR36KnNGz0vPL+FlS9SkuIR2ZVs1YP61C/Y+dzmsD7PXgSBQ
	 c5UtkCD1MOegtlEPFM30DLGFpqoBaLbluF9rI9A+ookaADshSmDp6cGdYRyPgTLdOJ
	 TqEDh17QNobAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B49CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172703195359.5592.6607598553761420430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b0185964e5f4bf627d32a8646e3665a4a0b64d9c75eb9246b9d93d51055b89e
Date: Sun, 22 Sep 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727031953
