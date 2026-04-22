Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0693133F593
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776877654; cv=none; b=lJWzCjS0wlkjmQ9HJyykRD2UssjoepB/CvXJbmXkHLNNcllNSE5q4Eb0+Sse4Cq4jFC7abt2btoWPvxiElxUfdqIC4paH3y5Tobv1N8kGfN3cH4ZNASIl4a3kY/8ThmLI1VRSi3lZkY3UpS0cWGknrNNyWdUiUe5/iETzOeWoWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776877654; c=relaxed/simple;
	bh=97izskTIm8ZOggGtdhbooFwdUxxCVhE4/8l5VDGl9Hc=;
	h=To:Subject:From:Message-Id:Date; b=FGspvf3wmuSK8a/2wVz55AisxJEDHwqAjrMQ0l2OinOCwDaZBqx7PgYvyzGuiBfkJpuXaVS94a9XOHv7lHvK6iX97Shv7mZ84CO2WZKdFWVL9u41sKy6Z7KtvvaUYV/NRdCID40M/xn9wboKzCM/fBHZziCamDjmf7LO8DpTsuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8yUj7DM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8yUj7DM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FA1C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776877653;
	bh=97izskTIm8ZOggGtdhbooFwdUxxCVhE4/8l5VDGl9Hc=;
	h=To:Subject:From:Date:From;
	b=Z8yUj7DMoN+HVPV0K0227ytDCG3HRZ1W3MxP126d4X/5o2d2jIOUQyQvqdsQ0x7Ad
	 5/sfs4E5Dfzkb/WGmPhHx9Q1/lqmEEzhzZidyCDCzMWR4D6WlEX0VV3O+KTbwXKRBP
	 JlPKuqzc1jDHB2a/ZAZW/B3JIbS1fcW2lw9LabVld/eMv+8B2puBZ3mW0+6+604+Va
	 NLTSpkZJKhJJzBjYRTgJvZyRcbvzQuV/O5QJ6UEZN/sGsHGoGrTK6+vDiZV8OXwtdD
	 MGzMsOm2K7+/QySU0scMYiYaCZjpSPVVHT7dJ93zGyKAlHFQlU2O8ZOsHsXMv/3Og5
	 xOOjLOKZsoUAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CEAFA1FD6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177687765368.3428.1286707588404367295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f723af359924fd7da36e5516d6dbee6c23c48e1798bda98226b7b59602f72b1
Date: Wed, 22 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776877653
