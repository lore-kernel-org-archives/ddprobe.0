Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E973A3E9F
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774556694; cv=none; b=mcQBR2icTdVFPEnsomDEXnVa9dQ83SC1SwxKVRrBG7aPZwjDp8NXQQkb4naKpWoyD36VKfdrdpjMbysFEMY+irBNXbk8A0J/6nvGhh8VjNNiEQ+EoI+463qRqxPWbcf793KCI+/nF7Iv7u3vaeqsdpriZBT5ImJ5YxSq1BIM+wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774556694; c=relaxed/simple;
	bh=Gh23ZH67G3WRHQaSXBa5uqtsTjN7VZL06Yyg70HkO/A=;
	h=To:Subject:From:Message-Id:Date; b=hLs8nuh6Q7tVIqeeB5+Gf+AAvZ37cgn7deviSegainjPGdfVs1m9GCVJwUosoI70kGo5TwztU4MWhBSG6l9Az9B9C1JycH0EcSOd/BtYW6VU6YH8w1Ga2aRZcQfNrVOdN19iDQEJEHlNljLF1Rlrez0yHMsePF7o/QGDkXvoH8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtxkHn6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtxkHn6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A497DC2BC87
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774556693;
	bh=Gh23ZH67G3WRHQaSXBa5uqtsTjN7VZL06Yyg70HkO/A=;
	h=To:Subject:From:Date:From;
	b=DtxkHn6icpjJt3iTK3cGWzgDH9q98SYZ4nMzq5KHRMMfh4ZokznGFi++x41zKHENQ
	 Sey7H3fTCYyInGUq0Xc4mMdHgp/5WSj4b5RRqZRxbuPzAoUR4TesBxGovcsB9p8phj
	 kM2WWPQfLeKou6vnMTYSx6npABNsYlOWBOp9lx9PDSSRUBqizM4gDW9QhYihPnwkbV
	 FRPc2rT7GwwpwBxT3zaEKZ4vK+h2hxyfIEKjs9oSKbKRKNCcX/j7bL8zVGhnWmfJ0t
	 gI/iDLzogKK3ce18f6VT8DHVkOTn9pm4xSBuoAAzOn0YlUi7I9ntxH6syOy+SrZuvZ
	 lcNousFe0PiXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E9110AB822
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455669359.31396.7833871613416033919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ad37b7a7f11b6fd9a370eacbe1e640ee53b60f3da09e9802a5ebe5602bac151
Date: Thu, 26 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774556693
