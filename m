Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233B53ACF0B
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782733114; cv=none; b=NYls3uonOZC+kEgHXM4qa0YmLTdMsDtz7PlZJfUS7LFHKbr8GISVqTJs+R1pfdMaA8btSZ6sYyHQUcxjeK8g5B3twslmawslBFdM1y6PtdkztAub2PYix8tfqv9GkGji5kAvBa0t/YgRf31Mc2jvJR72/8ReVRGATa5uhqtTkRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782733114; c=relaxed/simple;
	bh=kU3/HGzYQFasl0w4+Re8RbuF2jwEBqcvtqyrpdM6PG8=;
	h=To:Subject:From:Message-Id:Date; b=Nw/nsBQaTKRqkxLiJ5QafgJl3/rxMcxuxdGGua+kkflf+5/72kW7gOxphdjtQMAJVTQSiT0OksLpxP8C5wvHRJUb3b2PnzPIhRn6HZrQfgBLcrSa6M04fvWcSvLVuDF8I9jtw6KMSPGl1uIS2aKwgpdIk7cYcG/4WK2PtCLbjMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=og2phNFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="og2phNFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20D2C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782733113;
	bh=kU3/HGzYQFasl0w4+Re8RbuF2jwEBqcvtqyrpdM6PG8=;
	h=To:Subject:From:Date:From;
	b=og2phNFe8kI9ryr1nMKMU6sjtK8tRoubJii8bIOZBQoOBYhHCKJL4WoXIVwJ0tGzP
	 wB5Mco1KLsBpVqwDma8J6H3miBDrQw1KYp7K0BDCCZ92jdDq7hnEdgb4r0qqyIyiRd
	 C2Z4YUqtFLrXK31iH84H4+VslMM4c4O8e3+mJx8v6cJztyL55DmBWWvkC4xGOzxKuc
	 9UF69KjrSjDFlVzGyJczOn+9G05YNL0DGWoeAltOoLWfEB4OVC8NOBckkg+aQV+Jvr
	 7nRcYsgVmABKeNgt7IJE8LCwbhd8zN7IymWwxGpnADMihgolYA44txORfJVfd/7brt
	 QhrOg2mDlCyFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B8EC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273311373.13670.13227213971372844046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c603bd55d8c2c801d941e463f051f64605202ac793c5c39826e02a2f000737d4
Date: Mon, 29 Jun 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782733113
