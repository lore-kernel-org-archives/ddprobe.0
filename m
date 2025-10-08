Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B6F217704
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759899594; cv=none; b=f7AFZJSCwT22Pd3XcwZ5ep4fX/i4P4e+lAWvwFN26VI06SQzWxjjZlUhvIkHMSk827H9qt8tC0ofjdcFU9JR+3QIU04fHehus8Np6C7h34790z4GSityRCq7ep7Uu2ZrCnTMF8iJOgZsyZGuYNTERNZlrdYoc78bqL2S9nO0MwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759899594; c=relaxed/simple;
	bh=AOiki8mlT+5HRw/hH4GqkUNeAM8HWAJ42mkyvEaf9lI=;
	h=To:Subject:From:Message-Id:Date; b=fAAPVGklK3c4Mt/U52uZtpT3Y/u64FQmCgEy4XzD/cHFKb473VWAP9iUWe3chtL6SQF7OwQ5FVmDo4qAkKuG69QcJh2yOEdJWxq4+4FAXpECYOgeO5AB9mH4IdYfmYdJgX58V1zwxEBGjcHvWU83v3VyjIKxciToHeS6hfYXSP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUFF1Om4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUFF1Om4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE3FC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759899593;
	bh=AOiki8mlT+5HRw/hH4GqkUNeAM8HWAJ42mkyvEaf9lI=;
	h=To:Subject:From:Date:From;
	b=XUFF1Om4+l1zqz+vP/YT8gNEinLiNaY85+rFS5cy1mi2ByQScuS7DN6O+1ob/w8sO
	 eyWWW69xurea7ZR/8sGnusC3VZaPe2X4MinFO/wQ5/vYnIA2arCeGydENpYut6x8kU
	 EHDetI/9wuFKRNDFlNkgetasCJNTSsug+xZ9J4EgGVjGc3AMNHgK2cuWT22dkzSqjM
	 gRM9sfpBZsLVooxmGywzL4UMZubNgzXCtdvxg5pbc+NPcUQRH6Be3svMUGDPaygZpz
	 6TbXFnUY1CCwK9792fIHmcMXjVCwINshKelI87037JhfdsIWI5NeKLIqtg0YgEO2S7
	 KtO6g50SM7rGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F858CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175989959357.27214.5058067145736706817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f836bfaae984318e2e0439f9e26e5dcab01d2f9a44d03ca9c93a762fccfb15
Date: Wed, 08 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759899593
