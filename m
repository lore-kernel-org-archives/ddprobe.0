Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041EB2FF668
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761219594; cv=none; b=f6q7yYtiWopdnBT/pGLNUKs3QAK0iy4imyyFbUgrUD41aDWZ2i8UwHERS1jJIaJU7mjkUwiq+Or3xuJN06Sd+Wd3oqtDOxIF+9RASptLmxnm8DEe43x6Bk2tSBOAn6YV4IG5nCbjUEpIiewHXkh/hASbUn+dIZRVyPu85Cdqluc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761219594; c=relaxed/simple;
	bh=7mal8mztLlqLTevU4Kt0ynyOkUoNdqg5kZfFru1SO+Q=;
	h=To:Subject:From:Message-Id:Date; b=GRVlkYzKl5F95gdmpdBedUtzP4DugbUP3mHL43b18hpf2BtALcf3nhdQ/FeC7V7tm8Vqj2H7+XaNZKE3Y6TwUjTXzzNH7VQgE0R4le18DLQ/oOytfH04oa31zKzIuzSO14hbf9i42fLhsVnfxbJszTxNbufw8ELRNs2byXQ2MO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHWc7j6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHWc7j6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA94AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761219593;
	bh=7mal8mztLlqLTevU4Kt0ynyOkUoNdqg5kZfFru1SO+Q=;
	h=To:Subject:From:Date:From;
	b=vHWc7j6aodIUtmOLodW6m6l+mNnqrGBDRx+u/CKi4Ep7Xoc89ZPtvPIkeeyFHVdDC
	 YpoqTVp4iD0qE/UyLvCYlzTceNpVkJNdCcZAk8A6jORG7O32k2W38GZnTyFc/ZG7uk
	 Bx4R4YnVN1vgPN46WHcSyRUFhQl5GAvNvlYmNm6zy9bCZNVdPMtzgVUY5sCLNWJCen
	 7i4iZs2bq0ayR+3bjPIT43Tj0B04VzbLHf5006STPnZDv6l1mi2Ily828d+40xVED4
	 0uIRmXWnrhFT37U2z61inqrSmvVhhzE/Tr/tlb9RvE8j6p1HNITWQ4gtFNWosOB7FW
	 97MeDYqsJj4Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BB8CCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176121959360.6753.1735136728786306264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 118dd70dde7244d852594e010966bcf2abb6b1a181e9f7883bc599e45f493dae
Date: Thu, 23 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761219593
