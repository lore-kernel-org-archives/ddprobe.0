Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3951C3B894B
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780397074; cv=none; b=XD5/8kQbmTDEOhRgSppSxNoeF+ff8M3v21cxidWx/0na6wrbkfVhBij1owlvD4EepMIEFZyRbNu9yWic9EiokqPb2xTcI33JLOK977mfqaCV43WoazBvyT+jqOnUbUsF+I5kEgnsPkVxWbmWVGztfpiDARndnVDl3uxLxDEXq9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780397074; c=relaxed/simple;
	bh=Z2c/SaxlB0v1CrVe/ShtL162JgbYrZssWGYyFEH9t7Q=;
	h=To:Subject:From:Message-Id:Date; b=VQHsgWgtUyyviIm41nYdgX/lVcV4JIstUlwvi/6abn+v0DfO4dGBvyIeABDFPDJBXdXKWuP0LZpcLtIImTtrBdcut9SngfahQyOHwlt4W15tand2m5cip++WoctzOatrHy8qq/GagMbVNh+3y9LudJJOEUAsAEi34ZhALX00BPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/i3MXWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/i3MXWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9657C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780397073;
	bh=Z2c/SaxlB0v1CrVe/ShtL162JgbYrZssWGYyFEH9t7Q=;
	h=To:Subject:From:Date:From;
	b=V/i3MXWpBFLSBbjV73aknoiBy36Ft/my1sm+wrZK8GVz97gvHrzI/vYeZapvu3t3b
	 3m/IcW38SZ94JG8bxuCgvcGltVc1AKu3OsGFk+wA0zV2htPOpmLlz5UEN1Z2i7XuoP
	 4J09KfwjiXdOBmEvbOVeVG66UiD47sMwN0zk+ANjj86zDBLLddWFy46foZPLCVmIg+
	 yFOratb7cFw4/bWvMSFZNAecynZiuvoQmd6kr+W0EX3bBGaFOL8HlNV2Z8yG33dKV1
	 gbLcpw4L2/Mw72KceuNLCHeJmJm+Op+RiOVT8z3U55aLInw2kc2RhgRXnNtt9uA6r3
	 x5Wthpg13ThtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC635CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178039707369.16152.16540299833892849435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31b4467d6d2cff30d8c1693185f3e2ac986eaaa78d7278c52d1d84473cc4f025
Date: Tue, 02 Jun 2026 10:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780397073
