Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6601A08A4
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745423994; cv=none; b=Se4jOI4ilcxPf5I63KI2UZeop2PPryQvrsEcLiOuqHN/6Ng1PB37wff5+zgKhO31GpIr1yVzXONISelMQ2ZRf5ioc/65VqqlfrtW0/ND7DVPWkwn9Eea7b/s/YY9W4Am9FXNqibWI/jX2MWaBn1o0Fu0k41Tfn0FCkzauZdzGgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745423994; c=relaxed/simple;
	bh=kxPRhNmTcRWvoacN6yBWv7T0L3Pzs97YEfj1pq2IYoQ=;
	h=To:Subject:From:Message-Id:Date; b=oclz3UZQqhFZ1PioqqWEhmZgLy4U3S/fzgrOAe6lyyz+VhbZ7stVSqBMiTwa0IO3JSixmwFN6F7VdI4nU8eKIYteniaxuAj6L2JSrRHFQKzkbyuv5ZlnUKm6Ymk7PBuDiounYwKkKOZb5JFirGn5A1va0NJbSFPoGvKqCypdaQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZDVh2j7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZDVh2j7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04BEC4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745423993;
	bh=kxPRhNmTcRWvoacN6yBWv7T0L3Pzs97YEfj1pq2IYoQ=;
	h=To:Subject:From:Date:From;
	b=NZDVh2j7PskzDsg1phFvNypvFfyDSHAGpm1IpD3GpGwcvCnWnxV+I2cTSXgGpeXpa
	 elY5RsDZF+nCvsS4FQPYQhNz4rBcrUe2RETWNkMxq0mZwRlpVHJ+pRYTckT5BByk+b
	 nNrletMwSqVxOli0vq4Y7tzrf4Jh/MMccIlSOXhGi+4F5TcL6fEp8YmUgzWOmb7Zwf
	 cbT2EOneqkv4xAVE/CadRMovRk/SWG877XKzb+V3/hoGvPdg17LR1qPkoO22yzrDSK
	 2h9q5lyi3JdutUCT7ZUQ1r9vQSSvWY2byUNlGgsoPiPbldzaJVARfN20yad6AMahY8
	 kg5WZudg3GLtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E517C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174542399357.22370.8641737154539637165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3799a4702646d186eb2e3ed2e57e32bc6b4708c0b46873ba915c9e32f913e0
Date: Wed, 23 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745423993
