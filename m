Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4095A1755C
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722728154; cv=none; b=cggchznnhheNee7N9/P3CBvJQMgIWysEGAlIwWl8goa3Tt0cTDyCBWsacXgM1auYhOMBNsB6U900zqKsUXmA8j3ai8QNy+mEcQ8p4Tdx3I1FaQq0tMR78TXF8s3OAqr/RIg+YsoNJD85cJeAK3BXJc178d0OCc5/gG/AhPUKvT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722728154; c=relaxed/simple;
	bh=1lAoT6d7RxxqQKqslBNUkkbWfHK04avUR9a6ksAlbpg=;
	h=To:Subject:From:Message-Id:Date; b=E3fxHd+E3VqvO7CYeCwgdLgRmyLlWD9vBHYhCcgEyoaEUcNdpv1Nl8kp/MhNNzpRwb26gzY/3XB5S0aOSLW1bS7F4dejS1REorGA8NzQpzZ/5mYaDsVEuP2LIOC4MjYb91rEswOY8cce7jaeRGI+ChAmt3s53/o5PoS4ot0/WC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxIiCtXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SxIiCtXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3090C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722728153;
	bh=1lAoT6d7RxxqQKqslBNUkkbWfHK04avUR9a6ksAlbpg=;
	h=To:Subject:From:Date:From;
	b=SxIiCtXSHTU8OIIQxjpxYJTPJ4movSXkMonx+ze2lvqqSvRgtMUCNbIf2+gJ/yuEL
	 O8dYY2F5RwBOW9MKZ+cLIp6EzEBEepWFqmyZTe7ZX7IVZ50Eq/K0YQQn9GapNbSB7P
	 9mPFOqM0OQGnx/NuuxwGEXxPW8LtacOY3Ds7vmf/nK1Kr9SXVLWsZd31eeqXKmNBem
	 vzQbAv9QoxiCRiXLTuJeBXkNvPEcRsRsHC1DYEMfwHa/wmV4MucrO9ESIVhnNnoWnn
	 b8pZAlQ8a2zs9jtAn2BVRuT1G4IB87d2crvTIYrMndzZeLKQ6U8JoPBkhRMhjy/xEG
	 wC7FBnO36krug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A85DC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172272815360.3108.8675868125080112617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a0776e7bdf345683952703f198c75d48a0301e844dfe6143fab2171928ceac
Date: Sat, 03 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722728153
