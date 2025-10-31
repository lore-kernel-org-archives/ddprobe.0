Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DE427442
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761875394; cv=none; b=d5e5SMV0lmCdEbVcMq6Atyinbo9nGi0GG7d+VYXMG8nXAIzrGu8xz07GwU/1pm2Ppbv9ZCUDsoGOM9UfM6CNqFW/F5+I73DiJvvdUFmGo3/FZkR7G/doz8MiVhQoPBUw1mFbRVUgVT5UT9vrh3ChD1Q7LrFY4oZO3n8MUQQa+bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761875394; c=relaxed/simple;
	bh=MSJSUQ+2BWscfirsk2sUtpT87aE+YCzdTgXidHGObkE=;
	h=To:Subject:From:Message-Id:Date; b=PkEoNLS1U3fg2VDaUKGyfS+tHXdsIU2wl6oxcy7+8hx2fqutzYulMDtqPCiQBa/neRUPccKDi3LaTRygm6xw3G3obsWA5HgOiE6ur9/sbrXv2WR3cq0oZVk3zST3QxnTibRjO+dO+QxEW51R9g2zNioWOTdjTe0DMc+5eqqxc04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDsgg+mT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDsgg+mT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AA36C113D0
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761875393;
	bh=MSJSUQ+2BWscfirsk2sUtpT87aE+YCzdTgXidHGObkE=;
	h=To:Subject:From:Date:From;
	b=uDsgg+mTpitWimj7My9EtpPAGowv9WkpCNHR8IlNQlQDxg6hq78GLaZoOQO73LDYB
	 SaX80T3uhyVGOf2h0V5q8S6LxHJbj05d4Sx7hA5jFYT/IST8uyK97V4lONH0HwhCBH
	 07/BuV75isrOPkas0pjFDG1RxlFb20cPU9QnMjnZoTO+0XFTQBYmbZE2oremELzClv
	 VQ2t4Zcv7rfhQXzcXmDR2eVkGQoOlfE6qQizp0hM93t4xR8ohVUzcN5k54b9ksyLsT
	 TuXyr7P3c1JFrjnV01aMV+/TG+SPvz+keg7HQ4BzmK90H2M0V62kEsJq/cuLqAvD+F
	 15y62v0Vlgvvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F389CCF9F0
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176187539357.5136.4258658629204475390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a431cdf4bf060302e79e1d3c6f3b263a81563742306e1da0b26cb1cd4c6965
Date: Fri, 31 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761875393
