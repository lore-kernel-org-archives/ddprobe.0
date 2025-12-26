Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193AC155C97
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766712834; cv=none; b=b/WvVxy89bWFaPA1V/kpRqzyGRXifKk8USp3Zi8+6sW7ySaRA6QhlXRcRX8Nyk9DwjV/PZoye/Lf8QmO2pgpm3EotCELDcjp32npqFd/h0Nh8l5NcwYJRROlhKv/kDYMxBEEkAQnV/wcxOYVaYdi7j6knT8PBY3mZeD6T1733XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766712834; c=relaxed/simple;
	bh=8j8n296TXot67CJN0waQydHET8PNkA5qF5CY4Tu+EVg=;
	h=To:Subject:From:Message-Id:Date; b=HPRB43mHfZDIRA9DqAiaPsxWZ0+8cTPBsffDk2Mgl1Uxmc7p3mIJCg7eZbAe8LDIaOc7GJ12gAeuAyQMJ6leJ/klXgtsqs9maBVJd0G5ffFSvPtl5xQJzvrKWjlmuP93I+Yl+ViN1gMCJUjBVD0Wg1jU8OspsC5iiGCtN0x1f5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAqNNkd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAqNNkd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9271C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766712833;
	bh=8j8n296TXot67CJN0waQydHET8PNkA5qF5CY4Tu+EVg=;
	h=To:Subject:From:Date:From;
	b=FAqNNkd8J9JxfbTpv0bvETbY0q0u0OA0vun2f9YzWV7XrNCD8Ji24+pavfpiqzYen
	 uPXoDrMSJP4+t0s7ZRCuMO+eaRf9QzikiljNoZZmKDaU3ARoVOocjaQ+cautjoFyM+
	 Vt0Wqa5Yt2/HQQ54URI41qPXzZPtxrm19K7EfTI8HiCYt6FnnRENIdBHfNZ+3HLYu5
	 8gW8MynlS+pzmzKdGUSxIBbHqcEtfl5k+h72sbLkZJbTztTgeiXql0PrLtK8V6370q
	 6zMbjf7/8sW5pPUlHB6KY4DU/xyantrxYHwemgjnLDsQol41JDrGitpkWKHZTmc9rB
	 bI5LkuuH5Ea1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E68E7AD69
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176671283358.1436.160379530055950984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325941bb6736fa5fcaf84949c23cbd6f8a134b9574cef69bec9d96fac71b7f43
Date: Fri, 26 Dec 2025 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766712833
