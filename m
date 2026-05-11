Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CB433EF
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778457634; cv=none; b=b35BDSdvr5u97rVihwcE+UTF1JxlZoOFBSnyfs+mPP5lDMCGSS6FvAVTyrnhaYj2nZ7+EH0kwNxoOm7H0DocBibLTndyZFoR7id7X0PWxUvtBeAKxGH3CKi18+v8+RCb570p7EF8Se2G+5n4Vc8DZUx6hCt651KO6d9gl/JaRp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778457634; c=relaxed/simple;
	bh=WagbuDkYRCMbX5dPMPxrm/fyAs90IiX5huodC9q1izM=;
	h=To:Subject:From:Message-Id:Date; b=BF5JBkZWPxWRptj2fpMjp/dWPtIBnAsWiFFgJQnGbKFnpELJOIlukbGLeXsCg5qH+8c0ndGiGX4BapkWlSlA21OUBkPoIvYjLZzywRMtbuLoKOIadDX/m2+IXpJhX8VVZpoN3ARIC+GW510wvaFICJGZKCV5rKEPr6hfqRDmflE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+rMdmV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+rMdmV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5475C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778457633;
	bh=WagbuDkYRCMbX5dPMPxrm/fyAs90IiX5huodC9q1izM=;
	h=To:Subject:From:Date:From;
	b=J+rMdmV34jDT2hN6qD28myXOuKAe36j/WojTvvSlUVyTEUiQG2hJVVy7Z8ubYIRjr
	 XAl5Fm6Ni7pH9wThLZ3zMX1IQj/7Q/v7n34+ypuZBO/EV54AmHfVBjNjys8q9t7oSY
	 qJVeyMl7DKHTkoq5A3f9wH7nbkAdDjDxUhcQWJYRlB//CGtVNJOOFE+PbT2Gk6V501
	 09HOtJyCggtbAd74FxcfBusZYaWfYBnriKVsGPqti9Q9iIXxnGSehZ0resOXIBAVMk
	 gckuNiHz0ctRVMLGM6N0fkJkzR9iA+1w1pOXFOZbW74iyB5DK6nsGKbzRxnb43MNZ9
	 uWEdxE4eR/CIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAD0CD37B2
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177845763369.14453.10295779643658374782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93efda098e6f10412a0e55965f46f366d68c7231bd5dd3604416bda222907c5
Date: Mon, 11 May 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778457633
