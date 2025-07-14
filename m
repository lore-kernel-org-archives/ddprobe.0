Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1DD2609FC
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752510594; cv=none; b=q1o0/70MCDZP7jA9su8w25IJxwPND++qER6+cDTEBiRqPmF/ihyUCUmxXeaid7oQtCadqqP64jFxGrQaXVHgUr18fi0zHJLUgdQ4P2WYg7s5kr6yCvN+9EgSVeoBsQgOIxXhpD1OquZE2/USVmd7L/mCdBn8M8NGMwV6LpzhTjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752510594; c=relaxed/simple;
	bh=NwLjxP3M6/x0wFsiLVJERLIgs4K7fwD5Mp/T9F8+hP4=;
	h=To:Subject:From:Message-Id:Date; b=EcpOc3yEyz6ZCZ9BJHBQwzToZhP0Bc9WkOWus13nHvr8YZwHftRiytdRbGseK4C5kOhtLziB7A9dS36kAN16fNv5cYcTY6s1hYAltw9OBBCY43J1u/K+fRPORvbuwVSeJAMJofAAMdSb+7v/ZZbKFBkis+3zdfcfSyagDpYY7Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNR7KVk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNR7KVk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A295FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752510593;
	bh=NwLjxP3M6/x0wFsiLVJERLIgs4K7fwD5Mp/T9F8+hP4=;
	h=To:Subject:From:Date:From;
	b=RNR7KVk6c+8n/boLM6rSHg0cjWMLA5E+rSkAjxd3FTmcARf0K/9V1wCU+xakUm6EX
	 cuMDwai0Y26IYoVMz/iTzJfCqRzJjay8O4fu7khhaBZw9DXmdo1p8Z2EAIOqh+NopW
	 Eyu3x75QIz/J1n4btGEL1HWWLyywss+ScwAhftYl8tK7ISU0CuS9G8ZtBdeE90zjBR
	 WOKkCpOog01kr5G6DB8xiu1VYNbjvMOX23SQSl6qmJ1aU4J6z66q6Ks1/Udgfxouqq
	 sxldMBReySfEJNKyDlP6XgHGjSb0ECnTESiIANRDjDDWr45vFizfK281t8GgZaze75
	 QVVTJJRikxlFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91964C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175251059358.23085.13119439684890991203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4c52cdbd48f15d5631e80d8e2ae7560a8a772bc084413a34e250e1cf4cb2f7
Date: Mon, 14 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752510593
