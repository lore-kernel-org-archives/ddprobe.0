Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A362A923
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747886995; cv=none; b=hFUQuVAc5VYEBheT+yefCOrKX0WvVYaCfVKM6zGH9P/b0a2r8mZ43RMOWbAd4+aL2e1Ad6w4tCkvj3BjCXPu/JUB7XkaJTLgFZ44gqmxjKsPodFXtdgSr4glVt3ijRYZ1gxNObTlMuCn+d4lp4nrtvp+CqvHXqIX8FSfT5Fy/y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747886995; c=relaxed/simple;
	bh=x5UqHWbt7MTxrLdtxciYb4uEnqD5X3MhygyVBIvuoUs=;
	h=To:Subject:From:Message-Id:Date; b=WTnmdV7NDqwPiAo4DSjmmXFq8RZSkYpnTJnc5E9cR3lVmVN9D9xrAHLHlaUUUDL/WAgwXXC1tQSN0THfH0d1iVA2gDWZLBDeMYHBOtg/f1K/TdMbp9rcn2NmuTofjYwNcAYftt7QZgMLCe3cbGDtNzjqvfJOWhtHTUCoHeSgCK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLkPSmPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLkPSmPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79B9C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747886993;
	bh=x5UqHWbt7MTxrLdtxciYb4uEnqD5X3MhygyVBIvuoUs=;
	h=To:Subject:From:Date:From;
	b=tLkPSmPv5usGDwQqCFdX4PjSQTnUjucFeBr3sKRNYXSXXC3Enz6tKlmzCs6EL4hbk
	 bDRkGfsgOh6DdI/0vCwH5u2Hs4zXDLWAVHG0eNnoVM6moACvo+dMAclh6Uzt8aAcl9
	 MZEsMXmZ3VO1UzXG/aQpB+u8sqAG2Lx4h2GUkk/VowY46bSLJcX6qBrc0m8JK8kICG
	 JaAxMoZWsZgHwkW2EJx9Qbc89rgUKGgLd0DWdcsSqnTdd/lNwtFhSjKHLxRJexrMTn
	 5LwS/w/nISqhnuhF/iLXLUIXtlW/UVFZ6VzDWNHpaZKUaGrKcQCkpbEZIirRj6L7a4
	 PZrnCM5ErjHnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92610C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788699357.6920.13254821648217734467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e504d3ce62e359e9239f1abd0446ca625218ab1af7cd0347c6ccf63aa8afbccc
Date: Thu, 22 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747886993
