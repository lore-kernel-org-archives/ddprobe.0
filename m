Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D4A14D444
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725803754; cv=none; b=LfV3qoBnEp/vJFfwb5Lj3zxiKP7N7bdNoz7eQCB084D5B/J0FTfTq0/WCEdDxUZHos+YE/+pqTrYSLco8Atnfg0HXTMgTV1DAkxC5wUav89VE8IIglHiQbj/d1Hx4O2N3wF/NlgJvEUlkhgNuf5vhNJOAPFJQOhKB77x86j83DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725803754; c=relaxed/simple;
	bh=qLMkxrniDTYc9dT/KaegN7TYVaifpmqQZdzN74g/awg=;
	h=To:Subject:From:Message-Id:Date; b=cXkQfDgKdYx+Xr6xdgK+wDjwiQ+/qFtuVey18OSwio6GLMezgNnrd5Kuhw9vttaUeLdpyOZf6LF13Reo5XLzxi6tEpzZ781NgHPY9PQeMaZCjz9PjyyJ7coNM02t0EvsZxoERbOibqsrVEozsztr1OS/nD2cCUfrvpFZY3RmH9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7bZ6stP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7bZ6stP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDB1C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725803753;
	bh=qLMkxrniDTYc9dT/KaegN7TYVaifpmqQZdzN74g/awg=;
	h=To:Subject:From:Date:From;
	b=t7bZ6stP3nYyjF+dvnvVXJ4yo+q7OilUpXcVWeDoXNlEySk85auHPTn2d5zwaw01L
	 Fh53dA+8B0GrJHr/0GlT/n8w3kZfs1LshhgJZJsdm7pDNy/yFsRQpPGiSNqMw/Bo8x
	 MJ1IcCjIOpRReXJnohaTgpy0tjpkY86QHa6Rpp8jbupHLmapkHduxz3eFR4eYm2/Wd
	 x/mlaBDHfLHP2jxLrspjRpifsy+RkuSdOsa/ShmTRATCUDsJMLr8sFrTlfUhDAjcVj
	 nySo9d4E5BwltPfYv1XovdFEzKeahRS1hfweCjQx9Bubkyx1ECz2y8v/ncfnw25PDI
	 A4iqEFf2XNn4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBE6CD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172580375361.2211.2045000597650047355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a329bd41ba021c25d3b9f7300166a86241764ede35ae52206859a43184f4ae7a
Date: Sun, 08 Sep 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725803753
