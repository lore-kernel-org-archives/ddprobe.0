Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280712E764D
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779890554; cv=none; b=Xknjof2GJznF+48E5YEJCqlNrSIxjK1YK/5zA1nZ1BQi/xV89xDVFgC0X08wuIDoSsoResZjS0taPU+lcQKiiP0ovXlFVykefr6YpnxqCs/X6auxC56Tis6FLBEOQHzrSFHSfy8GofqQ4DJT9upP+vBWYPjyFJk6vGPNIaeyTx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779890554; c=relaxed/simple;
	bh=1eSxMGx2A5V9kVslQnXlob09Yn85uCUkOcAgRtV7bZM=;
	h=To:Subject:From:Message-Id:Date; b=JzTRN4BBYwNKNsbmtt4Sh8da+Sn3Zp48wMgWKKw5x7X9YsnvSlha8tKQQ0UvZbElbbf52w5DXJCWdZS8+TFhjKvq4/sTxbSB07uo2jITZj7wwZfU9VJFN+O0Z2SrXnKe9JwPljuhnAA4TKk49vO72V3JLz8IQ9f1Z9bFXA7OZKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgYwCuDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgYwCuDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C596CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779890553;
	bh=1eSxMGx2A5V9kVslQnXlob09Yn85uCUkOcAgRtV7bZM=;
	h=To:Subject:From:Date:From;
	b=XgYwCuDXF0b4hzx9vxZT1VIcwA5ML1AdxgjQf50XSUx8mU9oH9nObP1mxzlSZP0sz
	 r+I+OcHwjly2agom7/kL+18OmHecXf+JqhdkHR0NHIOgGz2ozW6ccXO5NQBS4ov2Bi
	 4N7haWnvvKJuaCB8edJC+A/APNw+xrLk8hMVAMN9w3oUeP77LN4YHj9zCZiNULjENk
	 h0xk6FNVQiufdyvQ6vrKmwut1AeC44DRoOpHiqrU4x4r2aJZE38AZrBqsceYmYo3UI
	 W241rxxj2aSt9kAb1GSAP8wOnbRWraBu6x8HiIniAME2Y0+F99Byfd/PwP7gFkvkK7
	 HHObG3+R5kUiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE73CD5BD5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177989055368.11893.4207392920829212313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6098e9f4bc276c031a23987ced8378d8d05317cd25894f34cfbbf2950c79c00c
Date: Wed, 27 May 2026 14:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779890553
