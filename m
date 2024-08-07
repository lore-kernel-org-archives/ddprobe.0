Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7DE77F1B
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723067154; cv=none; b=fJ42sOpvgSTcVFPQ/Tes4QWYo7BIuzKnoriFqkPCJaDr5lv2MGbI998hePVYctUBJgkt3L1VCjJ5rSCM5LcTS7XYaw5IT3pyzN+bAFizcFlw/89oq/Mbj/N4bH9u+IuhAGgVvm/2akeC1AkCbJSqcPvDmHBZgZYf7BkSiNhp6So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723067154; c=relaxed/simple;
	bh=1LI4fsPKC6VIeSeF9/us8FNefeL4AlFXz0m61lgHQNA=;
	h=To:Subject:From:Message-Id:Date; b=jqKaDAMGG6wOHzTAimr0/CJHIVlYlKzVRoCLxJEZim26u+6BtZvcx37Dr4ZMzbwZ9OAascqyiaWlcO7nmSbyXAqdCUPPw9xun/3qt+q6D/gZgZ1/zLquH6rnuzAdVhRGUV6F1R4LAO6C47o0o6PZSn/6uBzNXEGIEa2sOhbcIsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H756Ge01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H756Ge01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7648C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723067153;
	bh=1LI4fsPKC6VIeSeF9/us8FNefeL4AlFXz0m61lgHQNA=;
	h=To:Subject:From:Date:From;
	b=H756Ge01OTm2I1ssdS8IE5imqAtBzV/qxSW6NxoyuHM16/tk/oga7Nq4po/DwA1/E
	 wyOIFxjSgapfhatHd7TDebYG451rSNcduX3xGFZhdkIniSVRaUTFuUT2zdt8NO+DCD
	 PPyf+nIpumRZZm0vq8ArLkowlEq5MaQfhzx/m4wy13bqGiuNeHgaAfYy7oKRVnkEg0
	 raYEd1W0x37Ei+4KGpDkeXQk+B+Vb9qvngB2qKsI6Onn+OdmYRGDjotheLPmXoe4pj
	 S/5oOiR8irHlVrrEEmjy3rJJfPfz6JcHKZVllpXhG8wHEvdR4n+pBS0dCo22DmGOzf
	 7J+VtmJI4wg+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93860C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172306715359.19711.15813395283733757200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b47f1a3968b056030942e0f427931209ab7dfb964d231c05636e3fa22aa2be
Date: Wed, 07 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723067153
