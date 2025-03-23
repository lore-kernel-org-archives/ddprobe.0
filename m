Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C875F9C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742701194; cv=none; b=e9cr9n8LswmvWFZqPWb4ki/PrLl2gBmH8s2G1xYtMx8Rvk44/OTlZsFdl4Be+3oJEOUF+fG/1T3/VNpWwRCa7d7wg8IH6MXz8yS8T9YYeEYVj3z3MmWhDAJMfm6I6dPix0fHELCpcxvVRL02fZaiTm6raMrCiI1/z1q12GsXt3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742701194; c=relaxed/simple;
	bh=7BJlGIeo8etGvMC8T9Th9L+2VlTdzRsveYuOt9e1wbk=;
	h=To:Subject:From:Message-Id:Date; b=qMhaofzirCzK9dmC1b2nn0eeeegFKPoLWVk2ka8j7AjWWfEd6zPesolhkZK4Tz/EQjvv60BkgbPL3BXKKdVI4RCXWplz5mJjHkoEPZFr4EP3pPcwOKa/T4n4itLJY1l1wsCt0+O7ny+lF9PmSv25mq6zxAnQrrGNumtzWWk4Hi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RO3q+JXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RO3q+JXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B3AC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742701193;
	bh=7BJlGIeo8etGvMC8T9Th9L+2VlTdzRsveYuOt9e1wbk=;
	h=To:Subject:From:Date:From;
	b=RO3q+JXWxljE8K8HK5Ukjdg+Ve6DgCPMXnJzkwnButlZarWupdtNkHDAyEOtRmnKD
	 GcMmQT4IWJwhufm/ejVolcBzYqcRuaIpkH8b2cL0NJHbgPIs1BqL7cikAdCFDWZkAK
	 P8Kb0i1liJnV9D5xHKAd2j5JJD2czUBWyk3d8gcXT46GHOvA6G+Bhksel9CVvDhus5
	 CmcFLmlVYzru46HNUsxR0Fzz4u/aevdB7E+9h5Ohew20equQ9KJDwx+tNQOGtt/7cf
	 wkgYEu7roeQwQfKoKu8gCJYHWFhN0Vf4v5J+glYzLLG6BL0nWDWHCEnswr+dkdTC7Q
	 1oxlQ0eMqh1MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A350DC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174270119362.28480.8834336982914025494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eafd7e82df0505b9d5a0c4f128b139029bad00ccad770a028cf842f9b627b4b
Date: Sun, 23 Mar 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742701193
