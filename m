Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072EE5B1EC
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706884097; cv=none; b=U7YhhvSiGgdRbpmIivToqs2s1veoYsdCYfoMd2E+T0N6/JnlcRtqjgkfjYcWUu74dq64QleRgz+/HqeiHpMGHeAhEPP6DcmXUj17il6CpBXCOECydecy8bAxWkt/qFpnUHpo0LKr4Qhofm1FGf+jPsFvMNRR3kwEV4yPhoI+rOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706884097; c=relaxed/simple;
	bh=2Ca4tSLuiWMeeZshYI94IjVeXEiWm8sWbkUMYGAgchc=;
	h=To:Subject:From:Message-Id:Date; b=LfL69/OepxMRQPqB5REDSIjqp3o6D+lFmNGxH9oyYEvNluf4vjwfNkvUtrwmLA+s+g1DB3dpCHe5l9P2z/SwFVYvu9dZ0J6rIL0uqSQq5kVnQ7szf0UuyEPiRTzDa4p6gmOiAMDOT0G4EvPRxLWHDBgWhbjvv6/FruUwDjUxXqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoPUwSkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoPUwSkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 811C9C43390
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706884096;
	bh=2Ca4tSLuiWMeeZshYI94IjVeXEiWm8sWbkUMYGAgchc=;
	h=To:Subject:From:Date:From;
	b=SoPUwSkkQx4EGKbftFPsz/amDgIsZ7rl07XGTimlqLFi3P8gwo0+HSyIRHcPLUmz0
	 CXEoxu28w9Suyd2H79r0ItaeSxVag25rZGDO1sFOYSf5mP5ZQohymzkfExH/zJKfaV
	 bITmCZWIAw+S8BtwSBQ0HCxe/swD6aVkOBjejtGncoVK51SUVs1bRIHFc+Iz14wxy6
	 lPRpMeXd3DwPjnGY7DQP2VwFxEKAeZsYl+ZwogzYU7VQCNkufNWE47UbYHe4V5Jwnn
	 PVFQ+81W/A6inkXChUa/WYhGDkxQa6LPCsK1FZKw3IH8ny2oRTi8NiNbaSu5QRHxSL
	 VzxHF2YSvhHCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6789AC47DB3
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170688409641.23326.2612324765724234600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8491e00192929d32d71821fdb49c386414a02f043d0034b11b55911689b1fca3
Date: Fri, 02 Feb 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706884096
