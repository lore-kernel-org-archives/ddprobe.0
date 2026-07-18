Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76BE515A86D
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784404114; cv=none; b=VoJxnobiVB+JQR1eIsnPJhJKx4DH5anp5pD/ljJXJ9PoROC3/IKK08ySGV2JYHwE3873lb9v4VIwkEvJ9QIcW+lxD9jXUyCtKpMQ1dOp5sd6DPAYl2bNdJNNVt1vV/UsSL1tmztLutwWtOlvc1eKHS9cpuMggc0/rVlJi/QOCKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784404114; c=relaxed/simple;
	bh=5Eku8t90aXf0REzJ++9Kj+2HXNkRss14Q1buBEihoDc=;
	h=To:Subject:From:Message-Id:Date; b=QCs5QbMnLrR5ejxU19LS2r55sNdAe+NpzjWCqMYbFBG+9idFk7iKQC6C4rMeTV0JH4eOh8yc3S3BTgHEpUmuGMbBjJqN7Zng0qk4riA02BIRGxg0JEWK3FYTL4JPUHdIiIt++WbPfioGrqyciMb5IhPhCM+QoyhP/mVpp6puw7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZER1+Jv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZER1+Jv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47C6C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784404113;
	bh=5Eku8t90aXf0REzJ++9Kj+2HXNkRss14Q1buBEihoDc=;
	h=To:Subject:From:Date:From;
	b=XZER1+JvSCwJH2lvINZ8QhAhLZ/SkUreQ/cRmjNtKtXt2I2QWwvf2CD1oNsUIb/iU
	 KPde6AIIRpDtRpTsbzU2IRL+nQT8io3bTTJashvr7X3ylfiOJWyrOWXPfJmZNUjhz0
	 6oJa8va8AQXPRQ1e3qwyomCfhU4cb1N8xsB7RTMwhhbwu0po20mUCKnORV9vkgZRff
	 RwLjsz2cobUeWAGh95QuTljiXSwY268Nrbi2fgRPES6i8dxb+fxOXMcUMhpGQw8tb/
	 AF4fi3p89PmCO+Ix10nbeWxkWXUylirnx12z+tga5BprGEFV7xsszaYDsqrb6ZScP+
	 xciaEhejkIA2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17E6C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178440411370.2599.5115949626146837253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c8186334462d69158ae3f2cf578dcf1ba5eeee2359909e867397e7ecce07e22
Date: Sat, 18 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784404113
