Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3399C8F7D
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746377394; cv=none; b=k9/q3GvA/hIIvpfi3p+nD7GtPFmLpP7UMZY4aJFw6jIQQK8+t5Ijkih4KqkntHAP0cOaLHsaVrw7LSVER4pFCM9hNNFEm2yXUksGri5E++1BtgBo6wui5AQJAqbr0xpkBCODc58NooIAbCu8x8yvnnClUZlWFxhHL7kL6q+usd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746377394; c=relaxed/simple;
	bh=9cJWpi9wGCmcq08LtvgvdDRPIJg0vj5EGpmZtL9s59s=;
	h=To:Subject:From:Message-Id:Date; b=KJ5OocOh3NSpemd0BriTN0A+R111EJuTP0Q/2ZpIcWsEkbhq9cSukiBV1g5HWoO8qe24MLRndlltuiFS821VjZG2mLeY8jAmQ9Qrl1c1en7+u1w9a5Fpyy37Y5CcyIwI75HnCuCr3VYu7j4W4iK6oo5lA+qfJM09HY1GuxzTio4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lL+9HXUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lL+9HXUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ECDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746377393;
	bh=9cJWpi9wGCmcq08LtvgvdDRPIJg0vj5EGpmZtL9s59s=;
	h=To:Subject:From:Date:From;
	b=lL+9HXUGxq9drDI1qXyaXTUjDR4qgO/kdgWuVnSlOMdeLi9Z1oNH3bJC7fb+wzfNG
	 svrWgslAEToF2Sb2RHb2luezCJfZniZyc1+kpt5Y/07jmTx6TXkQ/WtqBfhRBIYwm+
	 +5vtyr/Q4so08pt5lA1JAb3bn4FCKf7rGdhoGd4kV0aLJcKbeWWnY/78s4yDa5nguX
	 g9symWNDJ1GGlFYQeLBVvOH1HVtm8D36YBhfbEE/6+cvU+LBf09wLxTKaf61DWyhrq
	 yitjJqQ99Tw26eqVT/IOOIpNIPngZNB4l++EhMcMH+pUTNJ/eY3JnOR3zzj02oL8Us
	 yVpSzjLLpyL9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9233FC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637739357.6549.6870156356588198705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e78f733e372ae48f5535556eb7fa5abacbff1c91882dc20b6ad4d2ffd4d064fc
Date: Sun, 04 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746377393
