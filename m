Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E66B1BC57
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 02:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719283403; cv=none; b=Y63n2dSfltfVXJTbzoX6/K2ZdPs5A466NxoLvtnF5n2lEQ3vOc4FwKgZb9tmQ8T8MC7lf4tBgCMhXgz6wrxUKLeBILNvh0yqTomEjrhdM0nNxQFBpkTZjs6ppXt1m3/lL6GkwkBHNTf2JsMKwopPEOM8v7Ln8LMtkpzqdPtUerU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719283403; c=relaxed/simple;
	bh=cViponPPFxGEJvDi9V8tEDm00nTllBKni/iiizRBtZc=;
	h=To:Subject:From:Message-Id:Date; b=iWDidD9gJDBriF9EKW8sUeFSoxC1xi9kCzBRde1TUgcz5sXOsExT/Aa8fCeaKcGdJTegP2cDWqOC6822XNhxKuvaVaCq36kJA19ier9lNtXUnqzvv+QFILNP00XqUehfkNqqkrksnR+34P7iPwZngRIabWu0Ste+yTJbEqHfCfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVCl2DTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVCl2DTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC83DC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 02:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719283402;
	bh=cViponPPFxGEJvDi9V8tEDm00nTllBKni/iiizRBtZc=;
	h=To:Subject:From:Date:From;
	b=fVCl2DTSej5PfcBqB76BqJfE8kasEUFXEjgT8lSVga0LFP96I1+Rnwk42wmPJKZxH
	 bVc+dh0BUBoeR3PiYqf5TD8TlbTF6dMPcxF1JvqfX2ega0bC2XJ8T7B/3kTBzR6rrJ
	 P/hd2zuYLZz02BNxjs9IkxIj0MaWTCEogUsGcFHnluvqdKE/H7Ze91lDf3Dw4B8cSD
	 mccyz4WDGlvaJnoYnNHd82OMiH2AB0p8QOQnQycns3nfdsgZ6ymZR4/lYNOIYiFTTg
	 02ZjoVmYaMrrPVJ70B7dxxzk+7fM0YEM8EUddOP4mFe3xdpML/AFD8vXBcMgBQhyDt
	 +up1xsiGHQqcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C77B7C2BD09
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 02:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171928340280.28259.12351459969587323818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d7d3c2fc7de001f9ec280ccd579d3937f806ed8c5e42df83ad3cd3b4e8ca71
Date: Tue, 25 Jun 2024 02:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719283402
