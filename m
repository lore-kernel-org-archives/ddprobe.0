Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F5E2FC011
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766247234; cv=none; b=WCK8uc7CJtvIaDUhT//yNWH5bYAIXrr5vK1ljOfm8M9j+5phql+Gew+cRX3ozZyiGDGENdXaQzTrC9/lxpYkerw4h67Rg4uV7C+fasd4wKMv8jRtyAKkCKHXTCMtZ267M/qLjUMjM+MdTL0nXmdHv3rBVuAUszYMSoEQjs/9lWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766247234; c=relaxed/simple;
	bh=WMHM/nMAWcpsxnlNBBWGC17jWdYlyiAoOhh609SG0BY=;
	h=To:Subject:From:Message-Id:Date; b=hg2qwlYKXe12D/dkLei535hQKrt5G/GXFjqyqZu8AtJ43Rs0NlMMA+srKUHLtV2SkFuYWeej4JoliQefWQ9Iu+znb5W8cq137MbjIjZhlUWBxpHHQwVpVCdhqOjwfVUZ4efL1uoQALNehaIx9ywLQJk37ZoS1V43nFbqvp7qnK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eg0KVeKN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eg0KVeKN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A1FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766247233;
	bh=WMHM/nMAWcpsxnlNBBWGC17jWdYlyiAoOhh609SG0BY=;
	h=To:Subject:From:Date:From;
	b=eg0KVeKNG9KPysBpvajdT1SB1W0dcDcYu6GwjIrhObn/K0hndn0BcXuMNShiNf1g7
	 tuy7XRlS3c+bskf/FAp2giUGBMIFicemwJxrNJ5WflyW+QKK5XcMleGM2iAj48IMC1
	 xg5I/Pi6qOLmBDM3mo/1hKbp/AmV1U/rFtUosBp/FkFxkJeMX1KXI/V9z9BoLMeqaj
	 1VxO4e45t0PPWzndq+g/XxaXiD+x5NIauY6hAxcYjPfclG1Ygn11p+rZFgVtqmvim0
	 BZG6JpPBWblok/l+Y7hkuwIl5E9QCtTRh4VTGAck95OnsG8F7yJtGOs2NdCrTMhxAm
	 MDJuQLhc9jfPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95791E668B4
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624723358.11998.4200808018674660485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a00f9d5495cbe5b1bd94d8c8434885d34e0ab8131e8c9a0bee82dc8e2b59c7
Date: Sat, 20 Dec 2025 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766247233
