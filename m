Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179FD22FF2D
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753914594; cv=none; b=NOUkXtDhL0RuDt//aVyYaV/+8EvRzC2Davp6BiuzFDk2rkrAZj8gBBvebTfaUqQB633Wi0C6aPcOHoKDdkkbNY0FxuKT1Gg5Es+ah6EBTVHEhDx40E+5qkYN7UbFDX9i+pBligm1dnsjeFoaj6RUuXXW/MVXOB7HmhTREXbeB0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753914594; c=relaxed/simple;
	bh=7hBMA5/flWQRHj5dgb94RbLfrffGekQ4GXt+VqVvPzY=;
	h=To:Subject:From:Message-Id:Date; b=dN/jUgcttBjlTY6B0Hr3tFD1U4GGNK3A3V2zqexGihIAeLzwZfrtiGjlh4c130ks3k7stHRozygQG0GFtf9d0IQQb7GxmxH0rkHAdmSGdvC4BeR1xdXt//8z2+BPZzKaGcnf38h120HWab98RJJqSJvkJMf06m080M4eVneIAio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8k7AOXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8k7AOXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F719C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753914593;
	bh=7hBMA5/flWQRHj5dgb94RbLfrffGekQ4GXt+VqVvPzY=;
	h=To:Subject:From:Date:From;
	b=U8k7AOXF1Nl0jf+HteG+HbvHUsQMJKKbdgm2RGRSlvMjjWjaXodHJQgrDaDQK/YYu
	 NILxpMjVWsenRo4OyVU+oFxUwhq3LOnvglnEI9XfL1L/kiWh14b0EtYvDlf/2LP1eR
	 HsPA7ktG/cc3IhFZX474ZLhTgvNUtRxJIJYGARuuwbcdEGBmZ197SfZ78dbaya2N1V
	 Uu1VTKsjDeieNR1H8tfNVr0vdXq+sfDmLOe5PjsGIVgtn4g67g6UadJAHafNfjr9Eq
	 LfxtuNiGN3kSLZEL3egSPsLS8NkQPrLJAESGreq3DeHf3dKs+vBN12ohtYiFCmn1oa
	 /GypBFnCTXmwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D64C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391459357.18507.5759499336971490231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b2422699c775af47106d8e7cecd0b15428d704bf54cdbe5c3c26801785d608
Date: Wed, 30 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753914593
