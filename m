Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB2743C063
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781610394; cv=none; b=SRikHVJOkrgfMfHPh+h2qu0ZVQynw8RGrLIgcpbgIOIWoz9LEe8c6lCJ+vljH2udHpZohZaWIm4MHBfmKjaf7ciWBUaHM4OQ1jfYrxnZhUKrToCJtYLGapjxOS+j+GZj3DkyPnV4302bWFu9ra3DwcjSvOcEMn4e8WYMw/qjV+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781610394; c=relaxed/simple;
	bh=XfGhby6Dcc+VOTks3AZGn0lxpzy6SShqvyLJ8fqxIT4=;
	h=To:Subject:From:Message-Id:Date; b=b7vfidGoUqiZiCG5xE9r4EhpOjkGkh0FPLo/3N4X0Z95viVdbPJqIGeThdKJ6DB9HYw98v3QTdS8orLlUNtVqr6A93wAJFsFy//tyg5wZoCEszXfpPhRNyfxOHFOgG4OPU+KlD3T8v0yXqdOT0LPSi4ts2jNPslxJ+IM1rkywKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsVBT1bO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsVBT1bO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB76C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781610393;
	bh=XfGhby6Dcc+VOTks3AZGn0lxpzy6SShqvyLJ8fqxIT4=;
	h=To:Subject:From:Date:From;
	b=qsVBT1bO4r1hRg814icIXzjhiRQ92FVEUdVUss7qZ5vqcOZhcjZ+sL+JPCEAjpto8
	 oRLUzEnPtKHrGb9rAOnFbyiUk27SdJ3O/FHFK7cbqIFKo/bTJ1aHmE4cdSrO3aqxAv
	 mBi6Cez5qWAQplKqH1c4t+NC7KFPNqmQLm7SguxMOAE8N0Ussvp7ucK8y3+Y8zAWLt
	 iPQmx/fY15zrgp5hKY8Gl3IsfVLNfZ6KZ1Mz6MxkAsZNt8GeAal+gzMEhxKq1WIL3E
	 qz5R5tpxaY5N3tCFYN5TnOBBlw+wU2aO9oTozfT5pcYvpv1suTAa4qtZOgwn6XhGD1
	 TBoLlC3RrgU/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD19ECD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161039370.7590.6097353237852782397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b0d095cc6e497b8af3a710a97b5a8c7b693b943f5fd4c39ef725b8fff8e181
Date: Tue, 16 Jun 2026 11:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781610393
