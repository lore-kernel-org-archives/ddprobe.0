Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE3D3090C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760677194; cv=none; b=j3ZdUO8rCdxI6hgp42Uv8QGG7CKOQJDKn4/HnV8HxXxekagScCZ615zh95PlJDMQZh+M/huYzngKkhTt0pUwVTpeRyCTLgJnSRdmeSpjr9KcHEKq8QZ8QMArRg7fylOpYH4FUuFOjwEMrmodvL1h1lCU7CPxjvUYVrm8C/QQmww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760677194; c=relaxed/simple;
	bh=zNTP+bNKLnOwzdy2PgISvelvOrbGTlGvQ49muV29DD4=;
	h=To:Subject:From:Message-Id:Date; b=utGEMJm0HxJsLOSj/8J6AMZ94a1MmsUXafkvfozSc5L6Mafk9VmqxyVYRcGqiyVcE9Yw09TCAy/4id7RJIGFE9tugb/ua64Az8OrFxgxAjhVA6WswwTu2bXggCIU2Dc7HB8OoVIUtWwX8emORTUfo3+YVMYkdeU38yBksyDLX1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/tcDuSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/tcDuSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DDFC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760677193;
	bh=zNTP+bNKLnOwzdy2PgISvelvOrbGTlGvQ49muV29DD4=;
	h=To:Subject:From:Date:From;
	b=a/tcDuScGhEB44UVLEj/4xa0wwtPKxhBeaz2xqoQ7RCLfOq+GxTDIUbSayefeZzA6
	 mV0Pbr40Dn9bCbJ4Xon9QMf6gHpDY+LX9TTLCh4/3GYqd3E1CPyR8psdkLSJqnulu5
	 IKRw1wtcdV8SyRJmFT/AB7hbYSii4rkakeV+QzGdHQfPXuKj5cvKrIqb+OCWNR4TpV
	 Rtz34OFMa0kaE51flD2b5L7T15Dyqq8akOS2lXnvMhEWq2syfF2YhGMVk5PshLLERC
	 8WSraGLEXRazKMrhGG0nLS57v42xxOKnMAybqDsOAuKScBAQ7hzVDxQQYGSzzvOKIU
	 LXH7VfSLbg0pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAEECCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176067719358.30169.14269219992852495213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05611ef4b1357a211b568105a59fa1308b6168fde097e27c7854eaeab3e0ff48
Date: Fri, 17 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760677193
