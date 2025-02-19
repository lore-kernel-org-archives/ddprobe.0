Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4044525743D
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740000534; cv=none; b=mhQSIvKOwVfVfo6WHkVwycicEliaM5p6a9lFHuUGc/p8oMUTvSWoz86ANT2avhrIV1TMD3oZeWG+W/j4IL0intrVbrGetjJVEllTxLs1bB+NsECYuAR4TurdIw/E5edfEbdCfZdAYELaVPfjq1IbaBSKgGk1RdwwszFxX74CnOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740000534; c=relaxed/simple;
	bh=w/kG2slny3srMpEb21FQodWPkkSVSevovLYbHqRJnv0=;
	h=To:Subject:From:Message-Id:Date; b=O2U7i7i/4VXv/yq0Pd6yupzLzLY10HJizn2QMAsAjn+T2yTtJlPkvscRAcGxa3UnRgZy59ZTKapOHFxAuPdHHOxn3NrJPK0dSjtO4jUXui2dwtoh+wHBNQFuPsD52o7PH/vGbQ5zVze35cVdlKSBZxmA2zDvkhdmiwiLZ2AZKtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uz2WaWqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uz2WaWqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B5DC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740000533;
	bh=w/kG2slny3srMpEb21FQodWPkkSVSevovLYbHqRJnv0=;
	h=To:Subject:From:Date:From;
	b=uz2WaWqNAuaow/5Z5RZUltBYSDXN8kGEDAVGBsVP7d3fP5NYcBxHAPb+wxNGJr6+e
	 rB6PFV90bYlF2tdwjskOc8SyOI7VnVuTNnanrSkgxHtSwL0po5xeC9jR4ayM3PpgQQ
	 Qu2iuZRgUbwHcGt8Gv3RPAvoQlO/ih3Nv/GWFav1rTiP81ULu981HgMSEZkLzT/dp+
	 XS7i+2Gp/3756FVk4Gh5AbrMYfpnii9/CDnIfnFQi6NehaFOGiIY5pR6Zu6iPWa5dZ
	 7p3S6gFxowBEGYx/YLDIcYz1/PrTJDcqh6qUPuoAv1AhjuvgeyYF2mbuD/POc4OO7y
	 Qwqhr1Vgts1FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9665EC021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 21:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174000053360.8654.13162385210568374766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 226ab1a4625a622f13d80ca882664670679c009769e222f0e6ea8170ad2afb5a
Date: Wed, 19 Feb 2025 21:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740000533
