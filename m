Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E4C10785
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763337714; cv=none; b=KUQTO+VoMFuu23aUd4W/aL/aIkrUxIvpOYjWhfo7ANPJ+fYeWgjROooEtmU6Bd8GdfjdlfrPDmnSTBho16qCvl1aFaxIXBUpoz6TZ6g96hgFcPTAZlbFg8GZZT4TDvpzd49GiMVuHhJpxfp+5+DfmpfRhQ5rKBkHPIPVLhYHZLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763337714; c=relaxed/simple;
	bh=7qUCZApa6KTY3golNj7zw7l1GzwEIKTK/C1+pJPrtbM=;
	h=To:Subject:From:Message-Id:Date; b=lP5yyduQ7Z8Nacdpwh+hQWbVPMPP3v7YG7rRrisWk7+/HT1qBSedkA/pofkM1DlRC4VcbLxE1RuBHBB0ZcA1NebNw0ScaAQ6G4WnH+VPyJulNk7+9H8qvJokU1oOJWMiKDiy94mLaIVe8lNDEdQ3RiaEQzvnR0FfVAXHCr+2dW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4KKJNXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4KKJNXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FDBC116D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763337713;
	bh=7qUCZApa6KTY3golNj7zw7l1GzwEIKTK/C1+pJPrtbM=;
	h=To:Subject:From:Date:From;
	b=f4KKJNXOKHvF9zhxa9tzHxb9twu9VKqJ4KKhTc/6EqdaxFYg6N/la0kk8SHzDvZ3p
	 AzBXEbccld0Cw7o6g39rP2nWF71wxmyuIqc/3cSI3n5qn4oeUJxbI8aOl6D9vs7qS9
	 yjr2c+d3o1r6+7Bfyc1ovMWGzUm2PyZLRFWsvjnSmfdSvIbWdfukVSQrXObx6FMzff
	 j9RYrX727vTNVVG0T3ET5LKvQGHXknQcLn+kf6Y1jZrw4IEB19jcNKOLsTMnifPzE8
	 6lKrcdBYVFqMG9tRZU5sW7cAfaof6a7VyWkdTJoH/XqCqPWyWLS2Xvm3SeDJsoLVIu
	 vCacfil+OiEDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E9BCCD19A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176333771358.16600.7497597002178649065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d1a41607e3e264b18917e915504243d99efc53c1991e501b339416515a4bc61
Date: Mon, 17 Nov 2025 00:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763337713
