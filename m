Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652A739B958
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781244394; cv=none; b=LZnlFjgvlFjjVEJ8Jz77mlsO/ciJecUMO78ECr2vtsqf1vE76BJ28hGz3jX8hwJ0dVuVn5FdjBuT3r8eQ9ODsVAUoeYPeuQSknsnunV1Gy5UE9q/vPXiVXGtqLxfibmGsx2R3Bx19XqX2pM8s6yAKA5YAaj+Kxuz3SeYHGExh/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781244394; c=relaxed/simple;
	bh=OQkNQSBo7cuoraH/PuA46M2hE1iLrDEZzHrkKKgceeA=;
	h=To:Subject:From:Message-Id:Date; b=lc9+YziKW1Z4cso2rJhiCZtPqp0jD2Vd1Yf9T/0D3YiBRqZvwAh+8SBnMuID09tYYxKTJk56j3VdyisTbrp9uUtrtr4wBlRpM7u7JECGbF3JlKdskcc0AwLWgb70BBbXYnWOxWLh7xLhaUnvIFPSb4gzireYoWia9WG7mygnWto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwJVj1RF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwJVj1RF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FFEC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781244393;
	bh=OQkNQSBo7cuoraH/PuA46M2hE1iLrDEZzHrkKKgceeA=;
	h=To:Subject:From:Date:From;
	b=VwJVj1RFaYG6Ym2t9NgxMVmLt+xghADpm1cDZqBjZiYdTI+OZa+BbCVTzvw/3WJlH
	 ILxCxKTG9SW+Q54FbXyr+FrMIp/IS5aZtkrtFkz512jxmaDRnxGIYF/OVhvjA6Rl95
	 7LEeCDd9AEph31s7yBBVY0vm1ptboWH3I0vqPhADb2q3/rIdYcjGVL/QDJFUnyiTEZ
	 1P8gFbPRk2q7K38wRmZkGC4Jau8DVYl28tJvM01hhxXQnRFKFR+nFVqsuKZV2chKFh
	 o4O755bvW6jqwARRImJs2HlMKJClJZz/cskYqe9dDsKECEzoCMXsfu23u0L1zCiLjq
	 QOyEANF+DKKxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE183CD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124439370.29948.1445343231761991944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9bdf9ed55a007596ba2db575e3499aa4d3a10af8d27a369c6591abf5fe36ae
Date: Fri, 12 Jun 2026 06:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781244393
