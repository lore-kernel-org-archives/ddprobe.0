Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EFC38D406
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780305274; cv=none; b=Oc+8EMAQIpSCIK8LTI2zo5LnVm5r4lw8F2mx57LRYYcX2FelyzNX76AfW0d973ef4YSjIdrP/0odlNuWSy6cqf0mjvCu9ddHvARZ6+cYjAvFoce0D4emY1h7VCv197VXo3dfi1pMF+Hclnh46Sr2IFB6kcFlKB9YQwePEIQtJf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780305274; c=relaxed/simple;
	bh=ST9TiJU6Hpq35vzIqaR9MtS65s0rv9U+W4j/l44Rtps=;
	h=To:Subject:From:Message-Id:Date; b=liarzZVEDeCjmQsK8SFGdYqajZ1hVOLQfShFw4S1h8w+7c1MBmLnUnDHW3odPkCOsPIqN7rHzdbc0YzBNdAHTiPULllUqw4JIyeQ/7xP1emZWV4zq0NGRdckHiT4TxeswKQZkjaqciKFFV9uSkWeGlVMxrsk0/vfq7Zt16YNw5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIpiXgiT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIpiXgiT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C622DC2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780305273;
	bh=ST9TiJU6Hpq35vzIqaR9MtS65s0rv9U+W4j/l44Rtps=;
	h=To:Subject:From:Date:From;
	b=AIpiXgiTJkG4s+klXv0dgjciki7MXhlDX8jS+j1C+J7KXjv23tT7HiI81qguRqxqp
	 1E4dF3mupkp3MEiVZrqWDTrry1i+1XBjQ4P6qLwq52Waw1hJ7tWY3UGMjyfgetEdC/
	 NaC1+TeXCAgR8vsidPx5fUkUreNpMp7dRMeBWf0uzSAY99MziuwyCVk3isPCO/n4Cc
	 bDUg6N6sGskdl1PNyO6+tv1flXdrAUwhYGe6h/PVaqF6ESIv/8JDDLfakbqSnSqsDO
	 MWehiFM08G4LHFiwYL6AJ8NqCQ7OauDTKk9G1Ul/ZQk6AjHmcBaO+z3FwjvwU95mbT
	 8glnXdAbKK64A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3A1CD6E62
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178030527369.1671.12325354092220971131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d77fc5ecc60a1b3eb1e0df4f2e139f98c6e8e8004ca51668c2ed89a260cfdf9
Date: Mon, 01 Jun 2026 09:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780305273
