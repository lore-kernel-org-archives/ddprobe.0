Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5E72459CF
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768671234; cv=none; b=OosLx/2BCQVWlDWvCXcL9gWieye8flyo8W1XmGSHG2U9v0iznuFTFm3TgUHePArcCFaNAoKum/jBK9kygZoTehLnsNk9F4b3anUopeD4cKj3gHQCWgSjsDwvWhaReVWtRhDue4wmeQGA56ZbnvICosVWt87E3aaiPd04Jq6+SAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768671234; c=relaxed/simple;
	bh=QMIcw64EEWyAUQpvvALkrLTLvJT1OrNZtfv8dpUqAtY=;
	h=To:Subject:From:Message-Id:Date; b=e0UopOKtd84/E+fRTzKnp0+a+DwisKhHDNMMsAXE4kbjROEagiV3unVHsb7xUSceUfVXdoWUd0ELpUMhNPu7bzFklCAMB23qdU8xeo9uRPjVz5QSSnaEJenjp/umIu9tDMx/mUdyPfsNI3SrslvulTskPmy6AxSGRF+anNkwgDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhYcc+Yf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhYcc+Yf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A123AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768671233;
	bh=QMIcw64EEWyAUQpvvALkrLTLvJT1OrNZtfv8dpUqAtY=;
	h=To:Subject:From:Date:From;
	b=YhYcc+Yf+U1RcuZfeqIBcBDSkh5oL+Fub1G70wo993ZmiuCLbraWmLSLPalscCpnU
	 KKG+3O8PumhPdjzXZW4B5m5bXwmmdygUGEtQc7yvFRT73reJAspYUDg1Es0Z56kz31
	 szNjJ5s3z31t/QimfT5W28fpz1a7I5i4Trub07ZXS7kY5hD7fAu7oeUb03wULb+IGJ
	 o+D8nFTHFANGn2Z+ZJZrjQc6Pkcz4fwjGrtln+KU21tjymUPBwD6bAUcfK3xUoihgX
	 HJpCofhMj7a4AUVBrw7G5u2rWcFdAYmKql7nWWnbirZAggPPg0ovcm+6/M0W1iehPY
	 bJd5t3S4YW95A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CFDC98330
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867123357.2393.3280657300179007982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a135b4764ccf7c2e401445d8c831f666668eb5cb0dd2e919150d3b1bfd6b52e4
Date: Sat, 17 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768671233
