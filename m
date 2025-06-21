Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14754194A44
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750501194; cv=none; b=NR2Ox+tfTkx8EypL1EQa1+J0fu86VWirG5AsoHDHrHg26itnHzz/mg8bZHTLvekMExgqDxKDWrGFq5Efi2U11znWCG1BpFgZ67F6D26F52bYAj9ySznGlgIMuy4BN8OEmne93iLZvhAkN4LLugxpBKVCmMtIuqZ2Z7GHYjk0qAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750501194; c=relaxed/simple;
	bh=o9OVUeQsaBECDt9yty9uO7hGYkI7B91pdprlVEO+U3Q=;
	h=To:Subject:From:Message-Id:Date; b=BOPevlsxXWV9zg2fLapYjdir1irqFmOIH8b84Qcn5ubSIL/SiHg1Rp/Xza+AyjhAobwPoWnoqZbJPjUGbr1TJCx2WjKP6IIEiMYkqANX08Xg0/i7VA4JF0nhZLMjJuwk7r+xt2a3Xue5Z+wt/UpRfno5DOGwJl8TzYaNgx1/UZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHme+mHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHme+mHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05E3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750501193;
	bh=o9OVUeQsaBECDt9yty9uO7hGYkI7B91pdprlVEO+U3Q=;
	h=To:Subject:From:Date:From;
	b=BHme+mHkWUr7ENxNcge/Njeiqt0d+7y3tXnY6F9XLW+nxe0ReRBdVrR8TNzF6vRuj
	 JvBMIjLRaPYBY/cNXSEkDl9mL3Hu2EVqhnbCJqK7mq0q1OekOcoRu7vx3gSouU+T34
	 jwhs4t27NMwCEP7i3GFZe6it15gKFM7h5xQytzf8GNnHfEGAmCorp1CMD7ZqhpXIDw
	 9n6+3kKhzJyYJb0fJllNB28t0rZAvVlIP/aOMEMm6mdLZzVY/V5IAiPWFe6EG8nA75
	 urpKWdwbm9I7/qtj0WL1FrZxtlnfv0SRiBY9B5dNepITO03JZbLJSIR5jvUmatgBH+
	 XNb+TZCCPHh/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFA5C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175050119357.16318.8867932629182739740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452ba0c40def0b1b53fb177b81a28e1763ac26ff629b6e740911aeb1c6a5cd04
Date: Sat, 21 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750501193
