Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220D0BE49
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762231794; cv=none; b=gqagsdvvdOFJDVS1qyRwqvZvRzc3QW8MyvMrhFUeg9qu4A5k3ZMd/cy1NuLOaw8pfj3xKzW0SGHWLVIoeWEd/p5vnUNE4MjYYj3s12jN/A/5HsVFyHsrKn4yZZ9rRhbnABxMxthYKjPZ2H/nb8dzIAocqNMLZZCIqSZU52T2umk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762231794; c=relaxed/simple;
	bh=ippE8JRtDNOU85/hVdZX1YMLANG7W/Cvn8DmVKsx02g=;
	h=To:Subject:From:Message-Id:Date; b=l717cxXu7q6inm0xULcJAfcAvthgs/oS3MbaXjYDUH3vlejprEh/ajH396CWXWAZ5xXwnbgkCl7KH1qJP/80UgNWWoXadp1Lw6WcF9m6uqHaXHCXnaYXRzqqmSHxzSQDYC7aGz6IVBzVc/9Cqo/BCbplWEN3YRsdZKkcSTlETlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFnl/sH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFnl/sH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A609AC4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762231793;
	bh=ippE8JRtDNOU85/hVdZX1YMLANG7W/Cvn8DmVKsx02g=;
	h=To:Subject:From:Date:From;
	b=dFnl/sH0PaulWmm0iiMFc54YhAa6RHK2F9HiaOgTfOfhqXb1AViUMAQnScr7K1QBk
	 mBLhKkYdvlS1StLVJbyOaDZEhdx7zkBimkmCK0xeJoTAtawOnHKUKS5DWF+Dk3dRJ4
	 yhhFo3hrKOIVU1dsyXfEwwHcdiNcF8nixHC+AXVvpX9cL340zYZG2dl/Xwg/W7y6g2
	 3lbAD5sVTbSPsxdgyKxPloRE1xxQHU72+rJJ6CD7YuowsiklQoAeRA1akuAn1oMNLI
	 fVQEUDi5POdcVJkV7baU1SSEXcy/eDj9o4sUdJg2NVFXnn6zbY5Tv6lgMGcynwMOgq
	 oTbh9YBz56BZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97646CCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176223179358.17380.2775530730278911394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7997041304b0145394277846ce7243a97ca6bee272829681bbb8c5e15a781c6e
Date: Tue, 04 Nov 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762231793
