Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4CB346AED
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776509254; cv=none; b=MKmD6LL/BE+SxS/aIfV4iTNCO5E6m3VgsU+uAL84og8vpyAmRj/DhCpACBl0qExQWXFzak43ijvlapz0V8yOT+VNwwthfvBrEUlLbv4kIO+h0DvCBeby/I1/Yokt/sR13UBHjyfSnQXGPTrZV93tCOhWC2tfIsNvEAx6+Rte9MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776509254; c=relaxed/simple;
	bh=m6Rc3kaVvmYr1+UXK5W4VF1zxautc4t3+KY2pu2/9UU=;
	h=To:Subject:From:Message-Id:Date; b=cHEbWva2bL9hm0xPCFNg1mxBNuyzTKIkxOAQA4xN7GnEHdCLzkKEgWtu88wsSnF/27TLAZkTJFEee4cajWAbPHCMsGsSuuXKuZtT1/Xz8F92HDlE7/oy1mUVvNcvWxi4u/BfTyfT3axSMTOeJG9RcX+QNpc72aSOeMlrdcr6Pkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkmS6tr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkmS6tr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFECEC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776509253;
	bh=m6Rc3kaVvmYr1+UXK5W4VF1zxautc4t3+KY2pu2/9UU=;
	h=To:Subject:From:Date:From;
	b=kkmS6tr5101978MXV3lQCDjrs/HGlEPvMNSLxov4yzGtxnYnaxW6e+FYL5DHFg5Li
	 dybzuS1xVwZOYUO7gM+TK8lwuGoOO/pfNB/eqzcxfZ8XGEfXui+Xfzcaq/yLfM3ZSP
	 XRy9LWwIzoi0kFlROoQ5uw+ylDFzaMIy++aSOmRN+Ny3kEElItmzBXyt2zCivjKIcT
	 RF0Gt6NMmRf7aktbPQ52Ey4+nYaBMgLcQgkyW/vAiasEpOZvJ2e8xW3dac7T3t51MH
	 lSrkLKcPTZtabHsHW8JKJ7WQnoI6XKPDFAEEuCK/HAlMyfSz2SKRHBY0LBMdKMcCvu
	 ImszpuY36VqYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5A0F99C7C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650925368.26486.17684262178395719311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae03e0c70ee22d4993a36608418e4fcb3d5c86d123ceba33a707bc3d7a29f28
Date: Sat, 18 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776509253
