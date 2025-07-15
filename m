Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD3517BA1
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752623994; cv=none; b=TsLdzODAIOuHLbcQ/MsZP0YEVxm1heqZuda2SWuFNGPNisQVE0aVKwgYJquTwRFUM6m11DOX6O5HHn3fpR/saDhjOJHDwk1mxB8VVVrbMpEcJSH1U7OOREe67U/hpZS1VGCzul5Oztw+Rr3L/ST1uoeTE5V4iqqk7yHwaU8a4M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752623994; c=relaxed/simple;
	bh=ePTd0uNQh8Urea75jfcO3OyMi+A8Puyf1VCmgRafyfI=;
	h=To:Subject:From:Message-Id:Date; b=orMb1ghP5biM0EbUf+xkQAnKh5s+XFQE4LrRkXT/tsHACnbiiiUg5LwyCUYgkmIWwmB+Uozilna6SxcNPwklD9OBEpeWE4iKtfGuiZo33LcFFBgYi+OgWu4IMMSeXfAuksJrl5/SO+bdoMC9VEke8DbNKHPw/bvvQLr3Kfl8oS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXk4ndfI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXk4ndfI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32B3C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752623993;
	bh=ePTd0uNQh8Urea75jfcO3OyMi+A8Puyf1VCmgRafyfI=;
	h=To:Subject:From:Date:From;
	b=VXk4ndfIYX+DJ81XtSWg9xX3YQiisD0Qu+xXnW4Q1LUIehtsihIzmKnzRa24tRFOy
	 jZKIPQ8hPVWRi0Tiu+HzkjXFWGxe9llRjBUit908NdYLjIZ4N1git8cuPTMQ32PJsm
	 IjoOSR7IT+ZeC21qI9Y0jgL1TrTL5ayfh+z4e4P0OyeWiQeXUDy+1R3UtqNvKRT4dp
	 13xCbyBrU6V/3zUoutyuF27I7KSkWQlJCVMKT1RnDMbf/fp+yOC/n9leehy+6J6xfy
	 JWrzP1lb4Wx+CFHGNJalSSERVBoWcCZgVGr6Pt+bkrdwgkLV2cEES122NZAdlt/4Mn
	 siV6P1YAUZK6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF6C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262399357.3074.16876594733734586743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed562377ddfed284d17621eb1c0775dc092e6d4ed9846b07a49a1ef36abcbf9b
Date: Tue, 15 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752623993
