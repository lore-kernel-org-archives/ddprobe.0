Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7887A13D891
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782414454; cv=none; b=S07UpjqeV9CU1A+DnH/ygT0hL+OHY5c+xY7+i3eKBZpG/8Lm9PI3zILVD0+yyy2SCTWZmYAuWtpHuUOKXF/7fDBS2y2dQAERCkkeeu/kijXgpRL8V2U2CYWvLZOkj3cYcHptf/s/modxwV7o/0a6DjkAC59mxusNImV1KuRaFAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782414454; c=relaxed/simple;
	bh=Ibr3EYs06+Z9PlyvzMftWGkuqeiJ1DagQP4h1bGprQM=;
	h=To:Subject:From:Message-Id:Date; b=XNwiGjY3T6c67bd+M5dzLrEhwqGRG6goXdNiVx1VAj7tcJ2jT2nFO5eqq0MBW9bYjXoFw7tgZXjRDOllTG0dqUguA9bBiR41guaCclv2i7xlDqJxYn1EommM7Ckp8qu4eugED2eRHxzafK+fqbq92enHWNXzuuak7vUyIeMross=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cw+I0u1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cw+I0u1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C35DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782414454;
	bh=Ibr3EYs06+Z9PlyvzMftWGkuqeiJ1DagQP4h1bGprQM=;
	h=To:Subject:From:Date:From;
	b=Cw+I0u1FVXALkT0tmkKEy4R9um/TYQIbemR6DXLkdc3wetgMl+huMOJ6X5IWzmszU
	 9wme6ayiPGlJxgWKRxd0vhjMJ/ffhOa10bV95hk8T7x2Hu0gCvW1WXDtl1RXv7V+qI
	 xBdqhJwO66IbEM6At6zsRFxfJF3l/cFNt08fnBbaSFqw4Rp2RvkaNhaSFpTHKuxuxQ
	 KBxRvc/ZPERVLLPDUrkhFkpZOyTolMNExlDS3JPo4kF5yEz2ehV8li1PEzOA2GgRu4
	 fpdkYEf5qLYkgkmCpelE0EMsQVbFrh1zkYaVAb+xDMavEm84Nia6MdkIX/fp5RVPla
	 mmDVLRVt+vZmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2924CDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241445372.25511.16821629382830822322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e09cb961be4f3267c4ce2ea90f26f227adc0974a1e8b80c9ba47cdbff576ce5
Date: Thu, 25 Jun 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782414453
