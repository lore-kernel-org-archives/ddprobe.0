Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3904F199385
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760558394; cv=none; b=NKLO7yURYbIDs4dr4wsfnxnI5+gpPxQqsF1QM6j4hShG6k55G0PAxZA0C/loGTASBWJEWqdLndfQhNvQ7/MbkyJkCQ8XL5JeQryofS486hVzpInVSO91qoBRcuf7xhXOs9iTU9unaI6E8FCvqrdW2Gp6lc7Y9ee4AvXH3Vh97z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760558394; c=relaxed/simple;
	bh=cEEqBnWEcl7w7LG2Mf+uLB4HSIy91w1SjC/6TjbL7Ns=;
	h=To:Subject:From:Message-Id:Date; b=KPjZk7ZdkUvB/z2Suy69PafVMBFLePrwdy2hmEqnDg3O85bcvC8U8bdx0HR2ItWFPHTeMoNOUyRPkPyt2FgZB7IF7kBfKadyxis86U1mGrbhXmCfaM0IhV/Cj+TK8pa6IZwguFEUpauKHuP8js4aUn2PTDd7IeDerDDvugp3WjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoXclSBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoXclSBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B4BC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760558393;
	bh=cEEqBnWEcl7w7LG2Mf+uLB4HSIy91w1SjC/6TjbL7Ns=;
	h=To:Subject:From:Date:From;
	b=EoXclSBdrPBEvhnUuK2a4Nigpu6zKZWELb++DMrhyXZAWyzO65T6RFCM9qJ+3RTtg
	 /ACFeVxe/oUCgdr6pWIeVB1h9T99/CLSV74vePgOE/Ux6ShNiY97VP1OfHmoC2dwJa
	 H39ODXyIGfGi9hfitaMMZzJDW/N/zzhSKqATgXdi8LuNIaZ+OabY3K0BAxYlTr7DqW
	 zvJK+JCkpwNu4x/AjkU6Zw6AxOcYFog0pOemzy1q3aDkhVP4AFgZg/chbllCEbNNuR
	 50C9bE7+Tm87bcYyIPVA3suSdwoU8ZJEakKmRbFzGjH9AvDVDmC2wpR1K3QVwwOcHS
	 F+n0kXiGTd5xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97369CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176055839358.27623.6475884647361658423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 644d501f2004a1fe028233ae4519e1d31b497e1239843edb44229d2ff4b073c9
Date: Wed, 15 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760558393
