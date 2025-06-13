Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0EF1885B8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749773994; cv=none; b=MOPjGDa2kaL3co2Eo3jeFMTADESzBOMVVl3VIUfEMVWLOVAx74wego18bcMDy8o/TMZRz9YDg7YHQLNgkrGYf42EyB+lmfQoTOQ53qWEzb+cQGfjJBu66KtDxax0HZCkRU5AVulrRh+PwGho3Kfr35nWJO/WIK4mrKpneYRevtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749773994; c=relaxed/simple;
	bh=EYSYxMMSHpoUCNdBhmKmb46dyraZCIV+IHfW9DNUAxE=;
	h=To:Subject:From:Message-Id:Date; b=V2srnNylBZoGyothDYDpt1dfGOtDteftzFrXfDCkgei8034xsdspU5ewEZQujO6iLW16lUhOF2+pzKwen6OyX/SEPYu1cOitSueN/Yj8CuxOWDESQ1kje/UFBjvyW55ysBuYhJ2jDG5w1NYBJVpFjz2xP9FVCf/mmvVpvMh6vIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecxUM66X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecxUM66X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEDAC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749773993;
	bh=EYSYxMMSHpoUCNdBhmKmb46dyraZCIV+IHfW9DNUAxE=;
	h=To:Subject:From:Date:From;
	b=ecxUM66XoUwiAQPwL6FO+rTfst42hMVLMilfwK6AalVsGfwGRufsmn60XmzeAeHj+
	 4Xo1hiIEjYVAnN0mwsiMSDA51cONSD54PNtWs52HP3fJKrXvIiKGkLS44tbXYlZQPB
	 KuS8feO9wCeVoF59ThVXOrkq6IYhkQbq7U2HTh0AuCC60P7dnmJEEdLBGn977m9G1q
	 6Za76qOWYZKwnpw2isEA24QG7jIhbxDMJhZ4rvD2+GFw4yaMYs5UL2k2yskjcHq6Et
	 WdVhFtXtsSgmUe/NVCTDzWUUsSITeWdsebATrJhAXl/sNCIUMvPQNM+JQKmxZpsDPx
	 VueO40StqetDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB02C61CE8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977399359.27034.17396694664331105607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f08f1109c72a811d48302c0af957f4a0bf0f47cd4e20cdac9f59eb55be6338
Date: Fri, 13 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749773993
