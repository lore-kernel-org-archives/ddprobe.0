Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6942E9ED8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768355034; cv=none; b=S+cIC5p3YhDfGarQ3Kgxqs3UEdLZTIfh2AY50poYCJKptFyRp15ZDQA32UOhGwBZQ33I4eS7IYdZj/p0zYlIMyVA29lwSStjyQqn+vjQT9ZAizMJpG3cP035e35C5AyKdTEfZ+OWSaOT3uYQHzjIcMaDeimd9BRHFPj/J0bWUic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768355034; c=relaxed/simple;
	bh=swL/72sLEd/IbNzl70EzWBGAQyadx6kGG+/4iA6aUTg=;
	h=To:Subject:From:Message-Id:Date; b=L8rejF8j6AmqF2HINxhIc14p25Z8stEUHzPm8vHAq2r1GnlG72pSMkaZrTWPCiPyvdCzxnQeURZbWSZbkKGBa68QBsjte4Jx4QnWymQZGgu20poIPpj2ibGb/sTAz9G/f3UMGcA/zguMyF6bG2ISMmQUYwSIGFAenBHc7cy+c3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGkQOtCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGkQOtCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E73C116C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768355033;
	bh=swL/72sLEd/IbNzl70EzWBGAQyadx6kGG+/4iA6aUTg=;
	h=To:Subject:From:Date:From;
	b=YGkQOtCR4mcx5nxk0wlOVBkOGA30ZNgDXm2ClvMrjsf8vOt5U9yUuWAM9rrV0eBb+
	 0l2Uig2x+2OdgNOEbXhtHLjXW+5RL1S8Tf1Mbi0IX86V7j6jIVm38hg65MjBNpkkX1
	 C8tnhkym2gW2GwI1vlCl76msyrkKpMQcW85z+jrhLEdvixLZ5x/AkFoUsOkYdxgQF0
	 x/OW92t4tg/ePiuUTAx1JlwzaMfV1W2Cuo99uVGXepEaSyGgB0JBUELuqIq4OZyx+C
	 U3o8dLMn3yA2KrLPLU02YYzaeCEvFCdnoxrD5eEMhbQey+aFJ3KkBsbuMBOlFRTV84
	 Z3UY3VeK7TXCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952C2D30CDB
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835503359.13111.14146732022108580221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: addc798a049ac66959539743c2eb4dec9a83bb066fd92de557a94bd6f4548b8c
Date: Wed, 14 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768355033
