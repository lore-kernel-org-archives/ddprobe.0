Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228752253E9
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754907594; cv=none; b=ObJ/kZvFcUXpEhwyrIGpz3yJkM6FhGI4DRqJkpQgHAao5Kt4OIDikuQxtD9CCg/9yUAZ8Pzsi9oCb5W18KXWhW0wmzdzC2nL/8Rv8AKe8jfpon79Q2KIPtk9orN55VSviJ26011rphaISu0YkhNYv9NakNI3NCdPuN10/2tFttk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754907594; c=relaxed/simple;
	bh=6HhONFETFHCFRiRt4rGmBLanXavwhD+Ed+Ui1FHsnfI=;
	h=To:Subject:From:Message-Id:Date; b=BwUMQf9hbMGW/sH/TDbpuCXQHcDnoTNtwkwzhpSBdC4Wz9jzyIH37uo5pxQM54zENBdOkRGLNXwq2jmYflgnU1pfz3XtLSdB6XS8eSnh1REdKRyZFs3/lOGdysbpMQNrFDEpoz8mrIflScBgvbg3eYCWx2Q5Mdxjy6GZAASNvQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inUfb4rH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inUfb4rH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D62EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754907593;
	bh=6HhONFETFHCFRiRt4rGmBLanXavwhD+Ed+Ui1FHsnfI=;
	h=To:Subject:From:Date:From;
	b=inUfb4rH0iiQdY6rWGGdpuinJkQLbhnHca/2UArXeZRWeUi9B4quIcfSU4RfqmRhs
	 AgjaTJvIczk6JvcaM2JK8w46C3vJYOQPv3SP1CI6biY2v3gi2yD5//tdFD7FSnsFt7
	 1JjfKh+bhZhzZYZ08sd2PkhfeV23zaUTd0SxnS2QugWr4Ow17PXJ+tXaHCByHyDW+z
	 kXYIxqRiHiqt8B+UtzyucZs3vDkzxXNnRfIlHUih6wvZCKIyTMwGeT51RcnnDPV6ts
	 74qT2UxxhKVoe6vROT/Rq1Bv7irWErIooMa0uqxwjGB2+Jg8X8BtKficHe/XhRcSeC
	 FGhJE/JTo0Yig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F026C87FDB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490759357.22404.11372699330651539341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2d4a5498176b4c13bc7feb36d3f3c677238b2f4a374dfe619c98ad99e79f291
Date: Mon, 11 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754907593
