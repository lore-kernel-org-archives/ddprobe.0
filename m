Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4162224EF69
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741861734; cv=none; b=C4iPxED1b0ouiXJ8qqGhHmQrn2izxGuSOSNuoJmxUKEPH1hphaMe/6/3ImuaBH8WaNi3vFJgSedvYFeq4i49Vhgq0q3dRAgUfls+yMkQLRXFhf9m24dWAhJvzN3tgLgBIpkckFbyVjmSXW/tN9BjRaKbcQBL2H9t0V6Xr9s5KrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741861734; c=relaxed/simple;
	bh=rrFN9hbTaUDApdV+9sWbuUstYxWYints+DB7YzLtY8I=;
	h=To:Subject:From:Message-Id:Date; b=W96MSgB1rgGc4LSq89vMSsRsGtgJu2COaWKiC9ogFbbVKVmPSJkR0UgD4Qnv52TzY76EyOV+5RZusW3bl/c+LTP8WkxIglBqAf1AvYdGVAMc6IPRKd+eiyyce4BZsZgrzTwLGsJ1GYwcE/L8407AGT2fMiXgGWTM5p0+wAml2oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCuiFlhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCuiFlhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F4BC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741861733;
	bh=rrFN9hbTaUDApdV+9sWbuUstYxWYints+DB7YzLtY8I=;
	h=To:Subject:From:Date:From;
	b=tCuiFlhzRdS+9eSDheXdYKQipaoTyHQhkOczw1Z7DPnqjKkglGvaJGBLJHAZHQWd0
	 uOcP8yOkdvVLRuF/WKyMpEvsYZBxJH6zQYAeu6ZcYccGpaTy4b3cp5vjyF4rQCNEPW
	 dfea/dWW3DtSGK+dlcXVZBFkPYKc3LUTWunjI5vgD/pfEYLg9ueZgaNAcrkjiA111O
	 ACk0tA6sv1eZYeUZ6YsDCVDpOD9+kTL6RZfTGCK0Vr2i1gecCeORobFU9qbiYYAs4D
	 Mvh8ZP74cjYvtTzgBotvyxugEB3AEdNKtLlubuYMrH6wiMVVAldB3i1V5SBxRxTduJ
	 LWfhcJ7eUhuag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9152DC28B2E
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 10:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174186173358.11211.5256131993643181044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a575b28d7ad52b74ad0e92e8438440936af1a6bfcfccdaf78d9c8a0717559bb
Date: Thu, 13 Mar 2025 10:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741861733
