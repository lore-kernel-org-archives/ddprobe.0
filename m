Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCEF33F8DE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769584434; cv=none; b=nhGoDVGAmvd8ueGsswUOSle1j2VM20fjqTKOwHFHKhohq9dP8kb/u3C7Y//IXt6a1pGLVBIYZknf+75ZAgPIMf52QgYecE8z0p5nAboZ+k8S4AVFCD3y2qqXTyM+xGHqpBA06Z6HmGItVJg80NiPPgsydsOcCT6Qy1Fw1ZffGAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769584434; c=relaxed/simple;
	bh=KxBaAv038MuKrOKxgjgpWiR+eyAkKN9mDZbsFtrH/og=;
	h=To:Subject:From:Message-Id:Date; b=HTc+rUUDAxdCie94KJKW0muJC9jyWqTMl2wlksCzCp2KAjoNOOBjpHTzmmPDNhjp5EcyUWUMMWmiV9Iy18qZ6iTdAnPlO7h2j+4XUnX0eCNQgBqdtuSPO9uQ/TOEGTYvFRx1ISpQUdiWtkbSAqnnUJwHG60aIsVa0A2Xl+wq1A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZP0gJw08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZP0gJw08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3843C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769584433;
	bh=KxBaAv038MuKrOKxgjgpWiR+eyAkKN9mDZbsFtrH/og=;
	h=To:Subject:From:Date:From;
	b=ZP0gJw087XzB4KVS+YicnREARYcGZl1Z2jAWqjyXW+fGV1a+TYb+JfyAgBvTqENoZ
	 vsNje4NWADy5uI2hPsg9yx+h52XAgct3maDZ6jM4ehgXe+5+THXKk+OdZ/yRC579RB
	 Mton8bvTla3E31A3UeRnGni+VKQvEyaonYsAR8e9jSzoJthdiGWDT8zqC5RWE4feaO
	 TlYqOuaVFjkvSmZOR1xUCJj2ubbgTTJVr8g5fXniV7IslGNj18bbJdr71evRyfw3s7
	 HGTTdvqxTpDu5Hoq6owEWXG0KA2sqAuOO0Tl8p6vBxSmWxOWz0Wfl9Qs/WdyszcpBT
	 A3+ACbAmFd/lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF7AD35688
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958443363.6383.8805377897144554870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 865454ba8d7866d6ae3c96e8db45a2595edbe59463f0dbd32fc44188153c7a12
Date: Wed, 28 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769584433
