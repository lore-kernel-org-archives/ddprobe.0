Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2467F2FFDDC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758911394; cv=none; b=aoHzdeqSugPyrJDVTrFxyqVqDNkCEAvy5KarToeaSFGjWV+gDkdct6RjMkH++FzH3nRbj27CPrT62p1WT0SqCiDs61aEG69AC6jEUlwoGSBPU98NBfMUEMTqnSKAT9cOcyTL93ZlEthBldDomYoq3abBHW2d+vsitSGTyuOmjHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758911394; c=relaxed/simple;
	bh=Y/xy3jxzxmR1Fl3s1LOIC2S89RNMTq7xc4M1ZemlMww=;
	h=To:Subject:From:Message-Id:Date; b=Tn7Q1sBEK/Yuownz7vx8T+sxVkpbjisGOYN8sVoCt02tR1Hc5axXGlhcW1cHy6oRI+u71gjgd11HwM3hu/MxDCRs9igZpi9s1A5kJhs/1uLtpUiZNg4wFJpEKcrh2rsIYOHu3QfKWdlOujHvuv6+D1a2B5waDwiM4t063Qrmyqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9TM6DIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9TM6DIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1172C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758911393;
	bh=Y/xy3jxzxmR1Fl3s1LOIC2S89RNMTq7xc4M1ZemlMww=;
	h=To:Subject:From:Date:From;
	b=E9TM6DIzi0efo6M6CBq94A5Ih0efpwk0jHjfhtTW6Cs6itHaR1UyEIFC2tmd1KvXW
	 bE1RDXvn+vB/V0Wf07NiPbh4XslLU1VX+Ja/jRFklVUAWdtUF5h4JMStg8u7XRTBha
	 WVVYZSoOJS2HLXN/csWezmRbm7HjOWGcfW3/juIHX4naoQLpnHQef4P0Zwobd+2ZXf
	 XVaZUIs5t0U56ylQIJm5Jkks2uP7tKi9Nfh7yoVEJdXKTPiRJ/qN+B9kFRwbaXiTDM
	 6g6qeaycHxiBuPgraFkA4JXO0OuapmvtcKf4nJohNidr0k0CtaZvs7EjLA1z7yc5aQ
	 s31O/9zZuQFNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FC2CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891139358.18135.12033501296189608542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561e3de26915d9d8f9282ca341d6dcc0d784791087583012f376ed8f55cd3541
Date: Fri, 26 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758911393
