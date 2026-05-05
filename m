Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EF8413249
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777979254; cv=none; b=JNSSa2+YqNh56/uWFFfMCxae401GIjyBGPWlPlCX0Fp28PAdKYNOAdv2s7pnE+GMf9pWDxbt9zoHc2+aCY/wV7KzD58mitihpQj2fa4pcPhHfSJ2K7OEz5DQGnYpl+0LX/X2dVJ0vHoJel1uVkFdp0u00FiqnVXGWAgDBEptNck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777979254; c=relaxed/simple;
	bh=PHAjaIIEFAZRu4Icg2LVQtPRo6i6L7nUcZNFBOdDdXk=;
	h=To:Subject:From:Message-Id:Date; b=C2uJ5urKHg4cFYb9hzK0bLv3VJH5RMMPXlPIV9puNwU0XZL+CUql/swCbMg+5WDjsDl953dZdutQ/YGW3P4rlv6vnoApqfUu62KUAHJ+5lyyMBBa9PZGGVqZhw6jHT3ZGD4VQMcJl+SiT2NvfRHXMIH++uFdNl8pPucnHsrgg2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gttb9i3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gttb9i3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD34DC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777979253;
	bh=PHAjaIIEFAZRu4Icg2LVQtPRo6i6L7nUcZNFBOdDdXk=;
	h=To:Subject:From:Date:From;
	b=gttb9i3RpfGW1Jw0w205rPZilYRMJDnuLOH4r4rROvdvwEepbef3lwajZ8kcQ+pjC
	 KtRHdGrnHboiYlvMg1eWpj/UDrS+SjxUsXWKQznB4wfQ5iXSvIhpZKRzzKwSDOfvYk
	 Nz2vUhTKAQ+FwpoPegRTP7rwx7MRqe+cIgjJyQ8NkzfAJJSX6foznNCv9z58MGb52u
	 jwKQAf01eDPGWPORefbtp62rMtGiwF9BKVezudqIH7M1FSkV3PBNbIotOREKkrnOvq
	 1NpGIEqI5sccwg0SGPD7NUECwyyKznCCCFCSBhlSzD4Oac514axxaRcjTVooSs5vfQ
	 7ZzCyvM8sQuyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE84DFF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797925370.16080.6652550714484615694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d4a4a13cabad3d45e208f2e066b6164fb3df8b83230eee42689c627315ecd66
Date: Tue, 05 May 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777979253
