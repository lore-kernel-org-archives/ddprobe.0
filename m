Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200AB29D05
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751251794; cv=none; b=g4cam+cSZeMa5S4Gb5IfNcSxHYJyGW53Po1L2bOuU9D7W1No0jJWfpgpMuOn50DoVHkay/+TL6K2UZjGntTUEJYqfrTFSC8bw42Xw5cMwZdVqLJN5MgRaeGeevRJ/C8++F0g6tOhbk8KheqIa9PdG0OiUwe3J0mVLsRdo5LE8g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751251794; c=relaxed/simple;
	bh=dU61974a6TL13xkB3WjVMHecjha6Tz5e++ErZdtSCLI=;
	h=To:Subject:From:Message-Id:Date; b=bKSUR6RC7nmHnR4rdvOhw9Eff58i8y6T5N2y3zaXunIe6aYjxj8G81jmBAHfBCpHyFajz8yHvoyPrDl2HFpsXk9qqEb9UrJAYg4WhCk5yLtSAogbJKWfRkRcTxdDvtgujl+dkQ3MXxxOO8LVQ81pvi/ZAqcwOFclW6rNBs7aN2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqTVhGTG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqTVhGTG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3670C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751251793;
	bh=dU61974a6TL13xkB3WjVMHecjha6Tz5e++ErZdtSCLI=;
	h=To:Subject:From:Date:From;
	b=WqTVhGTGs6X174QbxDZPylhh9UkznNqy+Md/vDUpFA9rG8Z5hRvwlBGcg3bfp1l8T
	 OINsyWlIVAXMo/f1iMIEw1nkO9n732cg91kKhammvt80iAV/cDz9XC/uMnqb0yKJKX
	 A/NJ+60v0hE4FIhhkfsUsWumjVFtu8EtQlQ2v5dJ1eKNJrKl1ee/ld52Zjlxeo6B2a
	 oCmXKYLExNrcZ4yH6V2SICNBn0IycbWY448CLNRDSL8e/WBBN9Y8AdDa/ttZe0Cfuu
	 GN9+qDS/VEl26UT1qa3DEJCG40HT4yOgORFiL57QYf5smDumWM4fe355X4YOvNaE/m
	 hb2TN7rf986zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F852C83013
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175125179357.7017.9496054053737443341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2139d12fb8bab13181d1862f5b444adc81797662f9a7133b72c204ba55abb8ae
Date: Mon, 30 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751251793
