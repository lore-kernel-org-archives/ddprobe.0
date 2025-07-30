Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26554290F
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753836594; cv=none; b=LmNYOVbCecGeAKI/oGLIsEkolMxs0Yi0AvGARK7Og0SNhwbylzzWMDkVsmL4EeeLFAzacxvVVStQlDxIVJbRG5T0cbS5luRPvAmkjwjx5bcwK2Imu68pSwiLuyAD4T+LLqqSpjul2hD0CtOfgIoBgbMofzrpWartpx+3rKn438o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753836594; c=relaxed/simple;
	bh=jYkDuEMrR6mMac9fqhtfwlYZiHktIJxkvYSvDnL4cyg=;
	h=To:Subject:From:Message-Id:Date; b=MUhfrTDDqAIzjVyb6MMqR4vWRw78GvmPQHS7wPl3t1v94M1E56RT0VWAdj3SOX0v+fv49ksaomhtUsKfPGxLJpZkMgJFvQ9WMLWKZwAEIQhvs7TLne43PpCDnOD2KRnjOY3Fy+SkxyLMk+weaTG9/7Or+qwhQJdRri6LRiDUpD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pg75Ratk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pg75Ratk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CD7C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753836593;
	bh=jYkDuEMrR6mMac9fqhtfwlYZiHktIJxkvYSvDnL4cyg=;
	h=To:Subject:From:Date:From;
	b=pg75RatkxDqOsZN1xK8BfUFMkVEdUaAegmS9H8URzgAqG+pbIfE16mpDl0vhwBfrc
	 Qx4uYFifVgJIrxh/ianDuBu82uoziRUXxy7Ipa1swSpWjPDgIeml+ZC4R7c6wwYDLY
	 55Go0bILv2hvF+sMF14Fsj9fjA3KwljqSBbZFjamd9RdTN/cKWfJ/XP1ikBYfDTEsJ
	 w9Li1PwAEfPtVbQ91ATd/x+6riXdRiVYNU0zHqtLnP2FjsSwNZafJaYW30orp9RH+S
	 4BJ+rT9l7FZwwMMCtdkUgKasltT0jQWP9Wem2DZ/NhUhmg7Wl9ndMv62yL81APDC3c
	 jnEZzTa+pA/QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB2CC87FCA
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175383659357.29094.8320303532087322279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65068b891aadd5a04e17715caf034332538e60dd0138023286687f9cdd5e1e26
Date: Wed, 30 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753836593
