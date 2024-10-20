Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F726190486
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729436754; cv=none; b=HMKzxpy78jYZbxrhOcv1Hb2uzfk8bENkBDXBEF41zWmQZwTeAHTc7e4GUWb8xNwuJfgMffpLVJkTb3XKq/JBU+RhebPs15FInBQjumC6TnjIlZTHhrhhHleE7fvhDpjOGkr+57Y58AAmgd1ZilvyZrERbfnpFDolLJ1btzMUa/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729436754; c=relaxed/simple;
	bh=qh8+/OGdRcQ9UiiWQEJOMMTxQFn0zU81o1mNuqBouRI=;
	h=To:Subject:From:Message-Id:Date; b=GViLMdYuwGocX7rTS2QQV4+X9ezIAkpRu4VzWjycrs9Gfk2Voc0zCSyg5XcciIQ9Q8mWFes9ImssKV67G9yT8gwbRXZ2Ck2yg4KjUrKiq1j1/RRymDU1NqrhfDq/1e9XU5eoCCDkZww3B+Zi3dqdUjV62Yi0+d1dqe0Ut9QgoEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReOxHJJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReOxHJJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE6AC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729436753;
	bh=qh8+/OGdRcQ9UiiWQEJOMMTxQFn0zU81o1mNuqBouRI=;
	h=To:Subject:From:Date:From;
	b=ReOxHJJd+U1B6phyZQoFeaDx45VyfnXSK/nh1kLfmx+1ns4zbq81ZHcOnkyxndcp4
	 CHDk7JTO79Q7i7K1jjChzy6hydzvf39Fw5n10ifmzH84PsPuKlbeyCpx4EvgJ2SvRA
	 UmkMjbAt74a2c6Lsao4BdOxhaYKjoerW1BzpNhnZgTzL/Cr/7afM8xoevIRakuj0t/
	 a9tdvSeESl1aldHAiA5Zp8J/V8dh35GFsZGlG0tWBzcccJinlBw+wMPTkcyY/UPAfP
	 uhvAD3j8afmy4QRjvwq1kBm1rY/lKtj/5jrTHgXzJBl7Ml+c8Q+vxVw2PCOOW7e3YL
	 gFoY6J8GjoxcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999A6D3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172943675359.20966.15637185201488055537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a55bf8266fe1ab2a1e29ba9b4d103d9b4bc724d42cc08bd839590ec417f467f
Date: Sun, 20 Oct 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729436753
