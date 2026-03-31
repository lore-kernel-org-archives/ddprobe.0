Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC9D3A6F1E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774985694; cv=none; b=Br2Olv/CfNN0cu1bQN/G+pBzou2FOGvWwdj6GwcJGsqo5lfHKDFwwYppi+m2F6FIEoaXqpKm1qOpoluyNKJAf14y2OvltOg1cME41SmWrNcatdrMMeuEpwsBwcOC9whkFH5gyapx34iwxuxkahcKX1GsLYi65E+ZXe//WBBFuWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774985694; c=relaxed/simple;
	bh=sq3gn3cCrNB7aXmzLevZOiyQrn2mrl5Vs73K/RW0NPk=;
	h=To:Subject:From:Message-Id:Date; b=FRg2/K/h4n74oSFHkyGcJXJGuaxhf5NlhaSlSNy+l/Zw4tCr/NXnP7rQwO+YuKSUNPgBfP+A3btQWi6GPlc0rgpgPfEBtkii2P7mZUBsDkZwi6PUMgu5+Du+8vgGvw8jdpfO+g6fHofXaG5TJtoGSccjisiH9w0NqwTIj0mC/fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0WkiLwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0WkiLwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93C1C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774985693;
	bh=sq3gn3cCrNB7aXmzLevZOiyQrn2mrl5Vs73K/RW0NPk=;
	h=To:Subject:From:Date:From;
	b=a0WkiLwmt4PNcg5gK97p7Udfe/1srLnOzsLssjxk8yF4i8NZ/t1s1Yef6wK1Bzc4v
	 IQ87l0L9k/URuN+P9NfwcOoZD9FvIwGWCC3cUr4+olL6Ehv/q7bT7JDw70sOZ/0TZL
	 vKJt6h7eMh6Iq5XWB1udbgDr2/HEIC6wosZK4gGQqO4eCJei7zzJ30yZyfw1glpQT7
	 ac77SyOezDyNd9uM+/o0vA0TEfUPUWCjorYADKooDSe7u1L0PAg/wbI8mKsOZ0hRdi
	 pG86cbVFz2GoitoKRrHG+HujI5Byf5jiq7RyfqTOC74S5zaCOaqdmcZ9KA95gk0tfl
	 Z5/f4lsXbW9PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A6E10F92EE
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498569360.20751.13285425164113149596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937f3aca5dc78b93c92da0f342204d3a50f784cc8f49ab8e57026e1e88c446e4
Date: Tue, 31 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774985693
