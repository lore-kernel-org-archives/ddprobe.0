Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A284C271828
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 09:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739353855; cv=none; b=uYcllYN0uHdEDBs9lSijer1Be/unXqCGCXq0YqZ6LGkOTtDX5Qbh8UcaeRTlWbmGyOrkuZflhAWGivJIRybAb/a+3exT6ZhspzQl79UNfQ8rzKbE5XoWcmj5LDjgWxYqGR7PM+aiVel6DKY8638IoMmKqZHQuyseTI5cj/h/WCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739353855; c=relaxed/simple;
	bh=Fel2RB+7QZUhyFWq5V9B4avLtqWzW5sMzdbs4g2XTpo=;
	h=To:Subject:From:Message-Id:Date; b=XNCspOuv5HN234XfdZ0SaftkEreENnlBIwrS7B0Qj8hGjYV2AxNf1aDE0NpQAQwv5GYCi8UAaigmSgHqf3PLNmefZSvcjjhrF96pBHqNf/uwZpBUuFsmNtpAnXg0WLIA7LmbqnoxxO4twEqBHvoYSIGzz7TrbDETtbQH17pZT9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aV2UUQl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aV2UUQl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D5E8C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739353854;
	bh=Fel2RB+7QZUhyFWq5V9B4avLtqWzW5sMzdbs4g2XTpo=;
	h=To:Subject:From:Date:From;
	b=aV2UUQl18aoCuMubqOGZjKUCxUZ+cuvqSRGySUrdVa9VHAkPiByDYEd1d+usQE3QB
	 i6XSm4qfo6TbvtkEjZs364nH4sIoNw6ulaQq+p9tvVSXudIqcLAhKCEfrsOWFYMpTY
	 KYN2MPu6I3SW+/AIFJNaNkVAickby8RA1U4vcQiOpuGlu+pkz0QFaFngcksm9qAMpU
	 5eJbmwgdGt4bEyRNdCcCxJouEU/oF3mmgp8JYcUlxhheWKk9HeZsMz7ftIPAkiuomY
	 26HXJ6DDPhMfE66IWs40z3IYrovtotc92bObLMXJoauVn8c+4CR/neu7gf7fhIjY7V
	 cKi3/cXl2f+mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA902C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173935385379.5465.16433339538343888491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89acef4a543db8e3bbd240f6bfca905e56d3426d2923dba8b20dc185049a78d3
Date: Wed, 12 Feb 2025 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739353853
