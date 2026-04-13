Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3509E3A7583
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776069454; cv=none; b=qlAngUMdtA/s9I3m283Mg7A7Q5X6uxNraur8f9e1RAupkAIRpNS/6LOkmsL2OSLs8kZzbNHRRUnA/UJsoogO+MInw7XKCIq5pDkAJvkdkfZRL46yhwJKTuXT+07TiPSZB3lIZ3WVkys+ZFYP+mt8NWAWlkv/Ef0cspd7kJDmf+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776069454; c=relaxed/simple;
	bh=7KCRmOk1Uep8YOd03QJ2xn9djjNKbjorMwBZ2RgA6qs=;
	h=To:Subject:From:Message-Id:Date; b=E5hBK7MmvWIewmqgfs5IFl+xFuRdI0Usz5VJ9tZ22K3tTpneR6trr5kdhkfss8vJyVbilSnKg76ho73642GE+QZC4IeZ7h1HJ3vQKZUqchcB8m1icf+jl3qe9baVmshZQMhK0dHIe9QTFwPSS33yhZOgSvxcK9sUgdV1PDVhtAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k37gpHHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k37gpHHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9780C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776069453;
	bh=7KCRmOk1Uep8YOd03QJ2xn9djjNKbjorMwBZ2RgA6qs=;
	h=To:Subject:From:Date:From;
	b=k37gpHHN3HAcIn9q+10M+6NA3XwcCXzHUyuU+p2wK/E6AocU0pJMDc5aaHpruyHW0
	 JEM17OHuKboypx7N6NVcYLNv4UD7sMC0i/7HUOO5QFWd3SpzQRv595EbKPVkyMWKSI
	 3WqNFMcjD+qEBgLgeJNOMLRgbaDNvsU3C/cVGC0RLgiERHdJ8B++C+njGAkQB1GWtQ
	 ZaBgTo5allGwDD5Xmm/ENiNcouEPFyCsXQkfUhPKyDE+V0ZW0GvE00vcDGSDaCl7Ti
	 G19BcX8HpDkOvO13BH0Qz1W317MAqLuGgj5hP4lsEkaulQUDEvHfKOr3Gt/CCcskwB
	 ux78d6Jl4s7nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA17CEBFD17
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177606945368.15453.7028411077207037627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c6ec0e82bc432110923a28aa335bee9c726759f15c67938d44bb221d3e4d76
Date: Mon, 13 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776069453
