Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F311E51D
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742993393; cv=none; b=W8//mh7LcD3XTSby1t9+b5hdvHMfdv5alzbIizXX4Pyk/1VapQLx97Av8j3QYxZR9bMpE0mzchpiu2t9ZoI/7vVfZwFX90BoSwUfdR9SVU5f58CZ/ZSErOkGlX+xNCzW5WOfyD9N7S1Dlu/BZtkyteBcx8FkxCmpkspD5/kGY40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742993393; c=relaxed/simple;
	bh=AqeqlnEl5IGjJz6IhlHwPhnAP7qrfADMrg5xglHC6Mg=;
	h=To:Subject:From:Message-Id:Date; b=C1MmvOGZbtetIX4+LOLJfsTkhPrpJiPJZo8Ova/6gOBH61FvNUS/GZ8lfEqgEPoT1moWcZqxLqRgdldGFg1nOTtxtR/39XR2c2Aa80u1jnnekO7EbXiAWD6n8wBuzAJPTreBgHeutB42z/POf0KP5GWSdo8e+rqfb5PJOMRxDf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMAErGQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMAErGQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA495C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742993393;
	bh=AqeqlnEl5IGjJz6IhlHwPhnAP7qrfADMrg5xglHC6Mg=;
	h=To:Subject:From:Date:From;
	b=AMAErGQEQ+iWS/11zpMBCSE6+p55HVXocC4svBQILAiFVq8WRLXYVztbqk1FKjiyj
	 dy8y9y8l8r0+/E+kiWgK04Yw+xMgU31nJXmsHQyM2k+yTH2hB1PsuRsbcSKqxpSkzE
	 /fxEvxGY1fMZ7I32JNf9cQNIqTCxMI5LRBvBmDdAEvAGS4TymN+aaxDdV4RJWRuQSR
	 zZ3TPKhX6rHB6ro32Tk9PZOedYWoIDnidpvgEidMSc1KfRkORVwF6IwhqSq+YS9rvx
	 V/qqu4K5nMH2CQ0AgnqzR3LsHb3f87ljXVmdLOmzd0jly3Bi4dQ7XmgEk0gOe7tQPc
	 f49xKuCHdlufA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9613BC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174299339360.5845.11403580413576741989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de67579d5382091f38cf5324344f6ab9d19852a8abd7e507abdf30bf8de4dac2
Date: Wed, 26 Mar 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742993393
