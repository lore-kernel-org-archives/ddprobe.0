Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464642F872
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745303394; cv=none; b=fCGNkqV3mqBgAACITRsezk97JqxT93baIrIPzYivZ+sXCGFiftQ3bmsw6YCm/lInIp3Rj6HprL9B/l6Yx6V+aHTMHUGMaZBFthT2roS8cEqwJ1OCsdug/iYA4KtM3Xt9WCESO7XKwpg6kzntEzFcCY4ACJoDnP9eEtAPHwU0iaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745303394; c=relaxed/simple;
	bh=IqhixQHAuxac2CEzNE1htk6mwNuVawOiKT8+7XMavZI=;
	h=To:Subject:From:Message-Id:Date; b=hbGNekAOkSru6SWNEO96wYR8YNasvST93ZWo4NVYXnG+77PJ3aQQwOSPDBN5TLZki8j4OV5f60wpjswKgwuwZ7DDODj1U9+s8tdfH20hMN+BrmZSBXHT7N/Ojw7Zho4cSN216d7eAbWLr6bM/AoGSU2Js/H9yYkqrg+sxQWg0g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vC6mLHfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vC6mLHfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D1DC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745303393;
	bh=IqhixQHAuxac2CEzNE1htk6mwNuVawOiKT8+7XMavZI=;
	h=To:Subject:From:Date:From;
	b=vC6mLHfphbn72aLVEEak3KyFHPmGWGFplBL35ABJtnTts5JAVG4kso3REqv54R+PR
	 UP9Dd78baXGPrLKHe1EwAvZSeUuUeQl94iK+rdsddIUUzRKLONXiDNcn6GsKOZDFnp
	 jFiNbqMmUTJCUFnJdGGa6UeLfjYVPPJbn1OYQfeG1cKOI9dM4TYiNBu7Mb85/Mce4X
	 5/qkkC4dBiTC9z64hzbTQI2+/dBpgF4OxT1qEv52J2rvTC0ZMcnC8n2IC73fX9gV5Q
	 SN+YrWFHAz4TZqmPNikSXay7flYsWiJDP+ctszUXSxZgDf2u/LlweDLuvTRbbfyupv
	 YHPbBb2F9x2iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965A4C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174530339360.29903.6503514986624832954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb8ae5e3598a1c74898f88fb1c10c218a9c04b74dd71d402ed7a19a23c67bda
Date: Tue, 22 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745303393
