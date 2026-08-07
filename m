Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FDA5266B72
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786073434; cv=none; b=g7ASN0txIxt6MJycZxOuP44aejgBwv6Wk8EjHqCmGCYTKim7Dfo9j/QpX3v1vzKKuEwNe/I0e2vie438/QLlwrDzXMD5v7hT7CyIrPduT+BRDdTceqJZMFIEjxiU8edSN2jHQ2fyGsK9+mvb3RX1ftMvYY+gyhyzQtcLvjMjDKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786073434; c=relaxed/simple;
	bh=LuKt5+3VqAk6cQwzkh4xLDSmSbbT/9dthBAysMTCgfY=;
	h=To:Subject:From:Message-Id:Date; b=PTBSG0WQI7KrXlaMwcTKkg23owoB+pKAeciXH5uusDk1uNb9qAgtjUQAoZrlb05MUli17ad1p8kBGi3/8CcymnPFN75cMd7E3AD4O1vQ25x2dlHlWBLHaF1ntmMAj5X/GnNtOP61thaDr6x9u3QF8KZC6cVIML2qlBlp+/HNPzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JESNdgFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JESNdgFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D318FC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786073433;
	bh=LuKt5+3VqAk6cQwzkh4xLDSmSbbT/9dthBAysMTCgfY=;
	h=To:Subject:From:Date:From;
	b=JESNdgFerk73ODmLANpLPJyjAmNliu3LocDWuNHpWhcjfCA/JFfNKydSFAIFrV3LG
	 xoG96KlM7ta8P3rydWL4luuLYhapEFLZdQMdAtMr7ThDC9d4vsteEyRPfTkevTP+aF
	 gQzW5I+lc7uwpYEOhLWGaMU3FRcjnZxOMDCJQXHOQjrAY3s9SgdWAumxJzC0gkS+3m
	 GZcLUmMHsdITfFvFMe97mUsmLXJS5U/V8bfMyEwVN0mrwSWtH3MPrbwuLhDCoTsLfU
	 adO4o0PWQvzSeUN4Ma3A5OCX/cBsmnvFh/p37Iov6u0ABcuiNjqUe9JF4my7tiRjko
	 VNvz+Y2qznTqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBBDC5AC67
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178607343371.24751.12820222639878463975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dabc4cf197d325d39adc697a4af9e10a9d1f6af8abb7d08eeba3c8e0b985fa4e
Date: Fri, 07 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786073433
