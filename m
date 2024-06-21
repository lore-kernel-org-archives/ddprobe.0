Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7261B197
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 03:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718940143; cv=none; b=joVX2BlwlCe/jL6FPiUs3XATLZRphELuDEBFaKWAXidzDV28IIM27/YYhp05Jfam63ygevVk2tdptoMXb0MKJxkmurrXyyPdMjNt2ve1G6UhGxd0Cmw482QmETZMBaWNGu7jEMp80lexy9IaK5DChfDZRt3lf1T+PsJPU9p0G14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718940143; c=relaxed/simple;
	bh=1xaMuOS+/mhlBh7n3UIbS680zR1aoYM0RFqcijurkmg=;
	h=To:Subject:From:Message-Id:Date; b=KniX7T/z7JM+usLkZexxd0bJXXzQJSAk8P0+zaoNEtPVWtOhvmWlQLWcDZmE8NehpWDLUQABfneVBKh8kQD7yb0FGNuc3OFivlLRz9HkJkoedj+OAVt4qERp+A+UesKOWxloS4xztq536feUhMIIIgYaB9DoqzhBU+qeP5jlNN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSZSkXkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSZSkXkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2BD5C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 03:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718940142;
	bh=1xaMuOS+/mhlBh7n3UIbS680zR1aoYM0RFqcijurkmg=;
	h=To:Subject:From:Date:From;
	b=NSZSkXkRVODdJDiAxdekdBiKqtgNjNWQ2R39Zs9th3xmAJTnTvDF3aEn3ytdh1BKV
	 dBVQSQS63fYoctTw7W4A3bOt7kRaFefbhVWX2n0X88u81AyHMtHDq2uOCArnaAVFrn
	 o/0RtVtt7UZYxv6ZQ5raV7ZzzHdKdZ8at3T4rbsI4bjg9X5GKZ44zv9Sgao2G6rB3Y
	 ET/FvvtWXDfAVo4do7HOPO1njiZxgE8HoFlCRxKD1t+XW9PNX2T/W7lJLEso3Io/SO
	 UCAoKv54U99WcI2yc8y748+XhHFHvSPqcQ/Pky/oE4zpouBvoUFuzw4GnJChy2R9rd
	 9W+hiHo5O815A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D3BC2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 03:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171894014278.8302.17036907553018670880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eeb987b2f8265fb62d925e8dd8b2e9e1c4a9cfb8987ec0995fea86c1543f4af
Date: Fri, 21 Jun 2024 03:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718940142
