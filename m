Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7AF1F8691
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761017994; cv=none; b=fxlyUrxTlTPe+vCiM+UcMtfwXMMp4LYQwidIeg2OilDrWHnRZc9Rho2PwelYzu+zPq7rVkB+ePbBs2lIMHVut0PmDZ2utTi+hQsxtNq4gW8TrOKG+5Ak0BFz88S0FBdtmB4f75KmHHMtgPtHwfGrYyEVm8ee+N2XuQGTsB4gn80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761017994; c=relaxed/simple;
	bh=bpC3euSPiGXouxD6v33StbZpshG8pv5Y+I/gZHqhsn8=;
	h=To:Subject:From:Message-Id:Date; b=q1XNkH0X75GgMGRFHefRgJ5V2C66X2mwWyDv3yU80/O9DwSeSZnBDx8yhtwLVl0z7osYG7ne39fqs4F9ugDUcUkx4znEtkNPyv0KIQEJJ6kwL5JpZqCM7X3mHudMifXvtOVyLF9DYh7SRHXrojfKk9MJzEGuUozRDXJgDACjxIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWUDEWNy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWUDEWNy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C66AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761017993;
	bh=bpC3euSPiGXouxD6v33StbZpshG8pv5Y+I/gZHqhsn8=;
	h=To:Subject:From:Date:From;
	b=rWUDEWNy0i0zDqf6frbj6heKNoabsUMPGh9FGj1u+2EjLf0raJLlbixzcjE9LeBcA
	 lc9jyjO8FrXULdaMgF5yXLDieneKy2CXXtqc7z6PG8Rx2rgtonaDplzQ3mICMG1YuO
	 XpAfYzgL+LBqr7YoI4eYabjo80qB1cUIv21zPuvFYmy+pPFFTnLdjiodharp5DZC90
	 ggUhnOG27jNujwiXACRdLV6dCC0Ae/lb3Rgoa7nw6zuvr66M5wotEVyfLeNiFiEmer
	 j/u584Mukr3KD5uADeRoUgInhlji2CYW/TIEw8aSV1NzaiW7F8q2yPWqR+X9yZy+6h
	 PnOtu/8nflQcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C54CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101799358.9409.9868946557969717226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10665517d1ef13e754f2f5644fd492fd82f761b360a7ad29576de6e840ca3434
Date: Tue, 21 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761017993
