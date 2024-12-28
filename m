Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA9D3D69
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735372554; cv=none; b=Nbsm3npLVevSbFTBDqrNQbW9HGN2ZD3PFAtjpH3EfztOALMANAqCgbqc9A49Y5o5Ynkw3G+LkcIxHy6jjW60yOYuDg+f1Hw5H3tv/itU0VvmUUlB3fbrHrlDWAEkohQvo8KJsjtY2tMpeMGn0sRaPDknXCpbEwRWF1Z+pgghSKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735372554; c=relaxed/simple;
	bh=Rc6ALCeSw4n974xlbWNZzeDtfaIUEIVG+UOBIN5wws4=;
	h=To:Subject:From:Message-Id:Date; b=ugSk0Z9m92dIIEVoWy2QVeQO4sBXBC7Twc+F+gyChQD8QtVire2AzZZu4R04u5zpffgwz7DsXA6GFr5QurBnCOOtrYReODM37dWDW3IIBCnRdnqVTUXOQKcj6+qHVzl3NJONsvvoh8T3crzjMkdkEcPR3fX9ustZL4qcPj9+9qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKWId3zo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKWId3zo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF296C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735372553;
	bh=Rc6ALCeSw4n974xlbWNZzeDtfaIUEIVG+UOBIN5wws4=;
	h=To:Subject:From:Date:From;
	b=HKWId3zoyag4Q1PoHje884LGlGNCPTOEEMsD2i8woaewEyrNOcItxxDt5KFTZKzqE
	 uF7kZXsm0MWFJVl2TkpY2di6P9HrIVhb/hVvBUzV6UbN0fovCb0wSmuh6h55OO4AQK
	 1PNJr7Sdl8pmWuWww9K5B1jQbtMlQ4wb5CYvQ7cAiXbx9MDP1ZUWbIoyrRsbGY6U2Y
	 e4nuFf6v1lyCi48sFqGFDxrZ+PZ621XiIouD1ERPr1J/LxH+a+3DUnuwrv2eVxMs3s
	 JjE19JeeTulIwQ2yuOCNNg6AtlgWRu11NrmWXNFgjBSHcZxp7doNe8TUlIlLF3T7t2
	 XCVNNW5wECUvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971EDE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173537255361.18620.4431092651378375942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd18202101367c0b4ead69e5beb9324b1927e0fd2126b9900c3ca941bbb9d49a
Date: Sat, 28 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735372553
