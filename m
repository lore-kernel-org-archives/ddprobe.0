Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAEB22068F
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763982114; cv=none; b=GUtloOdpsi4UBsK1Q0QX157sgf7e6L0R0L3Vv934uzDhCArN3LNn03uzmQLg1WYKJmg31aambbUxRN795uq3quzisV5CvyXsVVPcrGj4ZFQhbJA19rABf0rXjMXBcchkRfcbnrBEW+pVxO6DpHxtq51hvfyL96QP0iGartQ34AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763982114; c=relaxed/simple;
	bh=UuTOIcXPZW1PBaLoZcVzDDX1UNUKfhTRP8RUEUyjWdw=;
	h=To:Subject:From:Message-Id:Date; b=uQgIMhXPdzZ6WLLCyVdYBZuVMZA9jVU/TvNRqtwOUcT9UphOhEXzzkk6b9uPKiR4QRAq2Q/UN9HmpDbD3OejkCw/ppibx49swtPyZhgtHHXlmuIKiic3V7SCwMgjbMV17hHEH6Ayo8k+VRqc1VQsFhtx6zcx8AepisNq+avRBJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YA0+qddd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YA0+qddd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DEFC19421
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763982113;
	bh=UuTOIcXPZW1PBaLoZcVzDDX1UNUKfhTRP8RUEUyjWdw=;
	h=To:Subject:From:Date:From;
	b=YA0+qdddiUeqRu7A6eWyQ3Rx5j71kB1KfIRoESaOpA2SOZI7c+H/dw6mBaqN27+1j
	 t0eM+Px34cqxCgSrmyyYqTRG5TxHfi+mie6unlvZ5yDeVhA7p3bxnLfn5t46FtMUm2
	 F29rIUGDWc99bToJpTCagtKEjNr5JSXwdoiBZzLndcnQulrYjMkJfNXoQl4MZeiTx8
	 +i+tZKYLxhddRPDZRMyODCrRhgEvx35olJz4gIdvQ4vb6HunRlJYDmNDLGPo30I+Zs
	 n4nVPNrKv3IAG9JRgDwsKuz28iD5zGETcCEG19DFLnXz9j8AqBPgi2zRHJHFZ3HqDH
	 a0UeEYrjdl/6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9A3CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398211363.7161.4811670520718986608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c9dc4957f2dc8ea2255c9c95a7028a8041b0dd058ca4e3a999ce09cf15721bc
Date: Mon, 24 Nov 2025 11:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763982113
