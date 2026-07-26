Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BB53D9DB9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785087634; cv=none; b=Od6EJjp/GrZMe2mXC4RSCrE/lBqC3thtQLUHaWq9ID3/+7MjKxGcjXk/PeXIBP65v4/MsqBngkEc4hA0gwfJBg6D1EE7Sypk91t2ycryhYNQXDZ5mMPUTJ7s9HYtE3DhsGxmCOlj3DMyeJoA1WmiP0Wt8XdVc7zvkWNTQ1MbjXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785087634; c=relaxed/simple;
	bh=1UgvhZcxM0/gETbpIKV/AnPc5G0oRJbtFN7Xn422Efg=;
	h=To:Subject:From:Message-Id:Date; b=Ji6ur3C36rjExGI2J5IEv+1uGhy9SRl69KP4yGohahlrCxDLdwoj60hICWBF7Ra5b1Wt+UUnfDbX0jnjPwr1/Y3S+3sti1F/Nl1DO5PsCm1Q5i2pdPYvEl5p4oUYwk/WgBLOhTRCWFuoaQRRcpL2S1GZ+zJSHrN2zfHZ4LQysvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVhTUsvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVhTUsvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD685C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785087633;
	bh=1UgvhZcxM0/gETbpIKV/AnPc5G0oRJbtFN7Xn422Efg=;
	h=To:Subject:From:Date:From;
	b=VVhTUsvA5nWHkGzMLukzE/W/sdyldkhNR10OkNagUFBh/3gc5USXkRtnYEwqDs/tX
	 6zjxhbtfgWyYSAXcitwLYedsKJDxAYpFL5TSg6Tf5gyY76hyXja49/hidFYh29ChpN
	 zhTMYAROb081Isw9RGaxjDemwZc+xKT5rT6NumJG8MHaiVTZQS1ktcycKVqOzkyGD2
	 Nu5xL7X8JJXBdB92Lc2b40UTflQh3nEnhIZqOhlOU0DagC9G2hWAKMC+2LNHoWOrGm
	 68QaxuhX8NiIX3Dvn02wz0IwtjvLxBxgBF2ORoTLRIl0+7fm+nx5DkNy4xMVDi14uU
	 WWLRLdxx4uYdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE0BC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178508763368.8511.17805031233807090467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3cded9b013963a88aa75af22e5c4275a1ef694e0150b741bc9a5333f16ee90
Date: Sun, 26 Jul 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785087633
