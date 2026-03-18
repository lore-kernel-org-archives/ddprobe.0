Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D7C1D5ABA
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773795894; cv=none; b=kD80ksUKYQmn00r0271z+P9LxsrzPki2HgwvIIwgJlKRME7HSHmN0PTr8qYlfLlbPQzCdE/nApoq15aSvAD2pmvsULSY1ic4HDgKQK8DV9AWBrMQOmhOpx+znQe9W+ZqmTolmukgC7J3r3FE2Sm1TggVl3xCt3rKamHciUPbTZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773795894; c=relaxed/simple;
	bh=Xk7uC1ATIA4E01pPuDNtvfqEOx91CkC2mH2IfpJH76I=;
	h=To:Subject:From:Message-Id:Date; b=pH0bYghDHQs1i7QhQJjX/PCGLc6PQX8+EErNgBPNtnjMnRh6yrMU7K7zFCqgqaoRgzMDnC/4X8PgORIC9k0fQT3oYYqXra3uaF+/d7uMPv2h9CSWLVFuLqDL68Ejeusoij0EqBmFIw++3714ShQXetargNNJg1ndNUtuX+zSLEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4du+Q5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4du+Q5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDA9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773795893;
	bh=Xk7uC1ATIA4E01pPuDNtvfqEOx91CkC2mH2IfpJH76I=;
	h=To:Subject:From:Date:From;
	b=u4du+Q5lz1IH5VmKguxz98g3d/A79BUGjCs6PCSSDNb0YeFFs9s3osWL8Nf1Q7Oba
	 2qXTHbgLA/GfyJ26E/SuT5zToJyYrNSY063kCKYLTWm46BvQv6bDdj6zVlsDoqSmuU
	 0p79rzvwdFadqWLTQ2NaA+qW7qvkmXfqO1NQvKRnzO7EdD+ZhSufHQ7LktYrxPmAhV
	 w98Hon8dfV56VeWYMhxy1pxq2bP/zvftPS7B/sNbJNrD7yToSmx5wAANETSBLVJlpX
	 QAAI4KjkkxJRNE0XrFgVVSqujl7TZWuTYquLYgPtv6O2ko4VCCBz3v29wDwIG+qidP
	 oKtLpt2d59iPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E65CFED9E9
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177379589357.23003.10814491344890801599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea30db94a66617d31d5b0a06d7207bb48e24a3bff7304d3b6133c7d833c35154
Date: Wed, 18 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773795893
