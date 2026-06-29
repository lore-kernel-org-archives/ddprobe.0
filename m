Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC17406272
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782738514; cv=none; b=mr2lngspPilsE5MwWjQHPEYJnAEgQNG9DBlz8hjIQDzmM5zFTgfiUgClFdYapicHtgr4go1L1OJHuWNKSZ206zmRZ7zCJLA4vdTK02BnNKCyvCFwTub8/Dz/7Oz9pWRJ/v7CYIwztywLs9naYHhfVE112QihFAS46wnFTzXx5Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782738514; c=relaxed/simple;
	bh=dPYcxmAznGGQiMYwM0O2ndQKuAm8AP0RcqfdLN6Hd7Y=;
	h=To:Subject:From:Message-Id:Date; b=Uq1hQ+f+kbYeMbxqzs7PlRigkg03+9w+f87fKWFSjol5CrM1c9RSUwRoEIg7D9Qu9lpFxiTSirSbYNfwilz1IrQ3ogqD0LfPp9uVKsSNCiWBkPEfr2WZ5t9BtYqEsnGuvo00i7DhGCbqzb0RZO8xR477yFEuQ2l30Ibg98EvRCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPWnPp2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPWnPp2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB90BC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782738513;
	bh=dPYcxmAznGGQiMYwM0O2ndQKuAm8AP0RcqfdLN6Hd7Y=;
	h=To:Subject:From:Date:From;
	b=NPWnPp2sJDATvsxl/S4bQmlNKRPInuh1/0g1HGhMwumFyPket8mygvFhwx9DHbLZ2
	 hb7bDwfsXBzJCol0sBMmSffaYjCHt5KrE6FJVhfku8sb7L56bxyuoHHMzDmJZuHiZi
	 H4NNnSjeB5CIFgkleN7kmpT3AELTZp/78I2G5tKmJ9jh9/Np9I2s2vsrEoW2TGvGmL
	 3eT6m4f7bwNSjoS4pBB62wT5iS/6nuqJXURUXxIe8N3LwaV88ELIrdPVD7MOZXoRi5
	 eAPv7veQXv6yRKVlYKp+XbQr9JeF8bXU50t27MM8kET9vDieS3MtVx6G3Wawua3Psp
	 A2dk5qUv+TZJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22FEC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273851371.15343.2588476565620463148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42a7b1da6c97da213ac0c55f40ba1ef95291ae8526fc1ae23dd6af4656f2e45
Date: Mon, 29 Jun 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782738513
