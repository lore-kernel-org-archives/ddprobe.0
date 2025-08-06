Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB19207A22
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754476194; cv=none; b=EK8k3+2co6VFG+XIxcwk8GWYNPBNbP+oMNrrTScxWXjtXrFbFdbDP63630Nsx1sjSMmF5REZM+/q6SJZYTub9CJBu22eTY0HTxRCVgKmR+CNhJEVLopRtlAu0urbWmejRH7dH32/3wW4wwCtkRoqRjmsUMlwn1Frg9YFumi7R/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754476194; c=relaxed/simple;
	bh=xXOmIQYPA3GB6OUglOhWicRGbMDIBirvzi390g4g56o=;
	h=To:Subject:From:Message-Id:Date; b=jruVxhjYdPsD3kVcmO6p37LgHYHFSjTpa2kJHbFg32xdrPhGOAw8f+Bi8lnFGyS8G/jkM3z7m3zGpcJ91s5HZEqIiKgwt/2Dyo/SVkM4EwqJ722nubmh/IGHb93ll8Oeu2/7nxpduxODNjTjc1CohND9NH+icCWrVMsav8MYECA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LN1fBGr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LN1fBGr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0053C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754476193;
	bh=xXOmIQYPA3GB6OUglOhWicRGbMDIBirvzi390g4g56o=;
	h=To:Subject:From:Date:From;
	b=LN1fBGr/u3VZq87t1DlI22Y0vQde/KHt+3ONvfU69URkPtLJfO84mHd+c1s2QG0LV
	 5WPpi5zJM2d3UIVRstwKvS6tMuRf2FEhEocE5aPWJiWgQYaUplvskOXIjJgJRrPXtv
	 jMLRuDpXHQ2D/P8XqeiWK/Ul/xqpuXyGIGalBH+ufN+ZT3/HBryyQ1tFNvldMafEOs
	 uqxu+8+ol2Glgj3jfrC1R6MeZTXfBzqsqm7CN+sav7Vb35F9/lrbFiYvDol3D3UVoH
	 Q9Yn2XOQkcNZqQ+qm9Pl82IcT3i0LvCGwFiYujCAMK51s21qfS3kUwPKPKUmIo8SlR
	 nSa07k0UPY5hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F45CC87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447619357.21987.15801237353989375251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7fcbea8b73a112fb3a1334c92f07d8a1f05afae85bf4d0e1c938af3aa1f16e4
Date: Wed, 06 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754476193
