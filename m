Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D90C324B10
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771484694; cv=none; b=jGSx2c5Dzm5+faB5SEWDMY3UPdDa1jEOIb1f+I5AEzosIbpob0JpmzMW7ZhL9d1Ft0loUuRMkaiZQxGXpP4rAupxuRDmZi5KhXST0y0UyTRMzfob/l07nacIqLuyExKb59TyceOkZIHJD0DFpvikV9fCCNA4a2uxF7zHkiL8BMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771484694; c=relaxed/simple;
	bh=59iM6soWR+Ef4tM5LD41yRwRP3huN/VPgeZJ6FySDfc=;
	h=To:Subject:From:Message-Id:Date; b=I/e6IgbdQIYMXWDV/LkEevWhG/BPhMkzLBUXeOk24r69wU8Z++TBjrjv0lJOVGewh/ociUBVBNuMIwR9QJI2J1Vk568yFfKb6iNwjPkEycqEyWFTpjhwzRFtmWdsPyHyJYXIn5BehsOhnlRCWxTQXAnmRVkYAvN7h441q/XDdyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMa6lgZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMa6lgZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB25C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771484693;
	bh=59iM6soWR+Ef4tM5LD41yRwRP3huN/VPgeZJ6FySDfc=;
	h=To:Subject:From:Date:From;
	b=KMa6lgZX8SOEbD9i44NcwoEueprS+KgRRfjlwqZe5OdiroUppqOW3b1yLb0X4xQNv
	 WzTdQY3RGElkNBctJbyydb5w6QhfkuRrmsOdEHHU2FhZooYMBMU1oxr2/sXbeQeQTF
	 KH3EeFiaUv93USGxq125gE2G2Mm/74j4b7vr7jiw4ljV0W+lLGRDwhbb+GqJb7B2wS
	 DaEvYMtBmJNeoGxYudm2QZxWdH+vCmMyaA2BneTm3avU15vbdb7upnvgfDuFkl8cL9
	 VTv6g4xXDMYlDi76tWIObprG/J3pGI/Nn6MFBJlRNSwBnlevC8szo+eoyHbTHyt4bq
	 3hIdjo5omRHfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E0FE9A04C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177148469359.16486.16640223891889671863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcd00da322c09523ba9638d95711e87792e72133556ab495497ea048f1101e05
Date: Thu, 19 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771484693
