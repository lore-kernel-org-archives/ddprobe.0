Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6693AC00
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787656234; cv=none; b=tAT+l3ps94+3lCs47v3SXw9r35vLX4PKlomjzgfuxb2ZPqzK+QAJYWTsraIzGabl0FEmcrzptAjLoLdwmrax9irITELHyDcNQxlNrnjW7PVyg6i36m9ZJDo7Ov+4gDimojRAiQp+RjXhSuSj7CZhAFUVoSOv1WYsrKQBr4kukm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787656234; c=relaxed/simple;
	bh=APwqtdjeHdQzHJ7Ml32vt8WG5rOWNaEe8gFfws02kM8=;
	h=To:Subject:From:Message-Id:Date; b=P3acVRdic18It1dJIzvqfXyOZ+FaPlAha00mz+go5+N3I/2dQVRpAAs31ZckKbVScUx2juXRcUenwWoMe1V3kNkVQxiAekjY8DAyVc+OPjO/YfYq+jAOxwC/AV1DaVuVoxlSbTyy/kz0Z7vmY4ZWNMVrY/6xQNBJZkm26PTw8EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2bRuAlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2bRuAlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD1FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787656233;
	bh=APwqtdjeHdQzHJ7Ml32vt8WG5rOWNaEe8gFfws02kM8=;
	h=To:Subject:From:Date:From;
	b=G2bRuAlXdn24SRPr7QDid6WayVOZPHePxxfA/gcwbB4ekzfdR0GZIcDBOkq5OKGxy
	 xNJ+zYStchVmTKZLngxXKzNWpZPwrYBy2JULC5cK7AeARuzKLclsR0L9o613hadISH
	 1mJQvL7d9TRkOj17yXSWqOcZ53d9QJd/5ica73MjqPbtyNs9wC0V/UipB9fOs4pnYa
	 yzqr56Vbn1b2S4Z31XJ7u2zcRfrKR0tyZPE229UcLEjez7PDLOFYiFM/Br3OmyDmM6
	 lrQNImvQEHtqENsawpWVNMlHQxG9g2+oOALdAXkzqyfmpeQlfGGDTNgmjtJYps9dYP
	 RePSw8OfmJgnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBC9C61DBE
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765623369.11110.3761045435656237489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2dc5a20b671ed7bad3c8a96a893a0ed70c00fc82aeca22e661bc29f2f859411
Date: Tue, 25 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787656233
