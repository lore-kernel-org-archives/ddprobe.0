Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C44F33E37A
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789614035; cv=none; b=c54QUGwiv46bLOUZEfXky5U3Jc5qwcJl9kXze87QHux4Te9y0IXPwN5wrbTP4mu6qTqgvZ0NIqTZTbKOShvP64RvjEWHKwsKI2BRjbg61ZnUvo+aaPOFio/fdbAc1xW8bflpEELjfhzlSCEjzSFCvzv3MlTmvtFsFWyD1hdocQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789614035; c=relaxed/simple;
	bh=YFUkL+q4GC9Nn1j5WgMm3MKJt5hXVi96PbcJKm48yUA=;
	h=To:Subject:From:Message-Id:Date; b=i3jVX+Aw+6v6LQXCtfH4+VGcuFPYEZtT94m1RKSTvkHrCGPLnpzIHrPhhJQzGnU6BVMn3vTUz+bCefrxtoPZqEOIwJKP0MT2QwYhkuot5V/jwLZ5IXhTsll2Hs0ECOFY54kSW73rZH+6S+GtZXSf81B91O2/h+BhHtOzuVe+20Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/UmnjaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/UmnjaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88F4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789614033;
	bh=YFUkL+q4GC9Nn1j5WgMm3MKJt5hXVi96PbcJKm48yUA=;
	h=To:Subject:From:Date:From;
	b=D/UmnjaHXmLqbk1ec6sS1zihAhZVPfv3XnWa0idYjTXj6y1sdK9/+/dnHor2cHmz+
	 YM6x4/oHryBUlxYosnQVwXZd040oz9JqyzRY45k5nOc2s8LvYVzYG1/4kZEy04BMnH
	 OV1XMC1FE90YLPl2j+nOYZFd6G1nAV04k2UczctkBqWoFQTv3X3x+w0jwRvS0ATeIh
	 lOxqaC98snrUAv2gyaWYZ18P6UjiJWzvmYo3RbBz3+WiS3rs+883w5qSrTQvtpaowX
	 TVMuOTwBsJBBdMoFS7D6spx6loRojUMJIixNjAAAhI7oK2LNpWkYHql7NQaHEwFK3u
	 /Yr/wbkychreQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38CBC982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178961403372.6274.8464127205318493613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8b8558db597b726f0b75be0186d5aa73b2e90fdaa716cd0cc43196f1ae7f64
Date: Thu, 17 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789614033
