Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341FF1FDA
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753644594; cv=none; b=AOayQZFiW5xUp2DxgKdL2rD6fFzwG9dS0dMjaUI+01Whm9U/n12umhHGk4zkTo1M7T+DGxjgjYAcvnW19MwPLcNY9lFB0+rEz0lM0l+es/GdXvTAzRM68P2LNIqvmigMFyl9cqqoTERkVr9ROZhDCUSwYktU4EC28oYNtbmYufE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753644594; c=relaxed/simple;
	bh=irnL9c6cuii8T4aIrHxPAK/WiU0oVYvVuvuGxmNfuGM=;
	h=To:Subject:From:Message-Id:Date; b=H9PCPscJKrDdtuf+Z+cQ3WNBF5UD+q3xUDi4+CN/TA8zgIpw707SsrUZfIYYrzQKM/9ZTt9x2mO782mCnh5trHKCyDeYgp5Dcn4C+Q1GSCN/SPrdsqYLzI8mfyZIrpUhvcZ9vwKHFz6pQmpSblc/FFR3iUf6pkyfAtipQUv42BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8mrkyGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8mrkyGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B69C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753644593;
	bh=irnL9c6cuii8T4aIrHxPAK/WiU0oVYvVuvuGxmNfuGM=;
	h=To:Subject:From:Date:From;
	b=K8mrkyGWBrfl/xpEqN3xtca/5PDZU4SU5TAL4Y362F8SdP2o38ZonsZn2aoOs1ZMT
	 5298pVU+wmxZw7yJKorwEUed0bOjYhwx/CRvHM1PjXxG+RM8RzC/+AW5Mc2eIk4mZ0
	 A1+T6KqtpAZXmUCwSi0KYXTyJ+1Tvy+atXUIPXb+Unefc4yMQrp/4aOizk6476WL/G
	 2Hxsatk5joeFZdoE9DtUFq7nC+1FNVzWSFowbnbzxkkwMaVP/jLc110mS85v1MMRG7
	 SzwWnH1IJYi/kbWCxTRavY1GcavJR76yYroUQNLPvDXsS1LmMFFJOna+7IGS1QmdQ1
	 lvzbY9IhaLujg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9005BC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364459358.15400.4677476452311309187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359a0d660f40863dff1f3896c5b015967fa8e70931e1a38c971a6c578445d3be
Date: Sun, 27 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753644593
