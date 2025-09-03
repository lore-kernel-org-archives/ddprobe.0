Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7F02D7DFF
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756881594; cv=none; b=uYjO49Z/21voQRr6mGpN1fXGTsu7T/z7EVu69OMqugU0KW9t5W5thw8x1uSqouEqhk1flqQ+CIfSYr2pIB3h5Hpz1jY2rjjmONwvq9bm9ljoKfqZ2XhzcQMrnQ2tziT24fJpjEThIA9ayQRyksutOv7fI3llak5qoRRt/srCF6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756881594; c=relaxed/simple;
	bh=B3UCujHfcODnE3yChARli7SOu1kc87I1HIlHPbxHIaw=;
	h=To:Subject:From:Message-Id:Date; b=M+wsscwaGh2AZQI+01VXEqgmTpgeoDQzO9FuoTRDgPYDiAWuWMCYdXnp95tki1esCRZlbQrCjiJPFFEHZ/sBc3FLdDgWmIC21sMHKi8o/e2Vxs4HhhVT3Il5w7g9TKHK/NSYXDBmaJ0ThhoGuKgp5qhoAWG29V5ZnLO7Z88E5Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lz+1ENZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lz+1ENZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32AEC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756881593;
	bh=B3UCujHfcODnE3yChARli7SOu1kc87I1HIlHPbxHIaw=;
	h=To:Subject:From:Date:From;
	b=lz+1ENZGuQU5ojFWMyVoCTIakDSWcmelbop47qOieAeiBYnNvsx4hFwJqbCkVTwIK
	 pk5ncs8fISiou1dXz+xsj2YEz1OQwnY/UPjh77J+OaJGtJdqapKc8yNvnynIS3zUJC
	 Z3ivSX8b2yT7uMErLuwFLchd00w+vDvBMMuxEXeqIxGeEeHPF+/8V1nj7ra1wwfx5B
	 37rtKMw3baRlaSAKEs/rfBORW0Bw9ALU85dtM6cbQ0XgFdN2jTOBsL0kOEk5BDaqHI
	 XFKLtaQ8rDIoCb2ORAoetHyK1dJu7yNDL12D/gkPZiI9nfLXbT1Lu83+8Zwr3OjFyp
	 6NR6lNVZY2z6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFEBCA100B
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688159362.31132.12253051799293253185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96504b0fd0bdf355d0085f60c887fade209390c0ac196b0fb123965df86d9d9
Date: Wed, 03 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756881593
