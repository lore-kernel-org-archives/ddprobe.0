Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1581620012B
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754172594; cv=none; b=l330uYon2r+UBxruxbXhGfm+q6LjTE7UxbWQvk+MPbEebqVd8KDxdtATQTu1HMH94va80rDGsO76P0Dzlbb9ouUVTaXTTybbI2PO8noFPYVd2LhgEwLJ0kxKMs5eyPFl/6yQGZd/r/lz+st98fC0Xj998DUx3GGmPAIgMF6xWkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754172594; c=relaxed/simple;
	bh=Bnx4Ta8EonacTXXZ9rp5dzFGMcFf7pEVOFPylH7MUko=;
	h=To:Subject:From:Message-Id:Date; b=tiyKxU/AIlrw8JYp9CQhPHznQIzMKg2qRGV2s4FgSTx24LVa57r9DXx1RtbQz4wxN/1O8ZlSUf9zKtrMyHL5yQyqGjUxSu5I+XYnC9hNj8SObIFHv9st3zO2IfLBnsK+q9GRq1cAyxsUBvCHXKZ/Id1aEM7juOPpg9qJ0rPXL6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGF59/R+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGF59/R+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7ABC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754172593;
	bh=Bnx4Ta8EonacTXXZ9rp5dzFGMcFf7pEVOFPylH7MUko=;
	h=To:Subject:From:Date:From;
	b=fGF59/R+mLqJ92tWpQa9LOrrpk0ASwOq/gmb0c22e404zu/2SdZ3YuW0SwfT5sSPz
	 vaAr9ls5pLEfagYMSJREGdAOSly4JF0FSXl+4ZMceqAdTWb5jmp0/bdv6d74ElmwDz
	 8U6h9Ha2jczvhJkYVZGRcXHvTlV0Bsrc7xxcx5bE21Z1fYaBXMRG/7GtgnZdd8VL+2
	 6PrBLyyZm3++l5m+L38wJZOWztIw6gbkKYv2NNOFWo+5tISbS7ZrCwoONvbtWxMDAX
	 C8vuOtlNFlNjmiVHg4XM3zM4qJIMtGvfP6nZIDot8yUkXCuEclO/bN5SpdFHrycwwf
	 euKbqfsY0r3Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F168C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417259357.31719.9157792109561395309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 497494d662602ff70d43d45a1cfff319d3428f74604d0ae4c4e27e7d9507ec12
Date: Sat, 02 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754172593
