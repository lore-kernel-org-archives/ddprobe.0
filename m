Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162D554652
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749439195; cv=none; b=s1L6bmBMlPe07uUblFxs7o1NI9iIgtEpg+B9AilQWlArcM4FHJd9Jof430ezer4uozg9mRR4V+MafqvI80JVssFSrW7V7aED4APnkZasd5dQxnws6XeQusXSKEYnT5EkkewsTcx/juQokQoVRNAFIn9xc8i8KyJmtsRRdTnfA0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749439195; c=relaxed/simple;
	bh=505csdn9I/Xo4OnUVpcDCWAu1kZfSgNQM0Nzsq00zN8=;
	h=To:Subject:From:Message-Id:Date; b=Dhy4pSx4XGltbAJtIJgNwM9w4KFb2TPButnqcuDLz/3GbLSst6f2p+iWy6OcVuM0ASlRa3WuOAkR4UCnD/KiSkJd97Bgjn4uFNK/FgFQhQyrSB9wHjDjDpUW+e5CRmft0q33F/OheuSaS0djUW1fiITVLjzJeninpiMNb3eztKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6vRtAFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6vRtAFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6AAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749439193;
	bh=505csdn9I/Xo4OnUVpcDCWAu1kZfSgNQM0Nzsq00zN8=;
	h=To:Subject:From:Date:From;
	b=M6vRtAFSBkoQZO50O9SlGa4cpZWPZ0abyNzinBRXvgEIZoB8kou3IBERUqZe6O1r3
	 yFQY+Gm/hxWct4B4r1jIgceWrP2JMD/9kwU+w9igoD84qEusf3akumMQz6YqpcNK/q
	 mg81r/pkwKchhfHroz1+VtSRAjI5U0cApXcGuBz+6XirRD4vFLukRvj+DOzCJawt0c
	 1Pul5ZjrpioeVOyoqcKD3kLGHiA5YeENG+4qowXvQ48/guiAJshjX0TtzFfzeL0KY1
	 IsiphgXtwcLZkqxjM3VpYK5n8vYinyjXwl6rKRrRWZP14bFYSqLH6x+yvv0nVUcotw
	 bWUViX6WafNug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F65AC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943919357.21194.7744318100567495999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 429e35fd1104de62788b9f9a3e9bdc20badaa34f1876c19b10d30936bf367a1f
Date: Mon, 09 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749439193
