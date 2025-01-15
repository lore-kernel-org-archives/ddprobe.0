Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E4D23F29B
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736930754; cv=none; b=qyxL+gCYRrUr9GNbd9GduNrXKYDmOmv1tjeniL+4p2woiVrflYj9gqgTYmfmx3zc31PxqddsOqjOg3FF/YyCoe/5tir0pJiFQL1FRJnWIW3LAch02PD6j0aAWdRp01DHEk9aCzQdF2hqia1VeP6zb4x0yabPDJtD4qtPySDv83M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736930754; c=relaxed/simple;
	bh=AjHtCBqdinCeB2EX4WXhvGq+eFmHCBHZCMi5ns2i/Jg=;
	h=To:Subject:From:Message-Id:Date; b=KhHvC+dZ5tNZa2C2MnlS7Gl4PV1S1NpYiDCy/Uzgn3raYKraNBXN0GtY1cDmEaXTBLgGimDvAFdVSf0P32Rg0ZEDO94jqzd0ZwP6co5pYuZ1CZpjbZ29xrwBTOQGqWZsDiQw3HrWVE5atBhIAi6GIFldyOVGYd8us9vxte5vCGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZOkdcc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZOkdcc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4D3C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736930753;
	bh=AjHtCBqdinCeB2EX4WXhvGq+eFmHCBHZCMi5ns2i/Jg=;
	h=To:Subject:From:Date:From;
	b=IZOkdcc8I46G0gYLa0gd9UgfCkbyK6aotY8iXxav8JO+bo2QBNBjKtU0fss4bbgy+
	 pIu9B5IMXc1xMkRYgpbQIEM8V0mpVwV3XFvS8FFUxo7znhQkB+aYXrdoZ1yf0pzFDz
	 08AnIAFtdPSnci0FvAvRxjXW+KHxZfq5IEEABCZIjrA3HR53AI8QC/AUqQPZegUoRU
	 2AqAIzSIGcqe2A345mMaRaYx0xP17E+YXNxe4Q375z9F6UIT1f/fR8N6PqRfxN3YSE
	 aWcT7UWvkRRjW6PZsClqK4L9Krucp8grHnw+UrTj0/k2dkPCX76U/dtYl0M7ry+Gfg
	 yC1oxfK9e83ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A43C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173693075359.26814.17496838481089619439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e517f63159bfbd7414bd6c9c7decb669b9522673967913c44619ae8dfd90d33d
Date: Wed, 15 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736930753
