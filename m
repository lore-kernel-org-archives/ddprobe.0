Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC472C3768
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768257834; cv=none; b=hyWsER9IaEKZgGoU8iyxOUrzcQiPNrUn10Vm/bv1DaPzRVePCzLUCB3CGyD1HED+O34PSiVKtPDv4pOtWEH+u7spX8v4eOwfd5afpsc0VI9QQM/40PzhigwYkZb2ndQUFY9pd1L60pcBskWvC3pOziPLTkqM0fETxrWxUV2EdgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768257834; c=relaxed/simple;
	bh=GoMGgf0DIj4lPgN6CS88OxmvNvJ8NCm+2uXyLJqIDUw=;
	h=To:Subject:From:Message-Id:Date; b=NZMapPnpAdwJXgEhsU0BlHpFZRKAxTZIg8HP+Gsr6EUGM0oncM/slBxq3QkpXst9wQY4qF1rHbiv7RUmqNDsNwGsrQyuaWHZFgCTWDNNy6q2mv4kun6L0u6U6EMKXUQWU4a4vObWen6FEKrm5av9Q7USNAri57o3dKIqzg9R/as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3bkeehH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3bkeehH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2114C19421
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768257833;
	bh=GoMGgf0DIj4lPgN6CS88OxmvNvJ8NCm+2uXyLJqIDUw=;
	h=To:Subject:From:Date:From;
	b=I3bkeehH3Ez9lmJMAi5R6Jh0BG0YFa4UoIkwUzMk1VySs3cPhP2Dd2XXNsxFWsxCx
	 CcIMiuhwZ0jiCjKhwg04oh17GjWXo4dobi89ovAXrJdb+/dpW0IiQ6PhWr7hBBmcDQ
	 fuezuD8RH0nWSjmXNLE1YwibySKuTzi5eSGXfiXuma7cDv6dObsauTSy34OAcuMTdC
	 RxKvxPox4XksjuvgoCKWELDrAnig3Nw4QlKRDPGnKnKBiR47dlTX0XYvkwPONQUPAo
	 1b+vqk9kgRJpvfZi5fQgxxfolCaAoCtFQb2CjuDAeqvsc/VBgPu1wQwmGJS9qXzHcP
	 ze2UKnDh65SdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D9FCF45D5
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825783358.22216.7830772749824548777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5470f1a98cb7c46377344954838463d30cd28cb3767979cbf84c54cf7bfad7
Date: Mon, 12 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768257833
