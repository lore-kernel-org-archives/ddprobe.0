Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5640636C
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736063754; cv=none; b=UuzY9FsN/laU8ZcA0vit4svgD+Y5vkieLIWstjyTQp7qBRot7SGOo4hAgZIfxAbav1s8bqpIFaRMCIyTJYrlg5G+N/IZjP3LcF43tevq+3KKAxMGpUvkQgjOGNYVj+yTUaE3R5VBbhvqGggl7Nj3ho4u8vO0DXWaO1jvDNq94n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736063754; c=relaxed/simple;
	bh=dpQgKp8mbo/oBmK1H9PVP7KqgM1v2AvddzSEJwL1iMA=;
	h=To:Subject:From:Message-Id:Date; b=BPOeQhoVOI/tjnCF9VTqk3Cr2VP14bJp8sjM5mjQ+i79xUMorR9boSV5CNezplocVpagzLbDnacciosg0WBe58nmr2ALOFEAq0pysPM0QP/V/7r4F00x7BjPSPSVsO4Xl0x9HghYpE3/BmUUWzItefQsdz2nreKQKqH6OMlFVQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuf4wSEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuf4wSEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29ECC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736063753;
	bh=dpQgKp8mbo/oBmK1H9PVP7KqgM1v2AvddzSEJwL1iMA=;
	h=To:Subject:From:Date:From;
	b=iuf4wSELzUIzPUHY99wk32HQ8hKcBeqYiRhHLwzUDRaJI2I/xd2DAJUgbFOJPz3FT
	 XykL5ssOiGOSRKojJBMxDbuEBf+4eWJ8HD14A/AvDCeumCDGx14ECjyEV77ZddS6Dr
	 NxUWY879IbfUewJMsrwbngPD2cKG07TVAbiCOwJwN2Q0kXyP0IxbgEjGsjcJangddV
	 8XoFHeKWsiE9fr3xNJ4pa+mMrA7CHdzNevksv7u64NA88tYVMGXPBIqSjkYXk53753
	 zJJEUHPajXTEgQlN030CrBOUf6xic81vjBSdkT7pRqD6MPlx1aw0uThFzJmHQKYKYH
	 +qOJhrG3+6n2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77C2E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606375365.24118.13395785576811310808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 313fc242fad2ad0b152d3154d99b1532d844092749bff11020cff1986004d88e
Date: Sun, 05 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736063753
