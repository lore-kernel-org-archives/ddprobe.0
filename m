Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EA35EE67
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 10:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715769743; cv=none; b=PQRPpnfcDvv9GTP6WOvUROQxRvpa0Pc172nczrFaJ1xnQOk27mxfF+N/Ky0QieCHzBRgGjC4WELqZ7NivTV3qrFUb6bKXT85JkK4JMJq30HKp+RrVQzdZsu5b+qw6UgkZJK852+ikLwgE7Yg6C1o4crcaWWsaTJSwjP5Cz8GDn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715769743; c=relaxed/simple;
	bh=FEZaaofBoGFWztyoe51yy/fhOucrtzFxag7VkF/EN60=;
	h=To:Subject:From:Message-Id:Date; b=dgc1qxMcrn4swW9UKuUBAT1EGUWoCwmf16hE47HDeW889hpAY3CJ/vt/Rk/V0s5Ptda0TMskVI03BNX5QbeAJTSGTBUU5yIhIjTrIG90WlPjW1F9tI99qqbBi4FsZ1rXkRA8wxT7isUnUF/n2UuRM2ppzy00dhH4Xq7OpLWLHVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phjTeQTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phjTeQTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0257C32781
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715769742;
	bh=FEZaaofBoGFWztyoe51yy/fhOucrtzFxag7VkF/EN60=;
	h=To:Subject:From:Date:From;
	b=phjTeQTjXTfrUW3MY9PiCW3NrKNA7tLYU3qdOa7tYxUutAy5Bcd1Uw0MfPwhg5BXw
	 AlCAx2dwYd0fYD8UBAZz7E+GK+ls2f7vHHDMBUEl+BjpmuDeOOOKHUgjAS3GLVLyD/
	 lfRYRFTX8lM34e8hJI7reH97aVv8bw5DlrCYnO5YLaaj2FCHbVzcC3JaCaeSYCE56C
	 3e+lwxLKQPVWg6usLisCkWkifQhFfORFIehb5CNfKGDoKs0vxe8bxlQZNr6QLHsBQ4
	 V9qSn4JaZML5issFgPKafPn4rWTe3wsww04rt9O8R/syGN0EUFZuSQ0Z4qpHdR6c3T
	 ddnNhD0z0FMnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE623C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 10:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171576974277.32026.15818635204944550503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d50d7ae3a793a1d565882c8bb90b0d78f0a7568447531694fa209e6195d58fe1
Date: Wed, 15 May 2024 10:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715769742
