Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569F22253FF
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762319394; cv=none; b=ggR+/NE98IH37m/AFDnx7+3ampVdKcrk9zOSeiPIdCcjMT0Z+L98zupCjtmzAjRGIUnWwy3QxsGbBL0gqEwtvT3vVvIC5EJr2haonx3aGFUbAZjIrnLqi4MhzSbe1X0wZDR3c5ERPl/ANNcAD0yphqsZoLpl+8xFxsV737DDImc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762319394; c=relaxed/simple;
	bh=SnNuBUHwIedrgi7ny0+i995U2Sc93Z7+cNk8hWqpG8I=;
	h=To:Subject:From:Message-Id:Date; b=h/iZE5ApKWFX+PPwQuwV/TH12u2Cy8b3wKLS6ooAABZo9JZNY5H09upmyRaxAKkMliXHDxANR15zqdN3g2V7YhqgP9WU4Bsl2XcOrM/fGUYP7+tg9L6JG7yinARMmytiiUfOkJFqv/HRjhxkcxywiRnm0bplBlXbI1Ui8Kl7XW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kM23fcAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kM23fcAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D31C116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762319393;
	bh=SnNuBUHwIedrgi7ny0+i995U2Sc93Z7+cNk8hWqpG8I=;
	h=To:Subject:From:Date:From;
	b=kM23fcAix2PhGJSwqOKCo+cm3KahUC18Nn/3ML5b8vXugaRtNR/WHfIOTlQDnjXDv
	 DdWsqjFEXw5Cz9Tstr//YVzMK+LyKDcmBrl0zXM42VEXQOubgc0X8RNxuFZPMTTX/u
	 NGvt1USydHwyzKt4JmJgz+h11zf55+Sx1vkueYAZ+YrDMIpohJbnmsPT6mFjWlpgp+
	 sLB/E/8yUUq2+3qYjYn2PHoB9aoXuo1csh0a661YmTFRdrJfJg57OMq+zhOC+K2jX5
	 DsBxTcaidqDUneb0spYu8Yd8BMBRyHeIWiKY+fFxKE7J4pddygPPqh/USMX8WFiYaO
	 M1eVbKzHniCgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC1FCCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231939361.17587.4959708954790673095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538a5636b97adf7af1a9b8cd8c5008375873d68ef210034849f6782f2d3155d9
Date: Wed, 05 Nov 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762319393
