Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B45B19470
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 02:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715566343; cv=none; b=J59fJU5KCsFyerjapgGWn0qFf5+vB6DVW06tVH1LiM7HDt7Sjfg9UYiOn7E716sw6TEoFw6R81ecsHhmrcc32aldsLeDmZ0y7+Vs2WfdXrijsElmrNRByCIraiAUNBZHFDVPsNda9muEHWXhvwxwaglvP8PxJCLYsBrm5bEucro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715566343; c=relaxed/simple;
	bh=7qMvQ7hWi1LM3Yloz9pwMPnDoLMGTdf4UZNI9XC8PeA=;
	h=To:Subject:From:Message-Id:Date; b=W0O+1YnWY3Fpki8HwGABw2TNkKrpozyXw9xw3G9zMDBHP99SEBZ1+bG3q68mJJz79668ELPmHmV9lygg3WqMnOVrjNZOO4rbS4vagJOS232kxHGz+m0U6xtmTbLN3pyqPxw7f7U3TTVl+ry4cr7crfBIqAEtuSA/0O2c5Me6Pm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6NsGA8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6NsGA8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E820FC116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715566342;
	bh=7qMvQ7hWi1LM3Yloz9pwMPnDoLMGTdf4UZNI9XC8PeA=;
	h=To:Subject:From:Date:From;
	b=X6NsGA8A4myy+IQMZ8K1RD0e4k2XgTewfoz4msH8d+1Q9eIdJ0C4O74TqgVQ9+QqZ
	 QvjCIP0K7GeOnhtcMLFABOKCj7XHhJLUKhesSoqYx63VJWe5iiPhc3NKdm2qiyaAiW
	 xPl8xxAh5PhUB/Ti/gV1yDLk3f4XonVpT+NdcNlyXb2SG8UwZNmwGYL2m0hkcGxBT3
	 CVX/RY0pgRMYVMPLIh/PkprVln+WYe1hAwAXXyNk9T7qqMxZsQGPozG/+g7923O0W6
	 8aOv4N3/CZ3qKLSPgmeJ2dmU+3gnCQ9TV3TH//qJRVLRsQvQx0ayARF9EFde7W7bwh
	 v3xwpz4BnsNwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E04C25B4F
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171556634279.17929.6380340127344159459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62efdea105b19683b40ac6ca66ffe795da8e391904b08c8be5b3081ef40ab17b
Date: Mon, 13 May 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715566342
