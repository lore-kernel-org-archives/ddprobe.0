Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C392B2FD1A1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763450513; cv=none; b=c8DO42Jxmlyp9OPBN98H0D5jpNdZ8SMV+fg65/vJI83dFQZF98sLeVA80TYxPD/I+48o+eV7zYxF7bOGERXvLcpheopNdmOYmNROLrh+MyGdUyhoZXAp1YQQeTM0R+lx1JJ8eO3R1mlBe7j2Cni5s0ngBpG4gVeweKmzsL5nRlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763450513; c=relaxed/simple;
	bh=ZFOQBmQYQ0ZJltfHW4lHOSwFOFdnr0eFbhJYQaFpe/Y=;
	h=To:Subject:From:Message-Id:Date; b=p7V8dE0GbVyVfOv0jKVNR+6As/fjeMC1cGqUG7lwDtyUovEoJXX39Ge5f5NGiVEisuIAGcgllthAdn3gwPg+X+LuzYBTcINejydZj+9aDWinyGtEfvD1NNHQZvIHVoQ66uWCHB3+x1/iCuXscrG/bt67maNzysNQw8suwKHkpkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXqXTBij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXqXTBij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C156C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763450513;
	bh=ZFOQBmQYQ0ZJltfHW4lHOSwFOFdnr0eFbhJYQaFpe/Y=;
	h=To:Subject:From:Date:From;
	b=QXqXTBijOnPeKYyDWyv3HAaTDgVH6PKow5gMY/2snsDWi5QlY6lgnggJbCSU+YYcK
	 B+jE1mt6hvaAXs/hizxBEqP0tWVrCaWW3FkXhbOvnZXTL4dSpeClPzzdH9pUnLKIwc
	 MAj1ZJZ99K4ZAR7n1cmDOPwA0wHBfOGJu90eOYHh6CdZnto9YESJEVd9GWKELUb79O
	 DSXb2Je4OjrisZUGeML4BHGh2XmXpCP4e+ssv8dDBLJh5Bloqy9ncBVrGb5B94jlFN
	 8yHRwPSRcAKSSFMFIBqxXrfnrytfMlgtuGUdI6LGJQx5Oo0cI5HKOx/dq3+Qs8VFoZ
	 JoMXcbZk2IVAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEBACEBF93
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176345051358.4187.3469368769756090969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee601f9ec74df5502704e77d618fd711e10de115d7b9aa507767c61e97c4d6b
Date: Tue, 18 Nov 2025 07:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763450513
