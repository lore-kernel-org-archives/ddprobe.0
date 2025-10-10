Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D30C20ADD6
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760121594; cv=none; b=bo/wfcpJ+PtMAz2lhLbvQlx39ba9rttKLcZMi9BRIS9ALFStDI20/UEPgYerV3WQdybvmXafityvR73OWa3AkYzxxeAFAP39R7S8gVCDatWSHAvcDBWhE1FThO97XmN4v9vHOn9ZDowpgV9BmTmfIvYcJXSLDyEvia/h687YpRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760121594; c=relaxed/simple;
	bh=GZJcOYXLNgFfVNPiBtwuqUhF7rzY4D07HcqN6O0tqgw=;
	h=To:Subject:From:Message-Id:Date; b=WlcAE0jhLiKdP+5SYRryTbyBKwLoa8LytQoAQDQNEfbeCAs2MIHW7RE7HU7QO83NE2u3dUqc9C3DzzG14URilj0vPA+OPRjcRdnjINv9ZVMiGUgB1cK/kpplFjlASKJDVG4E8AnLsToAxjE5zW2tq1UiiL/LPrWGiw3jhWbPzj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bN1bMSpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bN1bMSpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C51C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760121593;
	bh=GZJcOYXLNgFfVNPiBtwuqUhF7rzY4D07HcqN6O0tqgw=;
	h=To:Subject:From:Date:From;
	b=bN1bMSpO7etlL0kSE2AsQRm7f1PWb9eKRRuuYy0UTlcuJ798XrHTxHs84q5wrDaMY
	 ZcQU3RJbsb90dWWAtLsbyvyWKLfYY+xaQpCjCkF3daVK0wc2mIdRrhfh7Pyl/aMy58
	 vLMIdOjCVX9yRzOMzt54nMj7CepjcfIWjjQmIRezp9vruan/iRaDVBgaL5tuxXkVo9
	 /RgNNFQWISthPUp84vrXEiHRYt3lhiErYe524KI8C7r2Xl9Ci+vFilI1blXfIXWuJF
	 G237pn7/faJivCcCge5tSFDGkGQADfbama90GfzI/WOtYODmskjEBLJOdy5xUiI6YE
	 5z/Em1QHG0dsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95902CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012159358.32336.7730302447433817388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d00ea3abe662856bee61869a12eedcc96c78fe9546e5b61d3a258aade7eea3
Date: Fri, 10 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760121593
