Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714FE33B6D9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789927834; cv=none; b=LgzbYcDv/ITGa+u2TFwsSvq4wVglH3LIgcsS7yXlwUfZ0zENPmtCfkOyzm17VaVnSw3lJz0rb4wDhcgXLPR/+iE8kO2JfUhS+CfP52/eupnlobIsVT6hqI0VO0UCjo3zQa/cxLgtexoifoRAILck50DSSAEBbrsY83m3rqWmFQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789927834; c=relaxed/simple;
	bh=c1lxJ+WK+e/C50+5ZHrXL/XZ3+c3l7I0dTaQY5mid4U=;
	h=To:Subject:From:Message-Id:Date; b=PGKEkAfmYitmnrko6NtDjPNKwK1QxqyncnrKdmjxXPHwFXD/omoEXLW7DBKIXtUoiBbRVQqO0Xe/MCQnrrmWui3leNOEkyK0UDXEbOpkNGj6/XVAiOZDUdSybpcoO/f2SSj985z5WC2w+LVzUCVPkMgMCeoaP5Cw812Hu2bsdjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0wmN8IO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0wmN8IO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3EDC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789927833;
	bh=c1lxJ+WK+e/C50+5ZHrXL/XZ3+c3l7I0dTaQY5mid4U=;
	h=To:Subject:From:Date:From;
	b=s0wmN8IOcnSbEsRdKqqSNFExGKc+cuh6VGWugq3ntGqE8nE7pU4iVgyD6i9kbpIj/
	 +lpomqK/wj/a4ZDQ5jaVDxgOySR35jh2XDXfg+/Vq1qLzm32D3QwJMugZEPz7rrXDn
	 egFO3AFuLDMmPr62Tf35eGBpsWQwEqv3y5VMv4CbPZlQ6TWC41S+d+/CgdrlhWGpAs
	 V/AGBcUa8eQMTbo4N74w3HjKfDQvkkLWrq7KBf8JhDIbdItiTQb0YNiXazF/v5Xh5m
	 VchZTWZBgjxuLVFl5p1Pn7Mbsx2QX66rDBssm7400AUFWMijirdKz9t2KhjiV3DpYK
	 HDK//1pG27kWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B154BC982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992783369.5126.15088905952851292025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec77c846472ff11ba77102e96bd9238decf680dda24f5d2f9b63701b539b1d9
Date: Sun, 20 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789927833
