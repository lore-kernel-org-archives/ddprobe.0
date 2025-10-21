Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B6F632
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761008994; cv=none; b=iH7P/Z436m1nKZ4IR5B1GY5fhkMMVvJgvbwXtCsl6UbWLw+JhbN0yVi46LlIwE8F37NbgelSQCEkwhJAkO4XCM07K71beN95nUiJA1lI3IDGtujSvgxZWOIsE+dpkxgKgcaTgDj4XrjsPo+0lbzb7+0ULOgqmlFGRdfATIDV5hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761008994; c=relaxed/simple;
	bh=OJbXhd2cXt4bTHZPZuvQydt761fQip86Ns5m9L0MQUk=;
	h=To:Subject:From:Message-Id:Date; b=t5XERmVZqHbYwKW6Fix5xQb5VlUXdt0+ewNaqdeyKXr/NyKPRq9JMPud50IPh3NDKqDByiW8sCbnP9UOCsfnL8ql1BZqpu8025sDyUg3fT8TQ9KzLqubhR80Q0udLdo6CHOUVZOdlAao09OXJNBeiKyj0rswTy/hJ5arPAw5dD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrAyaJqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrAyaJqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB79CC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761008993;
	bh=OJbXhd2cXt4bTHZPZuvQydt761fQip86Ns5m9L0MQUk=;
	h=To:Subject:From:Date:From;
	b=UrAyaJqevgPJlrAYxg4lAFOX3qwKXjHywNsWeku/kOq1Xazwy75Y9M+glOwQJ076D
	 sFSowd3FL2rbcCdtNE1QJMsXY5eYSWqk0NaKaXk0pPeAi7YGWW0k8HF2OollYZgwCP
	 75eaOMTt/r3Cg0BwhY6yxY9wjy1/DoDgxZsQTjmqi1TJna6g2rqBQiMmC4Nk8/AT8J
	 JP38j6pKGNBcnGlPc9X5TwZ1ZNQeP209lN6GCD+ZPc/8JmaP2j2zHI87cevChAru7C
	 SBQVnoszJuY8/bfgQGjqd+zLIT9Id3bxIz2DXlXgcJQ/eT13if+h+/5mgjRJgyspws
	 oF2mqQAaG7hTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98840CCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176100899361.2300.9527173352864383718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e241a4a17c6f6337ca246a25a7af813e1b731c91929c9a7c9bf1821c2674b2f
Date: Tue, 21 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761008993
