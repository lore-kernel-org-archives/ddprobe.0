Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57EFD2E62C
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 02:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714963343; cv=none; b=P43DrAD1SA4D+B9yLpvHoL2hW3GN8mkJZFdzzfIm4Hj3jczwcq3mAAdS8425mgdvpMDX0yNKED2GWfCMskA5z4g18/wqqv+ogvihuFmzNxvz2/mPtdib1gj7/42l3DSBNl8akDHgUVeM8TZgGRo+Sgaapsh7EGDdIo7Fm9qbCMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714963343; c=relaxed/simple;
	bh=530mzb09h3+jEMvrvGsy83NI9GpzNQGZg6V+0xdAnpY=;
	h=To:Subject:From:Message-Id:Date; b=aH6YU284XCr8VJI9ExqBhHMAsi+9UV3AITQt/98a0Y0/voQBVLL7OzaixNH8PlWVpZblhrMuURv+f8QkJATc3LlZF+L4cEoxDQEnFzsA0d/DaXm7O1LHCNlIrLP4KrfunLhoe8Z3a6HNKDip3euMp/smHoEVT9bnpUUFjYyDPPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIjrG3z2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIjrG3z2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00BCC113CC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714963342;
	bh=530mzb09h3+jEMvrvGsy83NI9GpzNQGZg6V+0xdAnpY=;
	h=To:Subject:From:Date:From;
	b=ZIjrG3z2Vd9Pg2xYWEDWL1bB/42hN3Af/vzCfzKl4i/+C9zmq6k2u1G4CosIuU9O5
	 V+74n8tLNmczArakd5clLMyflfSq1W9PtN22Ko7JWNK7Z0AOscPDWp7Q148ooCZWJi
	 stPF561ZBQusOrh8zt3hvkmc7VTkBr4yeKA81CTz9K/guqnFkWvTK9/bv9pCM1AYM0
	 xZn0oXKSxfIr1Tu9dCIXixGvkmqEW/SQOPtBUUGP3SsQ+j7FRbqT6CN2By7CyCv7Mq
	 up7+fQribNsRPZ1LrMku5AHFmeeuxDS2s71jAj7UV/8V0vRAPKpYFCYeVH1DP8ZpHI
	 dJmtNFqJQ2Xqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8B1C4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171496334276.15372.10167852648195624941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a311d8064d77faafb910887a34ed6de011491924473cee3b8d65f82565d5184e
Date: Mon, 06 May 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714963342
