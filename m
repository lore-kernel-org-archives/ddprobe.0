Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E26221FB4
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763332314; cv=none; b=Ti/Mp6x+MXhZuKPYvbezq/hqyCvz8wTmfL3YHT7wwj6jOwnnqsd42gBPjAjlHcuPXMPXLo7j/gKq/Lp4UL8wFRKOh7JmAMHAUDJ/8ZT3WrFZIRXOv1loA9jpPdZ1X7BD94U01cpyQtBa1X2Z3Vov5DuxYKO93DYQqhdhIrIOa0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763332314; c=relaxed/simple;
	bh=7M+L0YLBCD8MVBN1UmBZ2bcSXHu3x0RyVa4HomJ/R2U=;
	h=To:Subject:From:Message-Id:Date; b=FDOtKmUdV7+N3dVth4/UbRqyacTrZ2BGl7GZOW17WY9LhE84rA64upnRvuiMZtDGKSseG5sgv1S/JX9AmPP0TjOHkEfuAZDYFk8Zpm6HCD+pt9SDkDcG68V/WunwDxELqjd/FH6x7k0WQMvY/VpfxiGmMxv5KTbqLU1RXfbnj6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gfr+ea3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gfr+ea3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FAFC116D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763332313;
	bh=7M+L0YLBCD8MVBN1UmBZ2bcSXHu3x0RyVa4HomJ/R2U=;
	h=To:Subject:From:Date:From;
	b=Gfr+ea3ugxXFj9tcizZBMrv+j+Gh1GbHhpBhBE3hkVBuORE1a/WEPvc/Lw/jY5YAZ
	 cXaeu93P7/mZ6HQChwUQo6H5lJHwWsqMinvfo9KeFnedI5NF70fTGaKB8f3/AB1etG
	 ZyN5saXMWjCT+zqGgFfbCGQqKLx1VwCN+hAkXpaIvdRTsGOEMajknVRQ7SeHOjxhkE
	 J89zzIWp/0Wde0qSdiBohLQ9okbSIUCgbiy6hnpb0bGeyjOTCl9v0kNVPPAMrVimdM
	 EimEGYzm+hwRZIwSFqn8fE10qNXti2k4Oi3z3yyovEKRQIJlBB/tSKvnvhZFv9RmI6
	 zUbpKA76fUTsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94571CEBF61
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176333231358.24504.16849726983557099129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73bbe47c3ee448a9fb0fff62921cf8f37b855edac7afe5b6f5eb385060cfcf22
Date: Sun, 16 Nov 2025 22:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763332313
