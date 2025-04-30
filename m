Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EBC19C556
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746028194; cv=none; b=i3xuX8JtU+oCWh0C30+iW6qdci/ffOWNqj2hBRHrOsxmQqAdiNKhul/04IjQ/NowXukvElQo2qonOP7oY/SgyYlqgV86SxI06uBOtBhvgagOqGY6g/xqMnOOEs23L09ZqKHFz5/UEotdh7uf8k/WvnP7O1Y7EJDpJK71BVhdtLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746028194; c=relaxed/simple;
	bh=81ZOKm4qnw1y0g4fTYTLaHuJHh31U7ol1dwdxQvVmPM=;
	h=To:Subject:From:Message-Id:Date; b=P+BiVCf9oSAfCkY8BJs+nahLol//H0DzJFxNgt4jv6S5Ec0lHUNm7ZMJvBmoveRX5+aTxE5+pzmqlDzthDoE4QLgcGYzSjO4xg6EGnKCAQb3NzCPP+lLK7LjrzEd5vfBBL2Pc/KYeSXUQRZxLiE86NTQDv21rjJYcjnzVVMbohE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8MIYRr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8MIYRr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E853C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746028193;
	bh=81ZOKm4qnw1y0g4fTYTLaHuJHh31U7ol1dwdxQvVmPM=;
	h=To:Subject:From:Date:From;
	b=B8MIYRr9RN+Y/qGxsPY4NdwAqqGePD7bsntlwXDKP1RbL5Fn1LG9mQxS5yYkYXeoO
	 Esn4r+5xGItTrrJhhFH+zT9U7ED/yFnBQn17xEJ+nFF24cOgoWzbDwjMhCTDkPTvU8
	 Bolx9fOB2YCu4Du3me8Nzhr+XBW5WbYByz81GUQFbJXbXt+niVtdb53baZ1n665SzU
	 GjKwOm6ZshY6zguHGM5v5slnvd2DQ42qLvLKSywjLycDGP9Rc3YI4meFxJlAQ8IfXb
	 AQiw8vIBU2G+H53k/y1/qsSEoDHQ7Et3tMqXRXKl2M3INLHOjvQ0Cn2pZxbfUwZprH
	 syp9JiJvbLZjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F34AC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602819357.8002.5045156641993924017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188e953a3e3494f481d90ab46c6544977a97174e6eba5b62cddfeb6c05ee9948
Date: Wed, 30 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746028193
