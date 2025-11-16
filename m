Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2F818EFD1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763320914; cv=none; b=e3P0AQAw9QgHDPjCsFm2T1T5v2PZDjocXQ+oeZb7eCZJdS9pDmNBrc8wXRZQaYYLSfLsPYu5MNQqVTnpWOfRXoSvvxfvgQNa1EzBr3XulCyaGU93XrDnqo3Q8UvFtfKgb3ymxGuyAMPciMhYcurtWapFcKEwWNzRntMs5b/iZ1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763320914; c=relaxed/simple;
	bh=xAuEmfjpQYDLBy3OdF2NjKSTGm7NTZis0YArJGsK5AE=;
	h=To:Subject:From:Message-Id:Date; b=ZUThxuP6na7OPlpiVnnqtf2aGZK+nxzOTNdLqKDO1wNZ1my8gcegD8UMHjlBvkLtoXx2EXXMTCSIsohpl4QzxDEhR51fM0dRAahT8CagNA5noefT9b77drzgt88j0r+KKyVwv6nsFxu7y2CeR+WX4tRgV8Yw7GM02X80qoWYtCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvn2ubV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvn2ubV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C10C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763320913;
	bh=xAuEmfjpQYDLBy3OdF2NjKSTGm7NTZis0YArJGsK5AE=;
	h=To:Subject:From:Date:From;
	b=pvn2ubV2SwuIjnM6bzxdIrqHuq5cvoqI9mAZaYpMEy//H3hQq8+WtEeio/1ZvQA57
	 MQ6vWlMTfhTt5IknfEl0QtrBik8qmUNX+Dv+te0d2lgKfNm+N1YmkCRbh+9W4F682J
	 aGX6JEIEL4ao4cnIcN9q0wPZS/UYE1XTU9AzaBc8hXpqC/KxILgq3/Rafo+LSSXk4p
	 Ys+kCXaedMS4G59UvKutBP7V8bDiRj7DbcZQ0QdJdft1tcKDN2ugL2iv0Mc41Go32N
	 Sk13Lv4z1PVqiqW7B9ocILHDNDvML9ZHvytMb9fDnlFCtkhFVC1YHWbLEBgzmFu9O9
	 lZ67QEWk6AKWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E4BCCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332091359.26758.2947132511921480796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7036a29e3c606e755dc4f512da4477738329805d4680046c7473b31b7e7468c8
Date: Sun, 16 Nov 2025 19:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763320913
