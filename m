Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EEC20FAB9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748026194; cv=none; b=DkxzkZvVLFViclEZWgkYnMbmZKp2EKGppq3S+N8GcDSjH3K3iJmEyzm3BJTWgSkOjKBDSbryM4tI3gWKQFBBOtJY8JPY6c4FKAp+tR5WedKzLmzTyrHPGdmhYPFHi3Q1n+iS1Lt/8W9M12x9M9VSanOoqj12PyP/eaFHI/SFxTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748026194; c=relaxed/simple;
	bh=DpXCLln9shN+oBEm9s1RAupoqfM3lGmaT1UhIkeosW0=;
	h=To:Subject:From:Message-Id:Date; b=OdkVRVW6+EeIH+rRnF4RM2ZV/v2Oxj8iY8w7xE/z9e1kmjB10mCgd/Y4ssCRXcOZAJli59jlDW1dWQB1TYl4kNWRdKJfnqInIoCn57he3MPYkF0ScsVcn3T0yQsSLUvZCk5ilwFFxA2nnvEm1ACbw+nJ7jwStTlMrG7jxuPWrOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGjPxqY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGjPxqY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD59C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748026193;
	bh=DpXCLln9shN+oBEm9s1RAupoqfM3lGmaT1UhIkeosW0=;
	h=To:Subject:From:Date:From;
	b=PGjPxqY8RTYBzTbV4hUXl0+LUvEln3rGxdD8kWbmL8JdKU+k2I3YyeCIrurzZSqsu
	 MABiFqY+zg7zaXSQBFJ0rF9SVb+HkzokRMZuydWgZwCTrDCZmCVEyAcF1eaVDsjtJm
	 P/9dw3YGC5biz8boMx4N4W6OmVUl+NWE4nOUKgpYN+kEGt6CrzDBOg19PxINhK+r/C
	 rXZ4cnpDHnjZCQ/xKRwLQsHWkNJabwr3VxASeQxaonjDXQqOFfZW3p3sOpyvkEcEEG
	 8SnWxEcE9U250ZBFfI9YMSQMdKCYNSZ9Z0heEwz9XVseKaVeUEqY2wtxjeGYusNhwx
	 c1EfTtIyZo/tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AD3C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174802619358.25772.10451703605321933684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20d2ecac44a5ff3857afd1ee2965205c75c08e91cefc362a3bbccb62ecc732b
Date: Fri, 23 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748026193
