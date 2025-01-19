Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FEA1DED6B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737309354; cv=none; b=KpXFJlznqylGEnymEnkvRx1lCra/EjueocEUIW0nyRIraGhtJ67Mg8xViJ0o4y7lllmExub5AaQbIj/UWhA5GDoyoRRpT/wA4QmMdbIkcBX8gEqeULEnDuhIIaLMyZ6yXnaeKxDhW7X/dmtQofhRtD2jvF1Sc0VKfjGv5AYWhzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737309354; c=relaxed/simple;
	bh=afFsnpQGKglrVynSGXh1eoAQ7MKeYTImNRrgAHQLvUw=;
	h=To:Subject:From:Message-Id:Date; b=dYvDZnmwW8a/M99XYNercsC9NoRsFDsuLQwl6Nrdy8MAGTTv5XNGJ9Jxb+AMmK8u/pG58XBy1BE+3BM2XKju2RVpqIMbcx1jdE4iTpCc/UCGn/K8GNgP+oznyE5bvmphF7Z3GVrAXwAvia6K3s0MqttKJUv70ipqAclWe2BALLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ngg4zVCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ngg4zVCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2851C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737309353;
	bh=afFsnpQGKglrVynSGXh1eoAQ7MKeYTImNRrgAHQLvUw=;
	h=To:Subject:From:Date:From;
	b=Ngg4zVCBymZTM4XN/It8N2+ycvOlqe2IKKVWXkGY2ltWNKPTGD6/jzJJYiFcc7fOY
	 9JBdaLtwykdqt6iqJsV4Cwl65xH1ZRPihWHcyKzKChLLIjbr4A+Oqz82sX3A61tLyp
	 DmexqPWjCMmKH0LqnwCexE80f6evkU9b9GMDeGIGUhJjsbS12s0yM0ms/bRZYMkw0I
	 y1NiLWU+LZ5/Hcm2MNyx2xup7NApw/+hm6TRJlxvNoRZjzHlEhrdyxwnTnLXTGRLcd
	 IFpVUXo19QEnP/JTdF9WUYPA0zCIY/OJl53beVscsVoCZ8Ys4iBzOdnMP7SLYqgVEJ
	 eGH4kWrEqMWIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C7C0218A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173730935357.27187.17608508228157192559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 454df477ba4d39632f3a4687b9d6787e0ed8c809d92ae6781bbcb8cfba35290f
Date: Sun, 19 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737309353
