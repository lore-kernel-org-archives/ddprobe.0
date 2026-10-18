Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C87E13CA92
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792281634; cv=none; b=E9RfSbYj2bWDDcSbyQ2vvE2dDYyKSMiXhUBm7Fk006S3Nxc294rdfnyAz8PK4hCV90W/Thspx7NH4PjPguoYR6EyY7p6sIGWkOi6Kt24Y3T7BhVjfaASePWppNZR6m8wO5fmx2VkE+2jfmu/N75S6H7qJRrS0vQDr9Zde3/hh74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792281634; c=relaxed/simple;
	bh=Jj9YlxTbzfOYqaMrNFwc4+U9GMeW4KWkm0eSbgoDr3s=;
	h=To:Subject:From:Message-Id:Date; b=o1GAAth7Bn235cXgZQeIi1qR3I/RuPrT+mWEgA+yh3lsNSjEjVaVAy+wSf+1JrBo65CZf3hhEwh7zcpDchSjv2ZRNUnuJhlQmvrotUeotFlPECJS49bPiiDllW3sZlRBR5W6hGpuPwV7rLSdrEL2C7Fiv590i9wCyvEzyY8lNTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PeZ018bq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PeZ018bq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA233C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792281633;
	bh=Jj9YlxTbzfOYqaMrNFwc4+U9GMeW4KWkm0eSbgoDr3s=;
	h=To:Subject:From:Date:From;
	b=PeZ018bqcyQ9VNaBCPWVozkPe4oFU9FS/5G/cCPfBr6p8BQPOZPbTNQG2cESNVxvK
	 Fd/Ei46f2IsdryA8iB3ekR82e8l3u9w6mOwVVkp+NPYStTXUc0smNA2RyHJ+CR+swD
	 hLVnn6YmRUXG/ldNsaqJY/8EaMwu9nUJWEBo6EzDQ2qgBMItqE3RKW4Up1+E6fupZ+
	 vWGu4HcoKKQiOOelYl6OjCMrdz8vdVHoCfVV/Ibw9+XYlgFHSqjwBYGFzKYjZPcAb+
	 9ZvYltIw/ALM1t0vkU4JXv5bZx/otoULEgKOWCQNmD9CBddba6HsA+6XVzBTjbXfmd
	 FdKnr1I6P5LVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33D2CCF2C7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179228163374.7393.3787350394785799722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e332b5e3e2cc2a5480db57582e22ef7ae0d955de572063abf873571a25e8b79d
Date: Sun, 18 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792281633
