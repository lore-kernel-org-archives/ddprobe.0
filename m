Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60282DDA9
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756008594; cv=none; b=eyfVQSkhBfy9A+EVeseGCNhAAcLlJ15Xrz4JD2KvZhLJjotNoFUMhC6xlkoNdGSeyw5BgaHtLl6WWddDCdug3aqUAZ7vhOzup70GEbFM3/Br4cFcMUJt3GfMCsEoDSEJ3e9YDgesxRGFpoZOnWoECusNq2pDaZqwA2SfKi2OZMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756008594; c=relaxed/simple;
	bh=E6+TOHHWYWOwWDE6PeeucqZYn7pVRI4gWFap3eCkoXM=;
	h=To:Subject:From:Message-Id:Date; b=J6OvJm27eWx7NyUKlAna5rN1rDpPvYgFNzZOxPBf1MBgWBEcDeXOs8j+pZqxzELbR5XM45SRYtbtnLKV84eOmslghub120kt+SvYxYIyiiRLOceLkKibD8XLRvX4X3IzGn1txr5TXPB0V0NMN/PHAlpf4039GqzElUTlWHlJp4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXHwVZfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXHwVZfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1489C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756008593;
	bh=E6+TOHHWYWOwWDE6PeeucqZYn7pVRI4gWFap3eCkoXM=;
	h=To:Subject:From:Date:From;
	b=XXHwVZfY7AHoy1fPXrt4a411hjufAbtgqKstCvStJYKhCRf75fGPmfMhkB68V7bBr
	 9MqNUDE9TyKenIgSOA0k9p30UQ5Oqe+MQuPt+jZbWhbIvvhakztX0ynktKtLt/prLx
	 P4GMo+FoyV6TEwENsBmgKoAZgwPKbhdaJ4rnr5SvBsqgp19GsGygFXsqOARgpw84Mj
	 Bl/pxO1O8DaMgoHZpuZTJutNoLKeiXlG7WeR+vjXR95eE7JeJLcMZz/vM7IOXwvTT9
	 CF5w4J6Y1O3qjqEvNWcW8CWGZTuWpgpgqSlfXxpiGppDdyEQbQrXCqE4SdUnQVjCLD
	 WPM7UzqdRcF5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F663CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600859358.19481.2823733593995539286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86f764a3222acb8153a6ddb308146b61d24b2f9d7ceea7feaad679f4b800b616
Date: Sun, 24 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756008593
