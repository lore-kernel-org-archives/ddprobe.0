Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA1F3B71B5
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785243034; cv=none; b=N5XqMWNuRq+fsBQpIbRgQkNCmd+GgD1Wutn9kyjzdcvHVUpqs0Lxbqy+sziAM4sizTbLE3OXcSPqAAaSnTNm4/x5Hylbw6hcpt2YatxXaJeH37Mtsrf96o1/I8g+CxRL9hCwVZrv9PW9mohkoXZkQfezCfCiNcjgPELFw2kGwNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785243034; c=relaxed/simple;
	bh=g4gnMsLe/Df3JkAvGNF0t7MaTTTgl5f4Zy6Q3mjUvwg=;
	h=To:Subject:From:Message-Id:Date; b=USF5kgRM4SGLyOD3b50N09DLC1BgBsmGYhTms/uqZWiDdBOmQYonz3g/4T/8Og+9tp70BBNGh+WUzOybKf2MQ551AMUrWfrM5ouLtF5Qk7xJ1ICXV5wQ3vjipMmO5k950efRhrtyDP2A3mFGBOTdn6tsCGaju9ehKK/OLyRMWkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ew0u8f9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ew0u8f9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C58C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785243033;
	bh=g4gnMsLe/Df3JkAvGNF0t7MaTTTgl5f4Zy6Q3mjUvwg=;
	h=To:Subject:From:Date:From;
	b=Ew0u8f9KsXI21wg+1QpBjDP9zIlNdoNgYOFPO6nrpHWMVZGe63Avjp5kqjA/JYC0r
	 fKxHs+yWQb8wmLGADtAIlYNSrOO/3++ev19ehySsV/ka3c3psmfW4RsY+rk0xTmtq0
	 Ion2eURHhZDDc0OMOLXrF1BR6QUwMd/lg+/KUkUFZQ/7JKpjeCAhJJg2dMUP0k40Z6
	 xgmuOo0xWGDiNTlJ3wPNZL30yMgTAsN235/p+Ys8ol806hWG4dE2qMgzcKYFDDd8pR
	 QzMLqGZ8vUADCmAyQYoVGLQl4NFpTxf3h3d3Q2X1Y+U/L8eD/qxaqodEfg33dClldL
	 mwrxFkKPDgsfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5DEC54F4C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524303370.32037.4308205027607571528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df390cb64a9ca7cdfab552f0bfae38fa95b91d148b9112a159b6229bbe2ab66
Date: Tue, 28 Jul 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785243033
