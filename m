Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E102F2B
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716834863; cv=none; b=NZoiPSL11eZ1eV2gjLhpijPQ7gW+Ct0zThpBcLCq/m1Gy0CfqRXH2qS0sluCt0bgjEwWJQcPBFOZjwfxZ4LwUNYLWv6XqYWbgjm8b7HX6Z+pG7Yi+U8JzxH1O+W0kSQER17EREl3NAwMWSRRulWi3vlVJ14t9kyssfHUn55zitA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716834863; c=relaxed/simple;
	bh=OZMD80QoFv8l/6vmBcnclfeTBm13+k4dLE9rGE0vAag=;
	h=To:Subject:From:Message-Id:Date; b=L8D6xhYL9w07Cg24hkvsaRd1QBpLDk1OnnOtfc9uda8KGLsEEMxyd3Ld9/4wFoUg/9N0cWFdcqlVD5ypRKmP4edWBD7W3z9h/e2xQgDLyglVMbBM2gmwUhKNIv9oJ6zgN3zBWwQg/P6bWcDw8etxtpyis1AmBo0k5NVc6NPfaS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hc+dp54e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hc+dp54e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8DB6C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716834862;
	bh=OZMD80QoFv8l/6vmBcnclfeTBm13+k4dLE9rGE0vAag=;
	h=To:Subject:From:Date:From;
	b=hc+dp54eM6Zz03n5gncCeKCYlPS6ZZqUh1rHnhXXD3Zzf1dewfHNjVjAB0yEsHO9/
	 Ec/q2Ssd812C6IVG8ajjKYiw7CcOThbXjtEL+QG5BaaVA97+j9mlulcyZPxo8lvcPv
	 IwQPumIKthIgELuNycQ7gpOOD1nbzYkcuSte8pgM5XExmEbx7XDsplZmefVjAEXkpz
	 4TnpUOtPIU5DNlwThSgpLW1lAa/MIEFaa8tdtQMX1lHZlhp02oXrwJWPRD+48B/Vf7
	 +Wh+FuUVDo+5M3vkSPxZZRaeuFQomX0PtPzK0s/yuOGhLHro+pmJmEv+xKH4hSFf8r
	 98c4F06kuZ0MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8D4DC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171683486287.25078.16489131033027026805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9acc72c1dd8077e8c02a690b62fce2a7c1a028fda151f143cf53e1118f7262
Date: Mon, 27 May 2024 18:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716834862
