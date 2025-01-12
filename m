Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450AC322E
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736703954; cv=none; b=ZOONMaISmV9xjbJFLmBof24ey0CQW9BvlOHSKoHpkeiUGjATobwur+ojwIb6xlDgboY2RUseQl5v0j6ozEAAiyFVCEcVFsZ6DLMCPJiDNHBYjBMBuBFpDbBdkElWZ66HKjqyjE7TRtqarYeNCVADtTv8/IEidG51iGvlc0kwgE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736703954; c=relaxed/simple;
	bh=Q2xIyO0S+IxagenHyIUbCoiu2hXr1AftMTqtj+wSGW0=;
	h=To:Subject:From:Message-Id:Date; b=QeHMnevWIDGqexUgVyLxaQ2Os/OhDUfdXkE8R4JowtjmO1MfgPSCX6dUzlKdnj8ObHwEdr4Xh63ejiR03MwSDHt1XzmNNIKT3rKuj8/IjS0hX9E+U7QzsSdaNZtOE9QMd1CG804olfkJ5iRsX9uIVR50E8X3cyJNAqaaOgGWKbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQ7eDjcv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQ7eDjcv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0EEC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736703953;
	bh=Q2xIyO0S+IxagenHyIUbCoiu2hXr1AftMTqtj+wSGW0=;
	h=To:Subject:From:Date:From;
	b=lQ7eDjcvRouEv8YtTROf71eqvNHOKtsfjAmoaye0U6qPPb8x7zR87Ae3EuQAnaSmW
	 AzJUAGjaOUJAdLwseA28mCi+n/Q21g4+WLcRZ57wo3aHYQK5ep0v2DrPkyym4TtyBD
	 rM+Xsc5NoMw9dEiqe5EnIcf1J9EzYSSTUl51tA3M+nVWF7Kf1etHEprh8LaT16cJEO
	 9nqMKPHogMVmNX4cq5iWBWEQE1CsEZjjs/l8OO8GzZWiqLWbEQ1Yy7BO72Blrnf2Vw
	 oRJsi3aBzB4ER7MkiBHravUD9tVJyxJNTbbapw2bvIxp9F5SLyefVdF+XR5uZ65eF2
	 bghTDzgikTR3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6DFE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173670395359.1912.8835260640432637489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355048c499c339610bb5f30b6fcb75b746b1295a9b0889c95853717bef98e2de
Date: Sun, 12 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736703953
