Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C0713DDC2
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719235943; cv=none; b=nxjBeAlxa9NrltR1/IiIFAK+qMUTwNKqyswDsUMmuYzKNQOghChvwlqQIvJXp2HrGwnxxNGlJMPRHvLnDajs95gPQpWnxAqbTKcWMhN06hVSSWZLLVLd9nla8y6LxDsowAffgpoNGN2Vy3NcdItN4IYO9STKoAHh4YoxeNposFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719235943; c=relaxed/simple;
	bh=HtyLoG6wZboXsxsoK5ffI4iwB0DM/YGHanidZdE3Yw4=;
	h=To:Subject:From:Message-Id:Date; b=CBsVzg06Am9FeT4U6vAsqxsNJky4MDW6V/Hjvlnfd5JZ+JBvivXzek/f4/usbvZGlN1n9lgsbQouT4gkS44ODJuoAKBz32FTmzEoYqYR030Psd89KYYm1LYaE0Itrb48mD2ba/h/hj7xBd9pMBS+Kw9TEJfdY956QkbBcRDxgE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3/+hiOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3/+hiOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6A9FC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719235942;
	bh=HtyLoG6wZboXsxsoK5ffI4iwB0DM/YGHanidZdE3Yw4=;
	h=To:Subject:From:Date:From;
	b=E3/+hiOwXD+WGPvDpS45s7N5LXSAHnNSn2JfmtwQVj+2U8j1cfXbBggVh1UvJCqRp
	 T0zfXmhlmcGh3ddMeM28cqTmh2ic7GI3RLAbOP7uDFRmbwsldJcLl+eQMZ3zNHwD8Y
	 fBwdzN/un8N0Pp8B8sEDcuIziZEAV3uZR8NMVekpVsy4VH6LzBTeqegRViObzpznL1
	 J8Ter9AreGYXeId4j9bthlwtys4gJkXXnP7KGYJ0CYrx5qrJgmSbp856/TkQszE7rG
	 hqCYCLRgtqfDVO//4/LzlcB34gpsED3YphU7GrceYnhnrsw4pkFNG9mMlf6c8E+OOK
	 uEYPjxikPtRlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDB7FC2D0D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171923594283.1737.17378739900699833412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86e9e88a1beaeb396d9fc301e557d8ae661b000ed7b41f82cf540728fd7b764
Date: Mon, 24 Jun 2024 13:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719235942
