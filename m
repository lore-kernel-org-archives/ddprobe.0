Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243E8391
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733358354; cv=none; b=DxJDYreubQxetJDRZVwvgueIghpu1bQubH5oR97sWGYb1fmBmepy8nJ++kjUbgdfI7JMAIvhzwK4YoH4NwSJ+wxf4CwpUnFgxdkdLunzZPutnYAVQckddmmEoL6BIdehp1OWVVfzwkE9ykQYmxm/6icVWOFFmq7cDgW3bCFtnOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733358354; c=relaxed/simple;
	bh=EPuzQ06ieGNEnqqHh70jsoSVpuOgrDZMWe13ATwReyw=;
	h=To:Subject:From:Message-Id:Date; b=ZyJ09HVDvVjM8/i+ViX8MA3jcczTSPVsv+rM2mcw48s9tvxbBAcPCX626xCv23L7baiFWBoFHjanKclLedhCxh+L6zRlVgvsyZHEyYeQ6vqv2+5NbWp/BewGXda1pIIQocTALKYDqRSMtFO+gSoKpvgDjrOsAFk03wZWrxQ7Avc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6vYVfm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6vYVfm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A773BC4CECD
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733358353;
	bh=EPuzQ06ieGNEnqqHh70jsoSVpuOgrDZMWe13ATwReyw=;
	h=To:Subject:From:Date:From;
	b=d6vYVfm0Inkcbt1EO4GRJSYT9tA/s+XXhMIzymwdb3am5pnSnX1Bk92zO7HJNBk1T
	 r0vAUBnd3OZJ2xTIOVe3VuWNKjycZ3vX26MdIC9EPlAabIuDlLAT0GzveXApFRkI0I
	 e4G2cuW220xbSQV8gU7L4soUKMCY5TfPxezZiG7GSMA1sITB3yjsCWYZvadEG++9Z0
	 Srkbc+sMA7CRH/SowRgRi+1qe2oOfzSskzQMsAkTrM+GI7PO0eizM8nsjjPORPndiP
	 QmBAetkbrnOhU1AoTwLS3r99hE9fZfyUkfGP00n87IEatjYW1kM/bUMTL9ymz5zieX
	 u3vNNGuzuWQoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D6EE7716F
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173335835359.27275.7218596323947328201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f032c49fdd5032f8aa01e18c173be7f339d8cd0245f4c7aef78080df5e29dc
Date: Thu, 05 Dec 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733358353
