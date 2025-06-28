Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23550220F41
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751113194; cv=none; b=VPPaYcp5gvUySCjQSYyNfrSrzM2VG63Gjg+naIFt1StPyW/bKv9K4v5u2qJaMSOUoPYAiCLJuIKGhZLC97mdKkiT6/tjbfNjzDesl6qI/hDxf0bYOMjAWb7dDCp72P+ckSyvThkGDma7snvCOz2UTv64tELLY2syqfPXkh03gWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751113194; c=relaxed/simple;
	bh=qIejJfWhHBTprOyvwhERu9921GRhIA9l2i4366IuAcI=;
	h=To:Subject:From:Message-Id:Date; b=Z45Twx+2hxKUBnctraywSBVdqcEpscKrwQmEsce3IB8stmiq+H4hBZE+e6J7fasQw6VH1W0YON/qzPZoZ28kceJeiYcBHcEf4FYdBy0Nw/OljmiXgYejQYq96gptdXupGiekWLbgreb6z5a6zmThIIo9DhWlHN0ppe8IEzSCDgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZ8lL6SQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZ8lL6SQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AB4C4CEEE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751113193;
	bh=qIejJfWhHBTprOyvwhERu9921GRhIA9l2i4366IuAcI=;
	h=To:Subject:From:Date:From;
	b=nZ8lL6SQ+cOeoXdVgE4jDvwsoWxEuC1BoiVS/fE3JIHxP2NFTcpO64SoJZSix65bM
	 OvALNPwEDFguykFnacokqqSvwMfubp9ALZpS4L7sPGtgSiMpVvIs92A2atOYm9n6km
	 +g4hIe10x9yOc4c5iAeVBNlu9QSivz+1Udbs7tvhW1pQYUP3UKa2/ptlJVQUUmxI+X
	 LTTSjU/0COzCa3oNjydJLccmoXRp5bN3N5JYYh/rmrg4nYlTXx7IMlRvHuy3WGm43p
	 PIUMSfw5o2SrMpUq8HsV9100rWN+2vctOGadT9Vgfnwf544Iqc8rBzFIq5uHcv0EXi
	 kMu5nI18Bp0rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92172C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111319359.9659.2267615310748670999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7528499a73ca9e555a33f216a5eabd9812778f363a5b3830ea51a65807e5d1a
Date: Sat, 28 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751113193
