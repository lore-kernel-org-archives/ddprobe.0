Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3200F1339B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765550574; cv=none; b=hYxayuc0q0T9uKK+PGGke++AKeOD2DxHqlE2qDoabB4o/TcKeiJ/0ohwElD7ZrkrFz6e+wLSITwno7LrnuKJk/fjB7+CM2qU85NfYt1XGPYcl1ZTrJyj74vsNWRErSpXTi+/8zCKjV+T0Afli76Nzl5W2RbYmRKjy7um2GY1t5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765550574; c=relaxed/simple;
	bh=DjM4EOdIr0yRalophW4XAfwRMt8FHCxaf9dwRdPNkC8=;
	h=To:Subject:From:Message-Id:Date; b=G4DrqPZ8GmnhtFRqhsyEOuPqD9c8lPU5gh2+NW5j1p6DoQM8bnkzRtAKQIt1CB7rzkFNZfwx8u7yVwO9tqWgRzZq884Q/U9DIdEsa1S1v8Qa1w+OkTlJ05qLoM+kbk+/aB1irITKYNQKid5K0LrypTCuzUkygzglaRdWS6UF210=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nr1pFaZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nr1pFaZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B0DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765550573;
	bh=DjM4EOdIr0yRalophW4XAfwRMt8FHCxaf9dwRdPNkC8=;
	h=To:Subject:From:Date:From;
	b=nr1pFaZJmcItVzacsWKJbYvej2YG7/60qpsYH+LXcft9lPyRTaw95oCT60GcwCy+A
	 gCVKXaOybsjrHsI/yjnpb3RVTQE/DQvx0eVORRm5wl0VZIMdMESaIgrujVAVpDO7vQ
	 vfCZDIEcLACxtlBucs0U72KW/X/7t494emWtkYcpaeMWT8IzNVyXdH/XDSQAey1inh
	 if12nPOiFAYf9uD1G3a9wQ9UedLNMvqpb509YK084dycka57d6EyUE0Z7GmLwZI7w3
	 TLUZSD4VNFcsqjFpMUd1Ig15UA3YfskBdvK4Xhzl8As1sLpgTwVTpBAfNX2o7H0FOA
	 jX9EiVG+FEEbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DE3D49230
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176555057358.25605.11232387359996881903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ff2f79ae21c2aa183615b1af8a4b7bf2857d014ba1038b72fc2bc3695e95dd
Date: Fri, 12 Dec 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765550573
