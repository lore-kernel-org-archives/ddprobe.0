Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200DB214A79
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761359994; cv=none; b=GVBcTX0KtX0nGDK37h7+/oLzZT+8MIxxZoGx127u8tjbT6c06rI0g2IaGeUo8yW9I2O72EXHe56B8V2+hvJ+TNgd9Qe83wGEfo+EyWrNT94Lay2dsYq0gGAIA3yUDTrXWBI99ZBFHut3U9XdPG1SsQAjb0kaTRW551KVH65UC30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761359994; c=relaxed/simple;
	bh=ow29Y45PUytljFsYWr1xSZdnuVtTzJxSik323KyEW90=;
	h=To:Subject:From:Message-Id:Date; b=VgsBFd2qrGF6cFU12tNMLgHI0aRNc5j+X3dgTPOQmGETMJJ/gfbfSRsydudp4dQwyJp7Sqi2m/yfo2JySv2T+eOyV1UMJc8ol7HBu3dZC7ap4mjEhkgz1Lku6yTA7qfAHriFWK+WrMT8ibq+DY7WBqqNjFfYwe5UYS1rQBMNZgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9KJKbyT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9KJKbyT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8916C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761359993;
	bh=ow29Y45PUytljFsYWr1xSZdnuVtTzJxSik323KyEW90=;
	h=To:Subject:From:Date:From;
	b=i9KJKbyTTLjeWrXOGsLifcOsskMGGq9YdLC6MwtjDmceks9qthv5Gok6mpy0aDFaA
	 qDepCogvd9Addl8Te0LAxim61ZrEShKij4UQ//9OCXspNfz7lAPQNaMgQ1brQTM6yi
	 N7AUWW455kDjmbpLqMjMQ8ai3uYJ9y54QD62kxEgd/HNEV0z9PWSB2PidbPqJvAWz9
	 VC5+uI0+XjQ2z1qIlehSvQb4SeNApIMH6qo8BlnRai4aOAXD4rQt3O71eHgN+OUtwV
	 O3Kz2kY+dq+4w/khoX8aAR0cCWr7CIShEClH5KXh7fCUENmS9CGGqQ25SM+8U24yyc
	 Evswb4LnmR03g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EADCCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135999358.5004.6870391539380370096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beba67bad84b63e72efff24105a03d1333785c0837af2661ab69fe0d37fae824
Date: Sat, 25 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761359993
