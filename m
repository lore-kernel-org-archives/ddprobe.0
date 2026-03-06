Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BF1243956
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772760294; cv=none; b=krhFHL0HuuJQi303qhA2ruBf80VjajqzBt832ThSUjHHSabxZPj/iF63gB627ugq0lT/h3895D+ittfmbcLDdXf5DsgGB9MZMJzma1FDp5dA1pbxXlH7nEDXbAG6Qy7UHLomWFX2Uv6zYR8hTfcYqVIrZABrgnV3+OgcXL0THRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772760294; c=relaxed/simple;
	bh=EvrpHutrRGDp2BD885+pLaNB/IdVd7n0wTcrsZ2aK9E=;
	h=To:Subject:From:Message-Id:Date; b=QVKhnnCxqhY3TzBDtIhilim5YLFdNZgS4gcrCJtvpP9QvjiDwHriJXBVryvE9VHuF7+NQflU6GAg0ErtB/KORqhq3rB3ZE94ZPID4osOJjM6Arm+SNYPgG0+swv39hLhts1VKHwU904Q76P5U19EVjFrK/awZHNNrmOYtCo6gZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyu/A/tY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyu/A/tY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00E8C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772760293;
	bh=EvrpHutrRGDp2BD885+pLaNB/IdVd7n0wTcrsZ2aK9E=;
	h=To:Subject:From:Date:From;
	b=lyu/A/tY5ZIavsYzVdF+AkiqTe3vuYq4+2dEczydi/tHsJuH3AREqBeuX2mVSr5QW
	 3lgA33Brdx5lKqHyoV6kLxoL+rmDYUPcoZSZ0vKGqr1QHD+IK0Mu/s8JS6yUN7srij
	 S/48XARPNfxeQ4pF7h1ASz8KY1POBJZxTlaGe5DcXbjY6tEprmAexNF4XHIKnYlr1z
	 1GjM3A5LOnjFsnOEANg4IjN7tef4J7BfxE9Ijbn4Qp0aEeZEboV/3V94GBrmDF4YyY
	 6HzXViOA4BxAKpXaBGLXPm+VcL26+gUdvQ8iUEI0NuIy6CxyoyQEEJgr1VpS/0LKRs
	 +yV5QEJcNDaFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90413F513ED
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276029358.26782.13314444619416374342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45ef2f1d93f5a7f798b0897056bfacd1e777b3c96cf5969938b2d985a85ca87
Date: Fri, 06 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772760293
