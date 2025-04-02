Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444E62E3372
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743608394; cv=none; b=LNykP40nQlOMY4PI2iFloALABjHSCpFgNH03rJMaI3uEChBpz53T3q6L/tU2qR8ZSd/rILgoP4Kk07PzeJh5HNlYN/i2ObJvwqu3hR4PqSn6H8m784+uaircnHjXVu2Lc7+sPN5wO7QDA4lXIgg7yUpZxodYe994NauBSsFpF/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743608394; c=relaxed/simple;
	bh=ZBknxgm9+1ZfrBczQs2olncN+OZzm2Z8sUjhz8UOgBg=;
	h=To:Subject:From:Message-Id:Date; b=DFfv7FyeRYQ/GGVUhNCWP3fM/2fSxDQ5qSl1/GJ4WLwQDUi4ibvDERvjSgM0a6FOZ1j99UuMHAuA09iqu2gyaBKDV3INTHAwIw8qxpJdU6mGR+ZEMkSvjRZJ7vhF1qzFHzdnadHqM3WuVqXaOFFAO6ipDFbX9KlflWCz0a/JgKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aawz6T4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aawz6T4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C9CC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743608393;
	bh=ZBknxgm9+1ZfrBczQs2olncN+OZzm2Z8sUjhz8UOgBg=;
	h=To:Subject:From:Date:From;
	b=aawz6T4tz2keVlo6Mnak5D0YLaLmZ+ceoQd8Wo7zKnU5/GYrz9aD5RIhivd6ZGSZc
	 m8grGljA7cah+BraDcJk+NbU7jK/vOh/fU79HMUJJ4fSYYu5iZt2XuusJO6QCt3OVB
	 LI2TQ7sEnt0t3FC8okfEFgPkvSBY5hqqBaV3eQFeNUEDrW9z/gh9vbd2SMHOhzD16e
	 x6D23iM9MHNa8mrUPAVufkjX9I2XlGpSqu8PUn0lEfBL2C5XSuGMFnKfT+iRABTAne
	 sWSf7b8wPzJwOY36E59DyZOpyNxpZIzRBCAyMwd+OJBEz8tdAlBlnnw51lsbKgWRVx
	 mm1NyISOwde3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979DCC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174360839359.24540.1989084892198715128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cddd7d8f6c600903e7f5a87114368b029024e25c57bdde5cc25e082e04290fd9
Date: Wed, 02 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743608393
