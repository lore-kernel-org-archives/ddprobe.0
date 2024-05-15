Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B22940848
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 06:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715755943; cv=none; b=sLmISmS/54QiLc+MuRMiikoIOOGNOjKJdZJN8+NHiBnQl5yRoUB7xPCHTs4BKFWTqf4RFlAebaNyqBfhdju3bOWbBtCs5KGzSKopbbxRbLBFEhho2U9TZpWFlQgi9En2CiW7NbHcMAqutuzlVoSky39FmCx6PtitvPMfONF9WeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715755943; c=relaxed/simple;
	bh=SzGwbrSiYSunALkQ2bzuQewx+EmX/RWF5YX2DVdQUg0=;
	h=To:Subject:From:Message-Id:Date; b=XQzDXdlRAlKb4Gmg/B7JtO8R+NgIRe8NuCzNRy04eJDKnphIRe+F6IAxlS+Fybf7zdJd/CxRpuSn4+VwZ9tZpJ7lZDxbzyd905DN5aFSAUkPZk84ZZZ6DB7bpfZ0ZD6IEx9yuRXFepSkwASnNkgrlhj0CrlXgtxjhi1HsAqEt3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wf5mV6RN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wf5mV6RN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA53C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 06:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715755942;
	bh=SzGwbrSiYSunALkQ2bzuQewx+EmX/RWF5YX2DVdQUg0=;
	h=To:Subject:From:Date:From;
	b=Wf5mV6RN0Ibs6WoSYhjHY++Dc6bV9EsO2t8bvQd+RuyxZZegf/uNa3bh1BR92K0tu
	 QNpafzL1/UfKVUozXPTpUZKe7BLi9+U3inie+O3qMN+U5pwLMhEMejPy/Me2P5AOT+
	 /FDoJHUVjwTrbxyT//5CttzZDSxT3l/HT/h42BqW0XiL7U8rtm5nrotVLRE2HZ1UOW
	 /fHY8byIt/cs678wdJvboRJG0bS7cpozXA+77TDx882ltDFI5u5DwqcUupoQvDjMCP
	 0aNVkpqXUrDW695yQ+Oi8fpJGuGqq26eSwQSmbJZ2Enc26QoMg4FcfH3DW5/14EDJY
	 3n8Cqyqe3mgIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C782FC25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 06:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171575594280.3088.5879013864070768436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4fbe043d2d689929a50110a1e834ea94876797bf0dfd28f42a4abfd1ae84415
Date: Wed, 15 May 2024 06:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715755942
