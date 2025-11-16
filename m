Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C83F27B348
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763282454; cv=none; b=OImcwAGMbN5BYo4dTmW/JrqJDnpiWqwRV7wWJg7m/+N2OKXXzlZwkD7m/teP9jDgdfhfcET3o+VrDKPn4HAEtJvUQGhAQxl5XouFqHQkZ7TCLvC4483i6zi+NfBKE4g6Hfrt98ef4Gw1lBf9yvd8NV9JkS5MGi8zO8+1qEBmu3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763282454; c=relaxed/simple;
	bh=iwqqHI34vop5EOUbDq1fJWh3L9MITC7SoeHTRNGh0Sk=;
	h=To:Subject:From:Message-Id:Date; b=uDl/wuwhZmM0sIUSXP16NB6fk8Q/VwWuAEEMd92vrGc6L8mB4ueEpiS6u0TCA96N6d1TcviHBzqcJR93keLGVDWW6n0TkJjBlUo0F137L7EdvlzjELgxpxF7mw9cdsdS9CgUZClBMKgem2eh0DW8O2jai/9B7DFXyf+wCcL2rfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BA6hEh66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BA6hEh66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B00C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763282453;
	bh=iwqqHI34vop5EOUbDq1fJWh3L9MITC7SoeHTRNGh0Sk=;
	h=To:Subject:From:Date:From;
	b=BA6hEh66eqL8UdBAzyxtYyS2CFxXrHgFMSyPml3cwD30tDFkXl9zR+llcPNxTJFEQ
	 kB7Cf2AlrXMmvjcwIt/mRFFdcBCEa/WUikMKLDNGKa007VyZU2/22A6cAGHTeNJ7XC
	 xL18PYrQd3nGCwHWO7ov+Dl/gAEU+s8Qh9r7J4y9D524pk/inCCCIIYRErWaSqtZOv
	 JwXCRf8pGOfBU4J02y/128Hb9PSVTQs6cn0H2pj5xg7jRLcl84dEIY1EtncHscF3fz
	 tvXdSJLvQ1PppMCwp71OMmm34LIwW7kmVJCL90AEAsBkRlYKI8DrykaSguPPGafym3
	 pc5+2iyJQEOHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A1ACD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328245358.23134.9009146971378189219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471518568ef5299a6404437e6e9af021df1dcc2d1eb7e75375592a8663c7aec9
Date: Sun, 16 Nov 2025 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763282453
