Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C1818FDB1
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747476594; cv=none; b=JmSJXKTpwVIWS5Jofh2SLoyY6K99gmPYzp+lEpDJeh9tBnlzXANfRbM3WkK7hcOwca6y5ebTEgCPvtCZDASwT4BkiJgSDdbM/q7F2ZOdcd1m+mWkSozwfHCOSFmREapV9lpOYOu+ayc+nBuXEsQYanHZ4IK7tSbAlDFT/1ijeQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747476594; c=relaxed/simple;
	bh=zoxoiTx2vZtCVLz7PDKhqpXrQ+sU39YiO55dP+fm7IA=;
	h=To:Subject:From:Message-Id:Date; b=JZIxozK/3cTojGYrJx7wYueYhOBUrDnfox6XjFmDIYr1IRoH4P9mAOyFcJzF+o/yPHip73L10tIFubKm+69Ajqn3XJu1TW+y2n4bgaTfd3SY7M8/niS3ANsYjxf7vCHh3VLuOSv18mU0ByNyv0zfjdKvSvpaFL1V4PsXo+SVD1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPV/7P5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPV/7P5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A286EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747476593;
	bh=zoxoiTx2vZtCVLz7PDKhqpXrQ+sU39YiO55dP+fm7IA=;
	h=To:Subject:From:Date:From;
	b=uPV/7P5YQ+BFiTaDICJYh5eHcnaRoCeiVQfIhhJrm0l4+yaIQidRkmYldY43t1mBV
	 OoTvwn9gfQm2obt2A5wJhfIx8DNRl/TNoTX6HDheUXAByICwfNmhRFNM7X6T2hPSCT
	 nNkGRXs2Tsna+DWOeVnA9FhPfjvhG/uOpxohUsHceLqbX0Qk9TK7KpqKAookjb6niG
	 w8V7OgxFG3Tk+X4/Q+OwzledDNSCX5k4cSVok76LQuRXf06b+WBssNtRThgVbCsMNl
	 prMlbTeJC4dcx1ChDPjoYPtQFUa08zz1BFyor/QWsXCze5nQUpEcaDShnkpToKtB6P
	 XbAwZudDwzZew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F01BC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174747659357.28698.4947174729358507313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a094afd1aefc479a2806d65de5e9dcf2ce4fda907538d3e871f4861ad0e5ca2e
Date: Sat, 17 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747476593
