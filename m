Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537ED372B2B
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787566834; cv=none; b=TOnB8LXWcyMTZN3q/KhsU9cMUxoAtDwDMFyF9Rg/o+g1PRge4mkKwTQVcWSKH4Qv7hBgi9TzTmoNer2JZn5i8fI3oJrbPjDFzHteiXQT4uArCvo2W6wPXUkh5avhRIgTLizYCH8VgnK36c7dSD+ReO0+xQm3mDDvUylMsNFttIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787566834; c=relaxed/simple;
	bh=jICljRAfJE07pL5goUURY8ioF99RvI8ZzaXRpp5p8Mw=;
	h=To:Subject:From:Message-Id:Date; b=bJ/KlAewPbw0MYUG+pPcULUpo6KbCrfU5zWV/Oi6xZBG7OwNUoHitpnI4BU+DypM+SAaPA2nCFLGAfhUY4e9gN+Pa5CH+cs814Y8SWEDcV3VIjg16SSdga/8MMdPj9+MLic8XygqrtFgUJWN6p/im2gUbC5cf/S1DJSp2h70WQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLikzuOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLikzuOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD8CC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787566833;
	bh=jICljRAfJE07pL5goUURY8ioF99RvI8ZzaXRpp5p8Mw=;
	h=To:Subject:From:Date:From;
	b=bLikzuOVLPbE7JnAbbsZv1UCUj/mfK6ml/+1bPc5AEbejq/PmiXi/etsclu4Sl2qL
	 /wMru90fFCa4gAIOdSrYJYeootIwW4gnNvVGcWprdKcYgDjZmmjY8LYVIT57YeRG47
	 KoGggzwQam3QskS56zUF9EymVmOh2IjTG4N839hGx1BDD8DHpCukkUemv9fB4kMl6d
	 JJIbTxsd+bhxlUln+dG7XvGLXh1MI4p540L/rr55K/oHffJ+MNc1lbww06KM2cQ2yd
	 hE6uufuV8h0YD+H4TPynzIsxDYmlVwTL76Vlqy6qdWj9YC+Pvi2YZ/YJoIaaO88rA+
	 7eKmYUTtn/CWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA7BC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756683368.9355.6183815681524576303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd1cd26fbfa7eb098c591cb180681d2fcaa6d2b4a770b1f4682e88733d0d1bba
Date: Mon, 24 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787566833
