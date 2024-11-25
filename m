Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3D915E97
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732505154; cv=none; b=iR4mwxuDYBHxiOSZidtqUBH2omvfaCQ632HBwW+vjRYpjGV6tl3mW27iGmFQKbR898/W+G6GUUyEnmi2VMQRp5ZRJbXm3uiqpuQoiKGo0qbgffeKdhp64fYfrK0symflO9/xmUIkY2Fio9+f+ONLa1Qux7ne6umIeu7dVFvdoZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732505154; c=relaxed/simple;
	bh=Ks8iNP8+0PyoI0iSkQI2/bimgJ/iQa56n6ArUkM9kuU=;
	h=To:Subject:From:Message-Id:Date; b=kWwwk4o5z2h3CpVaXCYIJpQhXnFz3+V3EoZj1tGBmZXOHrGaLBynrUynE5jM7RkGfY5rB+c8HntLLuEAAePa15nx0CZVMrKmV85BcvA6gEKnofpj5c3bj4VvIzWLP3fLcEQbD3yosE3OA8tkGjkoD4+FdAhkNTsyknKLlZ0HLAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHWOS9Dz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHWOS9Dz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B372CC4CECC
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732505153;
	bh=Ks8iNP8+0PyoI0iSkQI2/bimgJ/iQa56n6ArUkM9kuU=;
	h=To:Subject:From:Date:From;
	b=uHWOS9Dz3gVit58YwHaywq9CVaSr/gagANDamsOWXMrwdet1cjePyqwCTXV7bwdO9
	 yYDuLefzlYYBJoG62IQCivfczP6mGIdRwe5sJ4ZhqKR4vjaOEJfT7zUmZlJIz2NqLj
	 6Xk6f6K+spvCcQGLYn36ktKoCKgx8xgGtY2YMX6EpNz8pJWxtFtfzIp0+lKMJpAwyD
	 cHO4ShGd6S4+MIIqEUU5xW7k2Sl1yVx14oLGR+4r7imGB2jrH3jMCNS+cQHo65sVzQ
	 PrhL1EOS9paTgrParl2xiQzYQcW/EyM5Mk6Z3eHUk5suhotwA7FMht2a9e14JXv4tm
	 pM6Gf/fQStijw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA8AD3B7CA
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173250515361.17097.16950655874517701878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d5e97f9c5daeddaceaa68769ed87ef6430926bc35818b6e745e33393fe9fb6
Date: Mon, 25 Nov 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732505153
