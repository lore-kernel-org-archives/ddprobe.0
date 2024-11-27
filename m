Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320E083A17
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732734954; cv=none; b=W+hxjuAtoo3PT6ZaL1BgDpTyojev76IJLOo91qeiWfHPHoUcvdlB8Y/S3KtiA6RM5UZ/yjCOQA5rsca1tXSVx/KOjqkl3qccX1GukzxsRRVAu6DcoLKkMoW00e5pMQRhj/wPt6GEA+Es3oSQDkRBHI74Wrs+ZI4cd/67Pz3FUko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732734954; c=relaxed/simple;
	bh=zUgO51J1CxKNjoOCLNSILBslXoLT+Qwyz4gLNbL6z4k=;
	h=To:Subject:From:Message-Id:Date; b=S+evDn4o3AQq/Zp/Vk1LGsbX0+B27fyHJD5h2uCPhDJ+mYA+8KFKGTnuuuD8gxx9/ZYONUcr3/FEKJ04hE0UPfdskSWapP1Fk9ALIO3JpQMXueTt1jqHGFg4Jc6jpFIPdMKdD3/7A3hCvss5UZs1WJd4ogWn36bHmhSNcwseYsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1HZLxm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1HZLxm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6330C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732734953;
	bh=zUgO51J1CxKNjoOCLNSILBslXoLT+Qwyz4gLNbL6z4k=;
	h=To:Subject:From:Date:From;
	b=B1HZLxm/eI+iLXBVE9EiJ9QlmTO7ejJ3ufAT+X57p90Hv2nmlY6i3v+eOQgIEWqY5
	 mvlWHesHOsiiA0hHzJOWRt8rTVFV5BQGUqHV/MK/ZjsJ9lxGYTrzRoYMSxXwPRBLM5
	 IizhyUzUhJl41+Nfld1DAKyv3BSHDniQ7/oxCbszGzr+xJGZfYlDbD/XohxXGpTgfT
	 Y6YlG0Q7Jzro+S8XlQnnTZkegccMu0AIR9393RlhHE/YQKyq2fhBvY4DKlNN2YOD1Y
	 JNf5dpUtHOKZRoKLtPAESjVmcntOsOIk1xJO+PcNybgV0l5Lsd0CnIunqLX29Jl0Wk
	 /e6awXowpzWhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91111D6D227
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173273495358.19168.4655275300915229200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735ede982a0c483c7efb463fc86de638ce24051a6b1c843215ec4402f89939b8
Date: Wed, 27 Nov 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732734953
