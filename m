Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA398F5E
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728654354; cv=none; b=RXjJKnxFk3AgW3BjJtNky6cOnItF6Q0/Bi0Pyau8qgxMwV7N4/y5rVHEsiDrmSHRCiaWouVBiTvmNyUj9OYYSlY/m4KH5rOVKPwaNZifjyRkPNTG5hqe5FWR0V4bqb2kxpaiiBlBqkIDB29UOlzx9q8eurrG0Zc0p3fHgCWHnd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728654354; c=relaxed/simple;
	bh=W/JJPnu1QpThizTDs57LDfAWGhdKzdC86VReuT9n9sE=;
	h=To:Subject:From:Message-Id:Date; b=jKAYRpA0f4TMJ5vpvABBNT1DAvaYG6Cs6RBqbxuAgd4as4yNyCjVVo4it0NekNjuDnU1I8cGughOmWJ95xGPH/K//huBdGOdFz0Pz+3sRpZ4pElsCnEfzck/27QYmUqreGgjJNI/xrr/MuMzJOxjFE9SomekI82RCO6Azvi79zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFjhCviH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFjhCviH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C30C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728654353;
	bh=W/JJPnu1QpThizTDs57LDfAWGhdKzdC86VReuT9n9sE=;
	h=To:Subject:From:Date:From;
	b=NFjhCviHufzrCrO3ooQJg3v71fijX4pdE+SW1yOpHJkZa8SSLSyj4nX4nvhfkzmRC
	 kDz+AvBDrK14CbtgVxWfyd/Ku4cb6c5VciGQyFFT25qzqDBv7N8DuzoqEFIwfJ80E9
	 xJet1QcgLZzSumGB+TbO1yEhindeKwUAk+eVoPcQbbUvjMSMA9xDXHC92RXfRqlvMJ
	 SnaDNVClqXEzCwG7Nx2idEwXZ3WhoRg4YP8goUc0laHd8Q3bVRSA2QYRc40JBK3KxZ
	 N3DTt+jrd6GbKvgGdCrAT+hd6UuLqFJSM3X8B+D+9vrCIJ3FIF5+wmDeY92Db5rXZV
	 bEiSG8QBEi0hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946FFD0D78F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172865435359.3920.13566929906172595148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abbb4b98cc2b3f57eb7745b9e8668fddfc2c1be299e9126cd2a4bb3c4ae36db1
Date: Fri, 11 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728654353
