Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF223AE191
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791975634; cv=none; b=lH7tcC0RB8r8+FQTmQG99gxJUiInPo7IpZskI0E9Y70kQ46EFc74qL8dXkU8QNOQvoi5YYemeNR0w9lB7Ep8Z65dxyjHG/UON5AsIiE+UPt1RpdNq6P5cetpenxrteiTGA8V5Vs+oPLhIeDolMggLGALvxtg1pkICS+OCrEakZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791975634; c=relaxed/simple;
	bh=WDyBRUtNzjzt2ImpJyLvmtM/NBnjtq0MuiiaLwaQ8OA=;
	h=To:Subject:From:Message-Id:Date; b=g22hOzcOfQn7/pxW8kwnXvLy1Cu/bNV5QnZgEGQVT6OFMmKy7cP3J/Z2dwzg10+XE6lk+GuFtRESKfwuipYRdlHepWJI8ymtfCfq7vbLGE4bUaHO71/aOWDB9+NQmI6j+6O4hGvjGnd1B3HQbqf9MjtPAH6oQEhUNnC4+BPc7oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2vVUoZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2vVUoZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9312C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791975633;
	bh=WDyBRUtNzjzt2ImpJyLvmtM/NBnjtq0MuiiaLwaQ8OA=;
	h=To:Subject:From:Date:From;
	b=t2vVUoZ80v2DcTe4i0ALJt/QlmfeA0PBiFIDjQA42Asj/5aDepSsXgs7n6NLJfsuQ
	 8aQlkavFyDMwp7cXk2WrHk3voEHXW5Z3W5LpdlF486G6Xyk2RH2S81Zj4Af6o+n+DH
	 jPBXFjkeHWKiA31ULqHwJoOYyVGUv5XmMz+lUv/KRW/wqdiC4CBnwWjE2G71NfXwRF
	 iMr8PVWZvmLFtdiuQg2SzzY1jGCgfWsQezrdCO6kynnElhztmlVTf9RX2CjvaB6TMr
	 y0D8j83f9EzBBID56FaRuGYDH3WiMEk9fu2RMYcEZC5Iy5zIJZQyIJuuzP6GyuzPO7
	 AFBSNeZeT5kMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7240CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197563373.17601.18034213108626768911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec236f8d2653c01a02d9966e1cb25b78a40c1431e880a20a7881ae02d98cfe3
Date: Wed, 14 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791975633
