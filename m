Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841A216D9A0
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718188103; cv=none; b=XrtjZEIkGSpcgbUAiX3VQVePGEqc9gzQBR/h1W2lcsTMPo0Ztf6/HneYfrlkBnTm2fHGiGO0vCxwuvQsyJ/1xQQv+dvIX4D08cQhddLRy260r+lPS6i0K+GScaTZ1N4hDC0uppVJzhE5zbb99PrJqOPjCJJ3uzkYESrrdEUPZG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718188103; c=relaxed/simple;
	bh=3SMGwIjKYFxEvBekAH1yptxnu7agxqMM6HsQMd+ia8M=;
	h=To:Subject:From:Message-Id:Date; b=mHS2RTmBgUB6dP6V6CHGA30HuHNBVNMW966fnA/gsmkFEevPPwbByVDqxDfCyC78Cx3yWJRKqwYMXfdt05PQwiK/hmssZNOJHCDUIbwt3gcVK0jh73mu5VMyZEAkrsIHH18gdkbPBBRFuA8oJAT5mqjY1H/7QU6xQVUh+Y9VPq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hs7sK1nJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hs7sK1nJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0786BC3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718188103;
	bh=3SMGwIjKYFxEvBekAH1yptxnu7agxqMM6HsQMd+ia8M=;
	h=To:Subject:From:Date:From;
	b=hs7sK1nJnxmklVB634nzWt4Y8037fOaf9yrxUWDXWRBs94uvdLG5TqxcvcV2JhI+f
	 Le1pwV0gpMxPa2Hik13VlRykwW6DyqVrYWd3xk+Kg+fJ03E1Z+tLG1J9d7Vjky5jSy
	 i2g4ZwZRFBblHrsjS4FZD1h33OSj5DK2VXcxI45iFBXTuJjMtnR59aLvo2bKp6DlYi
	 qMsIsii9kOAqqPHQ8uJkFIVbHKKpM/1ymSgLA+5VCaySLDauqUdR2Acn8EEAmH09W9
	 t7xsSDtOiuEHL+o2zjkYLtt0a1AaBRjE64cT/pFNiO7LngERjm5X5WMhraP1GQTuy9
	 IB0DUOQUgbuXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6939C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171818810284.20134.16719522570886387027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc9925dd324987034d0c3016015d14b4c26d79525c633a5dd5381e692945d58
Date: Wed, 12 Jun 2024 10:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718188102
