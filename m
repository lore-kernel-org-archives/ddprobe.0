Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A43C1B6D01
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742992794; cv=none; b=HeZZtyIaqzW+l3Er9iwlJSSRdDD4DV4YAzN10eUPx5MQ8Y9AACyMTNMryQVzzka+fLW7kxF+TnsmK5/C5IJl5Nd3JMxeeZe9F0Ti06p7ojAWFPGz6gvfx8t7fCjBo7YZxNUEj03hkOzM6Dx4ZWCoWyRSCL767Os8EvQdsrnqMhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742992794; c=relaxed/simple;
	bh=7lEvBcTRncYBSDMxe/Ju2d57ktXIzT7dR8oTjMF1U2Q=;
	h=To:Subject:From:Message-Id:Date; b=AApEtnvjAq7nQr+UTwNHDVjHuu0jmMaSP3YtDbdOkcpZfw9zrJAhDCn3h/HKVggTJAUVje5UpCbmVkwvlejgrTAZAp1u/f8SwZjbzfQQ6LculU54nC+u9voRVNyt7SepSPf+wHK/6xnli18IxuLw/UfId+2VbsfczLK0Kfx/LFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kmz6uHeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kmz6uHeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35F6C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742992793;
	bh=7lEvBcTRncYBSDMxe/Ju2d57ktXIzT7dR8oTjMF1U2Q=;
	h=To:Subject:From:Date:From;
	b=Kmz6uHeK/MUb+Y15U0L4axBs21OSGePgG8jtmJ6/Je1OqzIhHeZH67xMzKIqd4NH2
	 naYWheDgK9MyY/2CzfcYtr3ACl2VkJe26FaYNozUD4AmD24HOw4EZ/A/J33iZcjsMq
	 4HFuZ3ID6m63p8fzm2jlTHAJehZcCwb/Xcvf4uIpBtllaE3F16wzzfkL//fv4jWkAD
	 9o0iC+OZv5rSrRuj1eFrYrj8L9KX/Ij5fb+wayH3ltnt5l3b/ugU6cF+p2bP4+AE1g
	 e0iMjMFS20y6sJiy4D940sM9GteBFzjR6ylBAwdIv8yb6ylg6i0pAvz+ztxPUYnLP3
	 tSGXn0ZguwRLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930B7C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174299279359.11004.14700468160025775456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7d8455cc04897c2a736bf47ed4c6320d56fe612c3ace4b93fc2956ebe802a6c
Date: Wed, 26 Mar 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742992793
