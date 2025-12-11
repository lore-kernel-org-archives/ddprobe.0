Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D1B156C6A
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765468374; cv=none; b=GuXxUd0J2LqyNoSSTfBns8Pqa+SHuk1BrqVag96zoVDUP4Bahboid3+NhhDKq8rTjxQPC+ci27wmrJcVR3vHNJHtMXqKQE7cL/aO1JWeExwobBQ9Yciv6z72/i7k5W1vFM5LKvePouQIyLbrnB7IzA1mcS9yJK0trWR5ffgn+BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765468374; c=relaxed/simple;
	bh=IO8qJBZmGSnYFOtU6RFra4YBj5/X7bnpJ/ffAjw/Ehs=;
	h=To:Subject:From:Message-Id:Date; b=RjdhmAvoTv0+5dKtqglINQ27pTPwUqfrgszyVPXn6RsY5/3esWgFIfoJbByBicPXNYkW++B5t/MTB9YncilOUH2TKjKS8OyLJ9STDS/VHgQbpG+kuo6UJZfGL3ZhjeCw1WmMINd8iAQsh/7brU7RrEM4v37sU6/uKMwsDx64xDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDInGwHe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDInGwHe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82CDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765468373;
	bh=IO8qJBZmGSnYFOtU6RFra4YBj5/X7bnpJ/ffAjw/Ehs=;
	h=To:Subject:From:Date:From;
	b=CDInGwHeBCvmLnj5BsxbhhKnOxXLJfTUifL82qEFHPq2VGAxHy0RPccBEhzz2H9Ge
	 5J809xsEoSusLVLAIYJG6dc9ZX6juF/itWrytBJ7ZAgm6gOHid9ULJA39cwIszCQXP
	 Jhnsj4yK9en8dFDctlpcHkbwcXC8TjY98ln+yzwh6BWUygoZjfTWMiUv0deP7BSXRO
	 JP+2qblasFsOlYc0LWSu1z0Gb7rQmXXthUVYoz5u8QJzj5BxxBd1oyFX3fJ/rZCmzn
	 D4bgl2cyql2MXXoL48gnv034vVwjANijAnsYPnZ1jSmen4UTvLVapLZGbBEJhD4EiN
	 k4loTS4gyp4oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9576DD41D65
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176546837359.7721.16499987855070555330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac71efdb4ac2cbcb94f07a24835f2d0b4f47af094c0b1e09acdc0812e1575d4
Date: Thu, 11 Dec 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765468373
