Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139DE15B153
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722872154; cv=none; b=gE6epBfw3QJkP0zKtBcA/j0NIz6Ysbb2CDU5Jw5uuOYvRGiCQHJ7cd2z0YAsYBt5+x97u+c9fqSv+25o2BkiVMj+8LY1FvUdEjZEQWzPM653kIRqRf6LD1I+sRRGoFGqbW0rcux0dByBFxeo8kLZ6D94tZ4jZTtI/SfuPjjZbwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722872154; c=relaxed/simple;
	bh=ZI8u6fiv+bqP5MZaiHBkFUE2DPNsX+VUp1NWd2G7t0k=;
	h=To:Subject:From:Message-Id:Date; b=lqkmCaZSTFs0d0lGcKp7Md4DYz3sgeQU33BLnZggC0H90Ql78xn9TfJg64o842qFdVjlXLua0A0PcfwV35/VAVL7PcN1w2koKITziMyN2PaloVybthydIn4JKghd7KW4XvrA6oR2nnmZMMmkizIHvQGA3kzYKY6Sb+yxdaIp34E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCdMJqbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCdMJqbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A1EC32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722872153;
	bh=ZI8u6fiv+bqP5MZaiHBkFUE2DPNsX+VUp1NWd2G7t0k=;
	h=To:Subject:From:Date:From;
	b=rCdMJqbUNLuE4XP/Q+yuUVwpE6PhNYa10SeAkU7YYPO777JpVdrfR5t32hVVz7gmv
	 wFI9BWHhHnq7MfWvKT7nZ8EBfj9S15q6duY3njBDXJ735um+j1rXgZ0QOno3b9zrDI
	 ewoH/4aHElAMJWQJTcQaVMsh/wMSBNY72xZuAgKN93vgcTmtfsRsSIamuk69ax295/
	 IE1BCHAtPr9oM78qjMWtRw03fQHOL31MSAkB6bOX+prCoYTO2JNZYqWwbshw6x2v2Z
	 Y1iJfl4mM7AUzl8iIeauuvqYy3+l4TfnTO6Um3rfM7dTQYDEWdXsRW+rOzh0wEn4VC
	 SdIP1vDN4nuUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96111C3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172287215360.870.14375044989351359353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4851b09d9ef46fdc52968e2a5709377e957ff869f9fc217ca70afdf16c5090ce
Date: Mon, 05 Aug 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722872153
