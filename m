Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3754B391E43
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773942294; cv=none; b=okQnwHeuCK1/46ePFCZs0No25YKWU0IpUaCQX1NyosmvKDCRM7Jw9D2bftQlgrtTPHVXUmi3hBWcq90QIHmpHjePj0iRDV1bxVx/5neSQOpwnOi+ullAQWLhRsaMCUz4g74QIX62ZQbbjnVLzsuakvFgBy5TZpu8ZRzl0dyTs64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773942294; c=relaxed/simple;
	bh=gA986FwZ/l5c+LRPzgp4O5TJMYFFaDPC1qisD8bieBA=;
	h=To:Subject:From:Message-Id:Date; b=UIGNGgoEspXoAxpbzJpJ9eUwwxo96rtbwBbM22tuweuHNIPPhPDdUmxqBgRCnH0bld2xvCkuSE32c/i0QMjBVIVaSJdGi1QWckfumFiGrlWVUfWmYTtLxGt05cXxdyNSBHauRnd7BRuB0xTsjhXKhZZnAaBsjmRR/SbkwPD26aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULb+6V2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULb+6V2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E297C19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773942293;
	bh=gA986FwZ/l5c+LRPzgp4O5TJMYFFaDPC1qisD8bieBA=;
	h=To:Subject:From:Date:From;
	b=ULb+6V2uZjEuGWBh8CtBh6yV9oK6FcV/Cq4/taAxgjqynwHei8mEweVaigVFoS+qF
	 ERtp6NV+BF7WWqvfLIcbzQPM01mX31J8Vl71Yijb4T4+aVJ4xH+6X/vxzy3QWFtL73
	 l1L1fv7gvKRsY20L0X9gKV6wr/h6110HjCq2Cdvu9LbGeE0EQDdfMFKGD2GAK2Zv9G
	 0J1EJki4MhjpXs2c+nX6B6KhDbxki/iMCYyZYJnB+LoxtcoiddnduqUs3PpGN1A0Pa
	 Rh3wVl0rhXsAq2Uumhe/hPFWScDEZhcMc+vRk44ELp5td/OlwWyM71io/nlpPJWheg
	 cGFmQOntxY0fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6631091901
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177394229357.5455.16196300337857974363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a141c5535c5a06d188e897e08d4fb7d57fe09db00ac844b04d4ce6856bc519e7
Date: Thu, 19 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773942293
