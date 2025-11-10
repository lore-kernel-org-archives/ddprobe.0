Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39527270ED2
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762792194; cv=none; b=sWC1h2s3o9keghzkm+YHZ4ronBPgdEf00u1XGXOEyS71JUs32Xisfbfzi4HxcVEqzbPpKU1YBif6WxR+IfwBToyXotbZT+1WpQJC4GFNmTGFBq0bDPX6Ofhi0+hhMSTIRgi3xJE06fmradTRzQbJY6aLbSfQOQdyp+FOoKlUvj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762792194; c=relaxed/simple;
	bh=HVlg3X6NJLzzkd/spXTG1IKap2vgEFxGJ5TFDbRnTcM=;
	h=To:Subject:From:Message-Id:Date; b=LQU1mcCj/2DPthSf7Z6ls8gLpqG/n47Nhaey0jACgfCYplcE+0aQgonZTztCJJmGVheL3Vm9etbdIZwQhk7PKSswDOrsNMgYtDVrK2vll3Lnq2/rRZvi5ML9+qkCrnyaWH0s59MY4Uk8o4TCX/UYRlamdAnxR4Rs3Neev+CH2/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNZlVSMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNZlVSMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A988CC113D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762792193;
	bh=HVlg3X6NJLzzkd/spXTG1IKap2vgEFxGJ5TFDbRnTcM=;
	h=To:Subject:From:Date:From;
	b=kNZlVSMe7qkLii0rFZexV9EkCmVmXDWG2s/4SKM2U2yrzNKs5/G3MtoXzPaV+F8F9
	 2VOHt6iF6yRR/ayTH+YIi/CYSlFN3eya1zD9XxUyoPQ/aLGlnQpP3Un4C3E/ShLxmy
	 GYKgxb77GOOd+tpF9vauS3QJkg6bQyfT/nGB0vdnIVQVGsF4Q1Fjk3663lVOOQ0n34
	 062ztIxijtX1Nj6MmFFcMuR5wN36YQOdG/uLySHMOMlGsiTJ+PMxtp1GNFqtDPuYb7
	 C1peAqd0c10d1eTtHnjjXdUUpTcGeyYgYrGxpMrAd5OVDw55jUQzAMPH0wvAUa+vkC
	 gDf+Y66wDVyIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA24CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279219362.28954.3334921339381854047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c3c669f7bc4a457ce809600f13bf5f755458fdb08436b96797dcab24c60575c
Date: Mon, 10 Nov 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762792193
