Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4234514AA9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754105395; cv=none; b=Piv8rj5+tHJAjDUo+R7/kzhg4uQIX2pPusM9+YJZcIs70UALyUyUSrE29la/PirhZQuV+0IMUvMpUHvVfkkk+wFyQOD77bRr2blJcIyLnVUVI9o1NTqE+zGDhWpQCFKYBp5aPcIRAwzc5nmNDJ/ncaMHsMwW/ZHYB1gYbef8VYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754105395; c=relaxed/simple;
	bh=Wq/xHUA68u+35TJrOJyEl4C+gI6Gj4n5igRh8P1QS3Q=;
	h=To:Subject:From:Message-Id:Date; b=df3FlFHak8PIIoSgI1oduk+h9JDKARoIENmcM3lrtRM12PvqvuOTqvkAtr8Fvn+JYwroZ3IOfCT9FsniSg+I4tanV/pMXQqoG5fQlxfFzLF2usTopRDbvX8Mfz/O6tKxB2OgpD3YrfPO83sEbOcpWzy0cyxEFUyDMDe/IdHHYlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVVK/TqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVVK/TqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB24FC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754105393;
	bh=Wq/xHUA68u+35TJrOJyEl4C+gI6Gj4n5igRh8P1QS3Q=;
	h=To:Subject:From:Date:From;
	b=YVVK/TqNiGm+PHw+24Tkg5D8bvCY6Y1ICncJtDXf+D/EVFtI/r/p4o8jm0D0CUjec
	 gYtiU54gMy2Ry1LNHWMgUfKD2SyrpnaiLwYZ78zTK9lvshi4GIpAp/rT+I7gTfIX6Q
	 +r1/pFe3Bcjv4grI+M7RoopdklFKQA8i1NoJhAmZ7+FN/K99bXxm7ZU0VaAxR7+HPW
	 t7djKriUrgg4BojnIYhN5p6gnWO5WLA1sX2pd0eF2OQLK0pySz1IEIba0zExRBcXJ0
	 Tws1rpHqyFtS1taKjIf3R40ztujCEvZlKxvH0EXEsrJweyGxrfRNptRigW5MO2+Rmw
	 juKFu64uYBAJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993F8C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175410539359.15791.7875285033160941177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de044435fbee865b7acb73489d423c71b8a9b0a16521c9fac4fb6ad6652c35b
Date: Sat, 02 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754105393
