Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4581222575
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769501033; cv=none; b=LiNkM5E5FyJVkBVpFQ7hWzcIsbQPUFRGPJ8nM7OUzlPD+PKd+xCs1Jyj9tXQlvO5qRWUOEgTn71UiHGdkuW599Ch4paXOKqbBXRz/3ZSTIc7pXYcl8buwv6qq/TrUCeZnqql9RSdAU3982EEH9n0C9IS9egs2qoITHJu+X6S9DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769501033; c=relaxed/simple;
	bh=G4BQ9DSjNZny7lPUQgU2Mdc0RIXv/1joUram2l+LPvs=;
	h=To:Subject:From:Message-Id:Date; b=t/Ya2yTB4g9g2TdisfgMesKeJpKdTc5/TrP2xKglr89AVUxrIgGJ/hT3WBShFo1j22xeRr8wYUMwZbWBcdEkqe/CFGz5NxLo5XGj9SkTCMOXitow+MCIfUE6iWp00PfveoHaWK2bBAaPeeXKNE/r0zxCKEPiK7QRfSftnzmNkHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1nos66L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1nos66L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0D9C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769501033;
	bh=G4BQ9DSjNZny7lPUQgU2Mdc0RIXv/1joUram2l+LPvs=;
	h=To:Subject:From:Date:From;
	b=g1nos66LKiXlBFCvG9QB4sHtiEuBr0SkAqXu1eH63DCMkUW2Pj2jDxW/pvahDuc9Q
	 vafpVBuP05VSWpZ4Oc+UcUXRWMJ9/AVCsPbJdL7p2BvfdT9EQH7GIHDerjE+ehWDKy
	 SAFPIcUs6jdDph8kgZZAnS2mqkpXl8dA7Vu5SJov2Se5pG7wOnRPoBV0sjKyf/xZvN
	 xQvMCZpy+ARPOAoMhwjHwe4M0csxU9Ax6a2J86D9Cd7S37ri02NX/i31UWaQEFxELP
	 RFKAF44W1mGhMzme65mSj6cXdj+6kSSrUV4ZNU6Er5piohZFjAwwPjFIO+QorOq9b8
	 mn2V+dvd5NdQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97855D25959
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176950103361.2769.18416194133780642229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7815be693269423862efe8f6f84b1b138aeb68499e518198497cad6dd985efe
Date: Tue, 27 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769501033
