Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5CE27280B
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761949793; cv=none; b=CxwSTHcrGY6lvpgVo+FgBTxfJOGZ55FK4IfuAjljrNky2jFZZWMMUtbIENtTRtta1Gec3tIOKwTXgy/NLYPGWQHAm4GOOmUXvbLGxrZzBNcIibQOAJBGBifXFrzwvrY3QvDgXbUC22MK2+uqLJyTE/ffVf4ytdrLvOxL20KBCKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761949793; c=relaxed/simple;
	bh=D9MWbtV/up/HLT/0WAMlhFQz5l3ryJ9HcwkJpMe/hqA=;
	h=To:Subject:From:Message-Id:Date; b=M3e0G+WwpSzcfHwcLeGx1m7BzLnUn5Lfk3S5yolfsegaFQhEWagMtDEuF14Vjy7EVgMM7nJAuucg952wRX6Lna8TXdDXVrl3aVZb8AR3A3ojY5FNbeo9s3Lwh+QZELXcwXY5/RDRNspt23i+HTaZjJKeWXOhOBox24xnxFqpcrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fh5lu+ln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fh5lu+ln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1085C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761949793;
	bh=D9MWbtV/up/HLT/0WAMlhFQz5l3ryJ9HcwkJpMe/hqA=;
	h=To:Subject:From:Date:From;
	b=fh5lu+lneiGmY94LTgo3Y1ENHtQJvVCNik3KskjPEK4A5NrgcjyrZhLuoWyiY0Iel
	 7qE4JCVuc5z1kCJPn4uDZkq3nZ48zt9AckKbAsbFZQiqEUqZ2XfWHiPaP8hNzJhGlc
	 LfwSVD0HgDj/N/oR6rjYxRhiEs3/cw+doBvLLYSBYpi0m3DfpbCWFbDv4JDc5DZsGZ
	 wM04DU0rq00KbanYOM44JYt8xlvJHl7WpwrLrgZR7fYCjAX8Dd/VVdz4nM51ggiumJ
	 ElHn5IBk0SppTBuGCFf2B8FaX3zN534iOkSD4YWbR3JpPrnik/pV6GV+I5Zry7hqD1
	 fk1w9wIwVjMFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB76CCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194979358.8053.4937510184257546222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2738260986643d7825fdff3d7b66c0e9744ed40c9cf03ab7147ac3d8a4acaac7
Date: Fri, 31 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761949793
