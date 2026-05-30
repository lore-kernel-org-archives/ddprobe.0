Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D01234B43F
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 11:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780139014; cv=none; b=KUWL2ni/15T6g+F4nucNN6gU1kT4AjwdEYy2pK+emiq3SU8h1XiDTv9BlzAUmtfLE+AOU/rO3rc++OIoJ+3p4S1SBbuG1zyb7jFzhV25oZHeCyAI1hufP55h0wlJFEHFfwkZQntv0uGkcTl8/Xp6RYSlcA3Lnb4fwLytGTmLuL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780139014; c=relaxed/simple;
	bh=pFje7/K0sOfEn/IILwRS90lB85UTTKm9QEt/BLKjZ+c=;
	h=To:Subject:From:Message-Id:Date; b=U8m/4BLMdpFRsIETnp0SG6eu9QLi+jz3sY/uH/7GEO5kKZ5h6j15n9xQgRjTnFeTY6mAn+/IglMRvA+Hhts12MKk1sVq7zBrdKl44xM5cXiSZKK/YvahOPfgn241ENNcMcwCpWqRPcN8NgHP7HHLeIwu+/GijF4sTBMlZ+64Hz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCQlnD0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCQlnD0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B583AC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 11:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780139013;
	bh=pFje7/K0sOfEn/IILwRS90lB85UTTKm9QEt/BLKjZ+c=;
	h=To:Subject:From:Date:From;
	b=bCQlnD0uaKCtKlftaLwFcCfsigDj52x6GMmYqjHlxJ037OCNm/lVes0ynuF3RZMXl
	 joB+jmLXb1PyzhgSLrmdlejVuTNVj5owxFCFhIQ3hKcDueQgVM7UU9qbq3OPP1dtms
	 naI9WqpIVqsFv9t1GpA1ENgm9UhOdLFB8V2rzizsxKYX1n5Ju6i47EwSThYfdUAfWw
	 VJncQ7FqoSITdJzakaaqnwpPiGxANlWX9Lf4TxkpkqsZ7F+Oqxbmew6Sv+naq2FAtJ
	 sAz4AXuxAyUejiyW74v9st2Vz1Y53omYMxSHoSJfPQ7S/yVD2i1QWTAu3VxPJ8ZrFw
	 uv6HBBwjt9gsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A852FCD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 11:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013901368.30498.18940669188270870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28dd903de4dd428b3db89bd952f6b21f7738639035029c30b94339125bb1d59c
Date: Sat, 30 May 2026 11:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780139013
