Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A1B5336A
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707670097; cv=none; b=fZbIbQxCFq8ZlL/TDpKkPJw3YQeJVG3+JPqNV+HUiJC20kV5oUddoaTE+lsCbu9EIvsu5vHfgIRhTg4HvnIVcbCt+bH7xrNQimk7JIHXNgOz10bL9CAn7W/g2HkbcvOAOGYDzYmzyjEk5HNLp2/Ck9jn2XI/p9jUYgG4iJMhOmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707670097; c=relaxed/simple;
	bh=+H2tUvMDg5WNasSWQ87CifF8wVzb3KHDWvRF0kMaVqk=;
	h=To:Subject:From:Message-Id:Date; b=RaEUpXvfgPJEqSe5nnKv8rYjOPd+1Wu8UF8pcl6zBO0JU6wxXkZvOdusYch8NiBFgOrKQWqEjr3u5ZviJs5Fa15wP1CgWIV6UCYV4Vp83t/TG9VkA53CLhGf8fqc7Nw8tBXNGIEcs8bAmFdjZoN0067O9k0Vbput5Lds16KOkV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wct9fmy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wct9fmy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86D7CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707670096;
	bh=+H2tUvMDg5WNasSWQ87CifF8wVzb3KHDWvRF0kMaVqk=;
	h=To:Subject:From:Date:From;
	b=Wct9fmy0e0a/LhgTpQyWaSUrMXPKg6bDRDMJAF0Xc0Shnm4Vl//z5TJ83f2so+D+4
	 ZBsGLCE76A31rIxqOf+zJBSuFQLG8UKSxBXdb71ZnU2mYpvDRAygCH+wvI32Dndsq7
	 NMfoyVRjtpgFCurV3MsOV8HjtUBU0wNi00aYBiG6llvkD9/y4Q98+r9ip/PF7Ml3Ao
	 QFcaeDWe7zcvjX/kcWJFfeYuCMO3LZdzO4VNd36mfDNFhl2XHTbEtjjC9ZoxNMnmxk
	 1XtUueyt5xbNqIwSXQqG63rq1r6ixBLMum+NGS5f6ctTx2uCvg//c2YA47/rWUD6jy
	 bte8Ind2e6hLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 697FFC4829B
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170767009638.24732.6869786627727660923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b0adb6a8810cb4645d70b829f9407e2cafe6c49c8d2d68c2f2e3be7c2e92cb
Date: Sun, 11 Feb 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707670096
