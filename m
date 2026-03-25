Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94558248B
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774410293; cv=none; b=cJsf+K+29fvN4ro1IxnIRoS0lffMWhOIK3Y0p5Ln6oFG2jfWh8MiwEXw5yr11WHx6KOl59IqUqBEORSUvr2cgFGGZwaaJT0rFRgsH6oUcoswNe1/TlJdtx2ygOKgW+qO42lguAD87IysVBDc2hucF4Bq77vqA1OFYsWQUxe83F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774410293; c=relaxed/simple;
	bh=aNN4N78Y0J0y4YOF3yujCApEb5RW9Liyb2ZMMGamSkc=;
	h=To:Subject:From:Message-Id:Date; b=ShFO0NtrtPG+4C6CaFkqic3kw78QHKso56Cvve3/bZ1EDPcgM6YjsfzKcOCpCHGR7mYQKdwqSrDM+6AhWIcqXWvDzgEmJJS3fH0qBakHfPIMue+Am6LonZDEc+tR2gwiHG8UqlWlTVfQF6JMnhUectJ4GgIN034J91Vc/DnpmEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukwxizE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukwxizE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD1FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774410293;
	bh=aNN4N78Y0J0y4YOF3yujCApEb5RW9Liyb2ZMMGamSkc=;
	h=To:Subject:From:Date:From;
	b=ukwxizE8quM9jg5TEf+i4ovcl54cTn/06HgLzq4UHH98nnu/VXsmkHsIrBetr/CN2
	 1dkjZkUmmp+hmAFePUi5vZYapNPJjecHHACjAsNtxZn7FopMGGXYxvT0zcxvDKwSCF
	 wpr+IFULeN5FJ7fDiEU+gIYB90t9Dw10SNE52g1pbcGG8fvz+OMFIrj3mL+bw514Vy
	 ZVgyGpRn6Ukgs2LnwQyZrk/AsnEq1WgEWDPTJNYbCiKWxnxNvy2p7FtoDmM7w/WSh3
	 EJSa1CxVuqd8ysBnvkyYH9NVQAT9OFYKZgKetXA1pag3ws30KIU8hxgoNpZwo19V1U
	 5llXIDe+HJgSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE9CFEA804
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441029362.25515.2164890799753989562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda25cf944625c5df9357261631ea826696c011d465c20dde768983091e58c02
Date: Wed, 25 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774410293
