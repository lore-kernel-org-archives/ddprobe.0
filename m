Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F14341C62
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720908623; cv=none; b=klE5+K7BSjQhEWI3U5+4TbR8n2mk2UpICwbLrqu1txy8cFearRsNRGd0uNuCOk51Eomd5J5IakIC8FFUAhbOrbMQAs9NdznEC9ikFYbV9YGBDim+gQMp4NB0kiW9D4UP0VGYPkkkoHHc5PTtH1T9nwboSCpW/lnhXsnnmYgup7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720908623; c=relaxed/simple;
	bh=mpfrrhZGwmr8eQySszKuwcgUt7DVqUHVtGYG/fPjEcA=;
	h=To:Subject:From:Message-Id:Date; b=MkbpIduHc1LSgJo1b5ihW9tcjaNRFcvMf8juHN8UZkuw4/uTqmoBZZAXawMTMwcqbayYkW2SbCAuqUwn9dR2h4s77eVvhpuP1fnBpCSXlwTsT76efWUOXtcf7ksCF+jheaG3QwCFW853buMBY6p/Rl5ExAn7EbK9DNIJkW4WqLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llECC/Pd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llECC/Pd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC600C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720908622;
	bh=mpfrrhZGwmr8eQySszKuwcgUt7DVqUHVtGYG/fPjEcA=;
	h=To:Subject:From:Date:From;
	b=llECC/Pd/8+Mc7Zi27c8OyqcxU2qu6EKZZVJ8HUdDbCSVj8ffV4Gnajr5iqFs9rl+
	 UoqXu2BVRp4nuqCDA0+uptduQOhDQ7vdT53njNiAD1Mo0bAZsOoBG8oXRZQKkMa1Br
	 ECc4h+p34lIsfru3iC901KmxePBjyR9/aodfjum3YkG8a93f30f7QZCWL0l2v2tavm
	 RCviCjPFs62SCt1Yqrsy8VZFKBXsclFTCOmP9Due/KAiuxNE447G1muaFob0FMi/pU
	 r3ZEc/F5w3wkv7jdMVocsWfJxdWQ0/cDFTwCZ7zluFlkK3ME+8CU7r7oLIDlKHHFdP
	 6kKOGBvMcEkgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA6BBC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090862279.1738.13875466245365226098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed249aaf876a056dff47f4a985e7357905fa4bddccc7758ef8c473a8c05eda6
Date: Sat, 13 Jul 2024 22:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720908622
