Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DEF1CF7A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728396354; cv=none; b=prIBcWEF2maFsYpQlSJLdHifQrmyTbHu7eFnbhEuaY4gptUUqTc8Yv+BxiIiSyf422uI2yVdv2PGrQzdSPtweUdNtMmmQj7PrYY/tZBO0qyeDtA1Dc5qobUBmhY7TF3T6wcJEQ3kyY/A5l1a2KsGujq/VOagsXAgjyeJqN+JMZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728396354; c=relaxed/simple;
	bh=IHCMIlylGWmaI5tqmP72/48vrQ0j/Df9TidyeKfXLgc=;
	h=To:Subject:From:Message-Id:Date; b=AGbsh9UZUG8O44VS8rilTft0fJk4OXSeTSuMSaLa0DXmLPceYD9uqyO87g8hHPAhJtmuDnItnzL2y7qmDQCSZZ7o/Ct5VwfNaoz2yDcnz1BduIdvo6p8bCLiyvsl1SXBj+6lLSJgP4y9mOrUEqfC0som20TC75RkMFbjyL6exgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4B+XmLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4B+XmLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CC5C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728396353;
	bh=IHCMIlylGWmaI5tqmP72/48vrQ0j/Df9TidyeKfXLgc=;
	h=To:Subject:From:Date:From;
	b=i4B+XmLkNOlKr9efYpDj7RNc4pnZnWo3PyM5W+ctrwIpa2ytBqzYInAKNW1NYRsuK
	 dtFy8xN3oY8GBpHm4cnEM79waDwR5IJtsqNk450imnGqtxMj5b4ptfCeMaqY90Tazw
	 UOPSt67vsdpcPxfpzRVH7O6a171eeaiEE5W0RtdN84VRiPhE2lHI9fAxxsAUiV9fRG
	 2TZZgXf9G6N16N9CSzaIHJqJtMkWNDgh16KtJvaxHuh4KHzSnb2UV7T+aumdIgaIip
	 dlCaGuou1pU5Yr9f/yFNZCD+FnmX8SBUrDVdIyrG993Y8GL/RxGiH4ezhSDmQyAnjU
	 Je+Kv9M8WQ3bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90937CEF17A
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172839635358.11850.3568836116068592093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a0d8e687ba480aec6bd4c138c263635afa3ae1e766dc50cfbbfc30b6f06cb2
Date: Tue, 08 Oct 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728396353
