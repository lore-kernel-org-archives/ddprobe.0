Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB3E25CC57
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747775394; cv=none; b=lC5QuWFvrUSb5mnMIk1bAW9vnzzdQTfsuEMldLjP8doxuis9vfiufJPtZYoErTAZEoRwNQva1KIdZdC70TA5dELpXbgIqGweB+z9Y6ymu8WfddKGzYuCZep59QmWKX3jjcm1XjwDoeYZ9PpJWSaJQGtY+KfFs7ypF7Mm45HgMU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747775394; c=relaxed/simple;
	bh=iGL6bvt3u/KbsGsTPBPH5ObImlzUemjacg8+GWq+BJE=;
	h=To:Subject:From:Message-Id:Date; b=ex1GVrWIA/2DozBEq8qEol5iSys+Re0iDaJJ41Byg/2UTXlGCA7kDXnkiJdBeEzCXmY69IkJ2Pu4mzj2eLxujrnRVQaT955BQK52RW/oeIPLDOSq9bGJgoe1b4kPukefproV3In2e9QH5i1n8NDY+AvaSk1y+WHqtcTGDrXMbTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZST9m36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZST9m36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDDDC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747775393;
	bh=iGL6bvt3u/KbsGsTPBPH5ObImlzUemjacg8+GWq+BJE=;
	h=To:Subject:From:Date:From;
	b=XZST9m36zvW/VRnjlG7HYZr1A/NsCtPPDo0Di8UdNP3mrlk4oMJvqcox+Wc8kKR0/
	 RIwwM9NrsirFp4ZULeboERwPlhbb2/blOkE+vYShE2lMfYhjr+6p8ncj9XsaLy6mHr
	 K1BGxmB2k0sLl+7QwdwiqSvW0PGX6EbGgerN50EPxHBdUpEEfKj19d6TCV2vkUkNYI
	 qPQNFordr+PGmPD+sSA8f7G26Wuep8OiaS6PnnbETD805J2pEoptT1IpNQfT0VE/+H
	 t19VInvxxnBQP2k7HB6ousiWHfN35gwDlkOEUlPLZzO0aqnS/JY5xQLRBJcRRh3iU7
	 DIkOdnqYOMTYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69BC54E71
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174777539357.12584.10242658069794512214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4bd45889672b60ec3c65cf0c51d03681cd0c4cc6d4224ed5c3da19d568ed164
Date: Tue, 20 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747775393
