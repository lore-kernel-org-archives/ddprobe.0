Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F71D15A8
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752022794; cv=none; b=kmjo8+4LP+R9kz8haFU7CVsNljnUi8YCvcscocJYXE0Qb1DFejt3UuWAOp0piUsNGkzPGxbtDZWSrl9nmSr3aGeYS3XqdHYKTHwvgsoj4v627orPHsgq8kEmBimmReM+yqTI7Tzar7byHk5zCPSRSwC5SNuiA4QRuArjrsO3o1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752022794; c=relaxed/simple;
	bh=1zduLHSWcwAG/C6y29UjGo+QPJoQFY3wLHLc/uINxBA=;
	h=To:Subject:From:Message-Id:Date; b=OjKr2nD669GsQhsHxxnTFPCn3FIMfCsWWuMENDA2B1ylnXZwkRzNtHB+QoxVXxdDWRFYJGFcS/JGAMJa0HdrHx3kjXElmpv5gFe42u57bvid6ia1PgdmI2c0gJ9f5kDH/duq8E1S7hqAeOHA/nbty1yiebfza/jhz7LNXcGUT2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbxWHP/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbxWHP/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92ABC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752022793;
	bh=1zduLHSWcwAG/C6y29UjGo+QPJoQFY3wLHLc/uINxBA=;
	h=To:Subject:From:Date:From;
	b=WbxWHP/UOyc09Pa55deCHfgntTikHMEoucMl18LnDCGwapJf/Ap2+PWIPg3BTnrcq
	 D7ztHZGcADvj4Ije1cY9airqlop64V/hdOvVr0nDcSIfBA8TGzyHVK6F+DCe9x/20i
	 WqUTdXWuZ56dPglifMB0yTIn80RcTYDxGtzBSose01zcqTKHTWzJVmu2Ugt8Lx47Es
	 MHmO5mzFKKV9AuyldttXac8s7vWAGb2j3drNLrp/qRKWlThDKP7MjQESFryLBcqdb0
	 cWnX/fUFzjkOKurAYAsnbAp8vBTXkQo5LUttgx7UkJuzHXymGF4lrfqMA6NCKjSRri
	 sqR6QoHgjPDtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94366C8303C
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202279358.32735.8728957307954765938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d28c70404c7150a84b42df7b6c13b30c466a3737cc0f690fcb96afc351c7932f
Date: Wed, 09 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752022793
