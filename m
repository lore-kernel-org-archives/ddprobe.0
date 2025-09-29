Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38ED3245022
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759190394; cv=none; b=ScEJ/SmXi+PCpZ8440l1zLilRa6HrTjCBoLFZ3/rOMNelNCThaYQhc4qYxBDmmz2W7LU84alQUNXhq9UGWZfTNCeu5wBB3J4hhRxYkH9azlBs9ZOnJ0h5zy28eCXAEOVgtR2+2ZBP+SFmxYq9DfeJIxf0skK9LPwzIdSTLdkfWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759190394; c=relaxed/simple;
	bh=3BB8oUDNDTTWW4UQ1gJRZtA/S9hohdGB6EH/RDl309w=;
	h=To:Subject:From:Message-Id:Date; b=LQ2O5gnkb545gino3IMPtqvqk0AqD50jnZytXDINMmRkWgU+pMOQ1/DFNnNYLqvHCxSsoEE7tjDM45p+F3/CfcZKReR1ZhPxUs5QOxXDRUeBV1Yg7P/cDsKKoGwkNLpedoKP1/GzLu5sirudE+WySZX4cCZms51AupQujStIh40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUnSdiW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUnSdiW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6509C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759190393;
	bh=3BB8oUDNDTTWW4UQ1gJRZtA/S9hohdGB6EH/RDl309w=;
	h=To:Subject:From:Date:From;
	b=UUnSdiW9wNl/iDNzod66KD21K5fMyzPY53zUs6nQMNWKXQ96yOPmirh7JRXSvdF5E
	 7ivwbYqOPgqt58xfPGeajPjZddNWZOT7RPHeohMf3ig6zj9YXz9g0XWOdN9AC++Upt
	 LEBqIEAES8WLUZQrptgiGTBaT0xdPjPdzg4hWeiT1UVtFX8azYYiQpj+7G5E854wUq
	 /gjz73NhYwXBfjjXBgr/tyuA5fqYUNkNo7xKo7Ghc6wq0Hu0uaiiqZPNiG6NA5huYr
	 1VlHuKfFDJJBfBTjkWdXwCDnBtW5ppkGXkjkJP6xhl3jm9Iwyq1e7S2vyAyFJTMQUW
	 m5MwZVWe2Y5vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9105FCAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919039357.8387.6614913463900654397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f2f34efc0c2a128a163eea845d67b943d859b53ff44ed9ecd3c3be2299c9d9
Date: Mon, 29 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759190393
