Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C891D436BC8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790065834; cv=none; b=O/2ptjWFgEXsk+NtVSKEB6Kgt0uFo8hDMvmTQ46lipo/+SbzzNdTktdY9e9h+LdTPntml5frRigHR4/SoZTveSSernEKBjwFlz1CrhZauEzpMp4lXQu+uuqIZUDKkwAXkPXQ3LIxG3DKL5UXiBbKwHwNlpV736UH4yD+M5TKUI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790065834; c=relaxed/simple;
	bh=06GA0mcmD0CSx31+cxUxZPI4E9BT27sC75N4gmqqkMM=;
	h=To:Subject:From:Message-Id:Date; b=VTVDEuN4Fx0hq4pyWS7+H5+YwBirdqjeLvXi+hsKGBw6Gr9UvTMnpAba3bo8B5JojrJn9JoTEadvUHPT23S0+ljIukERWJlaqhvociFxIUIm5uvTKYHnrabpGMxZpHZoALWnkngc2IYwL8Z6n5u26VVjJxz9VGEc5fvfa3HVes8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdeB+aOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdeB+aOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E69CAC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790065833;
	bh=06GA0mcmD0CSx31+cxUxZPI4E9BT27sC75N4gmqqkMM=;
	h=To:Subject:From:Date:From;
	b=rdeB+aOywxe4zmXBfEC39v5K3WLe2rp294RCIZsesQy9v+z6IPCt7aj/O6NAo7AXG
	 2YqiSbTWc+V7Cdku5jqrvFH8ZwtRLfwqgVueubX/FLVIbfYodUFUjLT1L23OmPMxDi
	 BGZdm+n0yJiqE3FGnMphkKnG7cKhOhztjaTiLj7xmZM0TcagwPTTeM30NacpPnNIU7
	 D9xHqddh81NTVxVr1Ea99OM3oiMU2BA9f+yKpbyBMtOZTgHOgaZf4ls9mmBTtai1Q6
	 Ms77eh0p9K6QRf+PwoUGQLCFOesDzBnlnR1c9IWFmm6dtE/1oc1yGcRJqW1lau6Byg
	 BJg98//pXWYgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA994C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179006583374.30735.3000236128030831078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6888857e9a8f446798f97824fc98a9017bedd3ab584ac32626c6234cacebaa59
Date: Tue, 22 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790065833
