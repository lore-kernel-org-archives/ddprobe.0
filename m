Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486611EA80
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724539554; cv=none; b=Czy6+NcWxFJw8iu/Rmbc5yQLdJlMAMH5q9IC7uzpHqz7jjZpH0mY+8JC2XMQZTkGakxcqsAQgUHo6R+A0rVb6THFhdSbsSp9ShT+VIWpglfcmZj8qXFuNSlYywj485otq1GoSsR6rWdJIe7FlinOzzG7TvFEmRfxqZVLh9/3Hck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724539554; c=relaxed/simple;
	bh=cJVqJ5ssGO0n8linmMlJbGmTsExSJJeTEt5WlwiQHVs=;
	h=To:Subject:From:Message-Id:Date; b=jVjgPB3/WtHAcNN7mZpjjaYO2a1fAnfnFw08Su7xdRCZg35yDke/kuH06mvMqDDtPhnhkfg/zZPpOnsMXHqCI/AZMFsxEScSQnCUauAGuvEfPGID7dbMHXmLRIa18K74H9E/+G2PVn49AGiOnMoI1JoSX0Njlq+t792BHsbTtvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qac/MiaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qac/MiaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C696BC4AF0B
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724539553;
	bh=cJVqJ5ssGO0n8linmMlJbGmTsExSJJeTEt5WlwiQHVs=;
	h=To:Subject:From:Date:From;
	b=qac/MiaZSnPF5RK63UZqeSttRHsQs8CuBl97q+D+hA39Y0KUdpZIDQ1nVyL4Ki64J
	 WPI+yWO0FedLrcn+Zm4FpgfAtq1oevAPbLR4zjosR6XEd3vo096ZxxXL3HqHefD8GI
	 HXKfoFytRNVKr38/Xi/sOz7E2wErMV9EtsP0DRsA+jIiRGpIYu/kVMIszRxzrsIYPX
	 JQoD2T3Ydie7JzA+A2xOITdtj11IRhxwE7uUZL4BekvF0JXQAe+6Rh9pp5nAyL8y+6
	 udi+pdic+E0og/UffMpP0eLhasNmWZ9ZdXZpwtpayl98gc2OD72ihe4mHsmWfHhXjF
	 3SiSfNM677bZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A13C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172453955371.26043.2781596787354023236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbd418663baaaba6d4b4c60bb5ddcd8b65beb7f86b2ad04660d2d7430f9d031
Date: Sat, 24 Aug 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724539553
