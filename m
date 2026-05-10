Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C63D31F99C
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778445634; cv=none; b=Mu0kf053FBYhVYVkL/V+Is3G1c+NVophokIpqwS2WaAphUgHqbzYzxW19wamDH6R+P5FAaOKfaKG6U1IWl2k4jdDMng+xB/CuISYmtQAyqSVivuTdcunpBxI1bsH3/lDxDi5E50dL/N8s9suZ5F4wQtyBo/xXGVEq9VeAE68F5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778445634; c=relaxed/simple;
	bh=4NkKLyqYmGDmknCvoXV6/Vt/1cIeqhpRGXx26ReIAbQ=;
	h=To:Subject:From:Message-Id:Date; b=D29JSPoeIbJKt9qNex4MX/cue+juCDy/0i6wLTmoVtPCesd7O7xqYbjgij4Mh+/xIpEGzyBlPJNV0rCLLSEutp/GbBRruubJk9Phdeb3LJGDN0ElNNuEqxbi+4Nw7N4UfAXzfz/JDJXv4N7/bxAvr7ji/M+WqntWaMVLUOHjpu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8vfwm4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8vfwm4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DEEC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778445633;
	bh=4NkKLyqYmGDmknCvoXV6/Vt/1cIeqhpRGXx26ReIAbQ=;
	h=To:Subject:From:Date:From;
	b=p8vfwm4PSQPQAiGmjl2ZlCHpOQRFOm5wq++mSZdPCREMJqFK5zuICfXwJqtrXroE1
	 FJiIJkQnOa83JSKBcPjt1l4xvfKyLtwgwuHTbEcMl0tjmAVqeyxMP6Z6j5nv1DldB0
	 0p6UJ0jQrz/mAwHZSYd3SIGqRvPNiXwTBJV631CcD17pMcG+7sG7+dDlOeDNjdnlDb
	 gyzThv0k/ekDveS6kxse4Gv89q2DizdCpGUF2ppPZlpMFcs21Geo7//l9kEfAU6ejw
	 PmYeJGfRWeY9LjDWPNX4u/6Sic5qzfMl3qPxwa8NWRHHJoXNYEKKD3cXKsTYSg3QAX
	 NRALXWsnd//lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F60CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844563369.32006.12823529714402987028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17871abdd86dc77c9412408ef77ffde0490b40a5ce91be985aa46267bce82b5c
Date: Sun, 10 May 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778445633
