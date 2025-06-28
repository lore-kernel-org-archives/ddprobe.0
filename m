Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32ABB20B215
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751099994; cv=none; b=nmQOJ9tDEjxl0uDRnti4o1a0trd2bb3ji5UBpg2HpU67ZhBOdMf++CQIKy66xweZEE8TXC7Sx34HvotERt7qwaCUo8HtrLqGqLtCdmOriBZlAGSYmyLExIYt7elueEjdu81/8Qx+gTh6oEbcR3/5RFmGaRYAHXVUEqgvffWtXuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751099994; c=relaxed/simple;
	bh=WmRaDFDrFGAh5WjLuFwMtnrJaP5NBsBLkwBPNdQHel4=;
	h=To:Subject:From:Message-Id:Date; b=XeBRjwBpq7+wChsTvr4pd7hhXOBvGyaUexseadgbvFACj+2sh1tOspK2PYr4GLCzWpBYSLQ1ZkoBfBxpCVM1cFx6X0vCKe2OCDdyIh7yt0fOJXT6YeWs0SPhmEnQN+dnWGiArSpXtWWdfWj7zforw+TyzQnUJOeXsBXiRCUbhb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzGKhO8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzGKhO8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F66C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751099993;
	bh=WmRaDFDrFGAh5WjLuFwMtnrJaP5NBsBLkwBPNdQHel4=;
	h=To:Subject:From:Date:From;
	b=DzGKhO8pVjyUWMhmva1eDeXtOIuWb1iQzG2+c4fXiNlk3ckjjqSZ09E4wIrqtuD22
	 TfN8CmxzyQPER1r4HtToSjJndnGAkWsyWnVqhUhGzM+HAtE81NBLOlQfZSUgRxrQDn
	 N6PW3nKxzN8JpwJrgcowZwOcV+Lwzppt02UnMW58ABTx+Mn+ALHEhj8/L4lXXMD+Ug
	 v+gVTODXkgGF6RCfP4glI0uDiGLIT+HzyZzytCqLzVSNT9dxX5sZYrhQqVtROFLhRY
	 dvZUn9SP3AIUyi4xtJOJfI6Wt1NrQWeHk8nHeqGPHrNs2DYrMG99COEbF3Ho34/fER
	 /Ay8WG89quu+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC7C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109999358.18633.8345150572421577849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f8660e932194d6d9505fd5dbd1a480c305f784c24e7e37b9e81cc2b689d6d7
Date: Sat, 28 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751099993
