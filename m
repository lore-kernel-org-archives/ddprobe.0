Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB011553AA
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750630194; cv=none; b=iwjq28YuInBIBIj0xXOZw2IFK0AaGtdRQP9OD4IQewjBRhs/UMNVAm84+l1VckNu+lwdIlQiMtXOpGGzK2hVR+Qo3r9jWvxKDX41FVHQPCxSXfqKJL9a577p4uMHi5NyhbH21jBV4I8T/MIu3C6inOq86PaetYGD/TtG3FW3Dnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750630194; c=relaxed/simple;
	bh=ENVavyXYbypHcXavgdnoey7jTnxihixHM47Co3eQrwk=;
	h=To:Subject:From:Message-Id:Date; b=D3EjBSYVnpIl8CzpVo7d2nrb458LBBZMNHf8awTFP/uVneykCQ4r2oznXeRfghKUd0AaOTr9l4TF/F8zGtismo7iioGFNR4i1/4OiubwY1MRlhf+f+/EWGwphUt1LNV1qBAWQK2u+F6SbRzsNfn/utZuIqjyZHkuiy7V9Eh5qs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmrlDwvS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmrlDwvS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5232C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750630193;
	bh=ENVavyXYbypHcXavgdnoey7jTnxihixHM47Co3eQrwk=;
	h=To:Subject:From:Date:From;
	b=dmrlDwvSk1b5HTDi62wF2MLhhdb0ru7E5bOTiBsttSkjxyCEJ2MAQcFACkTi8AHjs
	 sqMYuzArqZeKuEf/cUfm9L+DZ9f8ya1BjaWlR0sPa5vdlWxYQIedAoSc4Zo6P6cozA
	 pIublXpLkwndiwwHhySFDzLpTYYZDSC4V+SN15Pg2AIkrq+0OHIUfdBiiw7wLqTWbw
	 wOUYYOSTGxtdlOiQr3J1DTA+6VBn1Jgr/qHmSwFMOPJdpof9TOiNxtNXeTQtMH6TG7
	 d4kthtgbfTy6G920qHG2+I0g9ayWZBFZAOnD8hx7gncKZlsqgMU7YmUp9az77J9kGc
	 1YU/CVDS8CEiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929C6C77B7C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063019357.10361.10075200686505528336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db734f803e602716f405db2c673d91fc6c5c7641fa52295f4a3e1627a46b6353
Date: Sun, 22 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750630193
