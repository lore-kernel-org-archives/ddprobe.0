Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A5979FE
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736329554; cv=none; b=TlXfqQxueQKBq36M8AW68o9If0HR9yfQOfgWrnZeOaDfWk82byf/Uhw4gLJL26JXcPuJ5NCEEZQ3+KRgc4vzZyN7klNk3bgNklwUtJd3v+yPOgjMLpRj2GWrIt+fu7bIy76M/upz3u7yETmjCw6rfxSQC+/r0j0bqZMV2mVD/08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736329554; c=relaxed/simple;
	bh=xiNpR37zEI5NIggJSVTn1USUQKw0MHlOxAZUr3+uBuk=;
	h=To:Subject:From:Message-Id:Date; b=ldKJwceEmgXPFyaSYkpN1lwdT4VT7kTkoweJUWoF0qGgUXHLVZxLEmm9NOLbl9wYwoCeiR3pZFOX29SVz22sPomKidtdckL1IAZ7VWxRnqLkM6rE+f9P4CtKYtsX8z6BU+IQFId65PcYn2DX8otrSXZzteVeL1GLBnN37eURMZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piIBk+6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piIBk+6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4D9C4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736329553;
	bh=xiNpR37zEI5NIggJSVTn1USUQKw0MHlOxAZUr3+uBuk=;
	h=To:Subject:From:Date:From;
	b=piIBk+6PelxW4nkhKNMoGfYTAvLmwhedXw2P52zpjBCFVNgaprajtg0BeRiSjLPhd
	 Oht1EfocAlUhIYSiR0P4isl3JKuxLO/Q3vnU2QmrN33mygOXLFARVnWdq0b1T1VnJF
	 CCBeW40hCzIqy6QaJyf0RRj+lBFnWi12PHPZvA06IeI5pkwvRV1+quJ2b9oPjuIRhj
	 ZUE+OTQ7WMNg9g28RxQeFMXJKaL4EtRSg0hAJXWm/i3mKSEMDXrTyudHplNiBvEwEg
	 J32iNPqMjWiBRMSC8SVWfXfAAplkcCBXXoEgZZAIgpssqtSHncITYbtW1YV8PTnnpF
	 kUArQOXm/rzKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C210E7719A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173632955363.22797.10778900793358417298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14197a33c76be9707d3589f604bc8aa9ada4897752482f1e469acdc340d30251
Date: Wed, 08 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736329553
