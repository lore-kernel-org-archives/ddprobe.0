Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83974390200
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781501794; cv=none; b=lSzg6zcbhk/vqCuzNuapKapF3O2fsAhi74FfBau7r4CEVOIxWyt07+ipuEMdchKE7Cy7woX4AxHDU1CIlIV3bNSnP1KB38A6Ks8/tvMeclf91DO++eUJmnKv36gF8AH5zXsrb+siQw1k1c6ExiYmx1yVSoVboKL3aYEN6x0NfFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781501794; c=relaxed/simple;
	bh=CWVQKq3U3JD1QPTlEC23AxK9kGPSgH0U/Xf2gfF2w9k=;
	h=To:Subject:From:Message-Id:Date; b=rge5MS9olUruz7Qss6sHSJ+9o7yLYvL0gp0I3hKxKnw9GW01EWtlS0mBxcRihzQGOn8f9zCVkFhES/B0W4PebjVL4CIVK5fTZ/mgJnIjKDkSHMaIa2y4BlKLWGWbuNiJNsIT58tpe/+w4x0U08NpAatsFxsPtdQBpuhVl6fzFLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQHvGiRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQHvGiRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0D0C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781501793;
	bh=CWVQKq3U3JD1QPTlEC23AxK9kGPSgH0U/Xf2gfF2w9k=;
	h=To:Subject:From:Date:From;
	b=vQHvGiRofwXe1APfhWG4m7ts4bMR8XEgjz+CuwZakuvaF9ThUTh9kV9OkxLdVM27j
	 Ur4/GVdO4n2ioMn/4xBIJ3KF0lCHIFxqegFrSDC6EQTS5dGQxZSV5wg54KSL2p2xQ9
	 RXQ/TL4d2SnqHSA14t+PV+Qog8EFukj8LAKK9CTIUSpIQO3Sc2MQu3OYcCrignRfdX
	 YhdjHLxI1pvrCuJwRxD9AxvCuXMQ8KmQ0m895k3MMSAg7SdsaADsuQVrz0Bj1Las+b
	 Iyo2m6yE4hG81tjBcuC3FEIrX+Lh5odFxZFEeCB/Lv61o8f+hYb3G/U+VEqaABOp3H
	 t6KbvcUVtvsFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EF6CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178150179371.9981.15126687620022640876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf12b550721489072015366b7a517f196ddcd79a63843d188d138064855c7dbe
Date: Mon, 15 Jun 2026 05:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781501793
