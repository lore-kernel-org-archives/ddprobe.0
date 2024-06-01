Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFE21D52D
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717248263; cv=none; b=bN3xmDycvTqRiNat7JsTzv/o0+pEPSuJBkKiMgGAo7Su9imyP/tTemmwTRbuxsfa+YiyvkkBUjw8AwvZZD5tjiTPeZSrLfHg29/8wDMO3a4yu+/yQA2f1mlTTiTxEzo8OLOZsIp+MA/4iZi2neJ1YkWwV35596ietnt9GSOpyTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717248263; c=relaxed/simple;
	bh=o4xTvKzR8TZJG+ToVEil9tW44qHUnq5Xk/bywqe5kFA=;
	h=To:Subject:From:Message-Id:Date; b=JytEryNMlzsbrJZRA1v2haU9t2r+hbCW+fwnaOSUsTsIkMtVt+iwaYw3RRGFtSCkKhbPvpTm3XGensByJLOMeFJPxnjCeea4NdyUS4EqzleUy+Ag4IbZUFMP22+6ypzWAzRtOV+w2hi/OuntIyaqvkYGsF9G1bPOy6dLMceIDiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5EHIpnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5EHIpnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D622BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717248262;
	bh=o4xTvKzR8TZJG+ToVEil9tW44qHUnq5Xk/bywqe5kFA=;
	h=To:Subject:From:Date:From;
	b=f5EHIpnQ8Fi2ed3xSwJB+tk9+noPwA9++Phx1hcg62oslEymHP55uzO+gGcCE+LGu
	 QbHQGX4vYZEIM9Lxv2YRdiMP065EkF/bCA0GXEeu8phmSNfRgZqypeHx0QK9NifIVD
	 TTfDkfjo69ywQRqYsbJWxGUB1G4VAMPHJflWTDdNEeENRCJdMT1fojhthwU5MWIgbZ
	 YsDgnaMyyq/BjCcW+qqJ5KVsNxd7EDaMUYZCIisLXf2JhAG4grYL3TQ9TlYwWMm7lw
	 dQ1dLSTKT4c/3zcRh85VP+r0xCFIGsH2MAdvwqtLCscnuJB8vypxTHm5QO5IPYMmsV
	 6No4nZVfeNEBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42D1C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171724826279.27665.4775484692228071881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648b59d93baa7f31643ff1b1857c49735485b43eeb37fc4dde52cd1eddd0138c
Date: Sat, 01 Jun 2024 13:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717248262
