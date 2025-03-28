Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338431537A7
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743190195; cv=none; b=FNfttZ7dEvaHBrKtfBPzpw2CPk1s0URmiaj/TWiILd0BlVMTubYd7iclGs7QEgNBBDNt6JmcyYEPPHLxYsvmM+KyzhhVvpkTJMRsZhHg+mEfspzhQ7VknILWeLxA1tbevjWOmBSE0zMF3WPD6XuFAFu5mQqCbOAT6RNE9WGAwxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743190195; c=relaxed/simple;
	bh=HXhO19RJvV0TjNGJEe9RnXJ6kTPQBR104ggYUsBkC/4=;
	h=To:Subject:From:Message-Id:Date; b=Atbd5OGAMYNLhv3teScG5/xulxo2yBerF4sBTxaw+g+Z5tcdgMR29fstt0KiVJjl6XYMgHZzHPMOfPsNEX9nRAPQlC2brqJUb9BJgGv0PNWIP1lsPPeacoF6dMpPeiuzKplQkGalkHkN/JL9eG5iSvCUpImdQUIsqFFBg9EgYWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rc56wroo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rc56wroo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD1BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743190193;
	bh=HXhO19RJvV0TjNGJEe9RnXJ6kTPQBR104ggYUsBkC/4=;
	h=To:Subject:From:Date:From;
	b=Rc56wroo019ZDTWd2HdeSJ0RIlOP1VmYTeBzHr/gebzh0ZddldNysEaJgc/BpDWcO
	 3qj0cmhm6Woq19IADzweXolIhxRMd57px0M65wpWFVzZDCprTENKq5YkLMdxqv8DwQ
	 lfvueMGcLh/rgeSBSxBL/YZV2IB7FdrMOmUfzWIK0RYi9lSUrtaA0o9jyNP6tG02+j
	 X+wGE0goxC0zjv59FNcrzZoGyM4MP0W5lAIa9YtFvG6ITc9ZPHhtu6Z7UTNCuLUafR
	 CNOA+SQ2PobH8zLBmV0DPbq8I1jm4bN+w3EO8g18q9I6ZuYVSINyEvVXP7lG+T0KKg
	 VsOnR4eT2sgIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964A3C36010
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319019360.2806.5451027874789242656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30abd2c95b84b2a68f1172355e6ddc1d7b92b55bac583d58925e9edfdb26357
Date: Fri, 28 Mar 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743190193
