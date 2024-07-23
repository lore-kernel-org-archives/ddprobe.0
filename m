Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187F1152182
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721740554; cv=none; b=DT5o1YW/T5D6l4jl34mFYXnjqAMSRCGbmTmW9YC3tD0fT1iFIGeTUSVO37JGvPszCA3dHHOTQ2oj/gMeKCQB56Pfaa62W5hfTSFX+gS57nrQzJhrA/Ix8RRgeq8K2B7QXRxakP6hsTWGk0/v4NTvymz+G73nXrtWaA5L84FlAUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721740554; c=relaxed/simple;
	bh=ILGX49qsJhQWDXyJ5jY8GNRA3yoXtswWW9EiwxE0V/4=;
	h=To:Subject:From:Message-Id:Date; b=LFMqtbf5+wKEC7r+U2paQej0hOCW/VuUVvnNzuxxWV8S7jNHlUvtLjOZHAnaHSIJfHITh0Q6jsgjRajvJPSRPEoOGoelPAr+JYTK9BUugT6G6ebng9TQP3dW/QJ1hGlIVvuSfgkspaLriA5zCvnkOh+NRK0NU9hxSjBElo5Pz2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJmPyxSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJmPyxSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B8EC4AF14
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721740553;
	bh=ILGX49qsJhQWDXyJ5jY8GNRA3yoXtswWW9EiwxE0V/4=;
	h=To:Subject:From:Date:From;
	b=IJmPyxSaOXk64RrdL6jAmL3omHVLE20m7+DnhA3wZZUQY8PQN97KS5KllCrrqscf/
	 9+NtkHoHQaO4G8rZxnHaR+ufKPjrNW5n1ldwttpNFP/oq43VadKcIcHR7Slj0vAbc0
	 HKg/z6zeDMHPNmkTpXU9wqTOBx7n9aFYdTQv9ZkLV3d+kXZR+YRiUrBU21Ht4XaTeT
	 Jwkr570Fb7eAgOR299ImPZzLDfGxCMDeqoWeH9LrJ8cjmqGdIeaLo//11El7F5iqBl
	 985Vq8/7ZR/Csc9mppCQR28L5WaLPDCxlRDZ5dNZfNW+FfCUSaIZBHUdcgcKIB4t8w
	 5YTQocCQEhrfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C94C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172174055359.6677.10174178911023117703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 384f38f5e2323142ac3cdfa7525947f371c30b2e80bb4b3770c1b0754164fc6f
Date: Tue, 23 Jul 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721740553
