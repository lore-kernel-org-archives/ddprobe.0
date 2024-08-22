Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246C1AD2C
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724291154; cv=none; b=cdeiOlJCPzxgwo5dvsXrQHF/s5sAVfGJ/PIYV4HCnXG0XnyuUYgJp+EGaBA79cLeTorTrSP602zwVIsdTZq0WCflRITHqBOvZxlNvQfKeiPmvM7T6+EI8eSsxLzyc3CJ4QTYxH9e7bgrZgC0igKyorI6MAC90uCF97FUmIjzXSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724291154; c=relaxed/simple;
	bh=7WoJWFhCMwZh5JnsgiJ1SLzbuiB9hy4d3t5Q/t6cmYE=;
	h=To:Subject:From:Message-Id:Date; b=cfBO3s4rkg1QuuR+cogdnV2lzlLcmFM7BJs7LPlStg0zpqhiXS8EvJdidcu5CT33yW0uZ88+YGDo2K0/E1Oc50kdcf1qrb7OUtNoVtrFLkc2o5e70VhXw6gYqwDcN8+otST+NehYUGyE6BoF9nebQMhdbLEwaX0zTsWYZ0YW2pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWVdw+A6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWVdw+A6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA41C32781
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724291153;
	bh=7WoJWFhCMwZh5JnsgiJ1SLzbuiB9hy4d3t5Q/t6cmYE=;
	h=To:Subject:From:Date:From;
	b=uWVdw+A6ofFp8MCfCQOldCrPzv0AJPNBDHhZXq3PgpdcxqxubQkqvq0w+2qWMG28b
	 szLGSyMjF7nuuxpq4xBZYlZOeSZ/X/sRTIbm3T6crar92UZWQxrt6pKB4S+s9GZaZH
	 rfNFd058WM1HaXpY9fa0uFjw/tOuSNqPHFSlv29f6NHAVqjAKrORxLbWYMBHRzSLwP
	 UEuRly9+56Y3ovxIJgxTe0BF35uZtS2hBjA8hPM55gAvBSKNHUkLffUboMXLE2e1Ry
	 opqk39uJNoKQbQcF3i0IPWd1nsmLRJgNYQ4DLhfUmGCO+vfQaBekLPsuSp/2qH4uQ7
	 QU7PhjYftsE8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A097C52D7C
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172429115362.5416.11667475695592532174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 759c6f23537ae7952733556711555a8a13a5f2ed6c7dd549767cb2d12ead5506
Date: Thu, 22 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724291153
