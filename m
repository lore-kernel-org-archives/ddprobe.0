Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412153C17
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760944794; cv=none; b=ey9GjenBsVdm5KjmTgGnJV98SimcRUhabmItkm5TDP9XTlszcWTf2l5o55ohv//SBsq6khMCyBpwfoc83oekJnwMYKGhfczG+ADRpGBExNpzIxwE8AJC2aZkEELmM6Zh3SnWbeITtgqaeGhpQA64GzCAJI2DelOXlFNfJJGI1JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760944794; c=relaxed/simple;
	bh=Vr95Xvi4mHCVfIN7Uoxhdhbe9e6nCoLH0KMN1rsXW0U=;
	h=To:Subject:From:Message-Id:Date; b=dUZs6uK1VPPJPQj49Uij9CAPxmg8mkOnr7/Br/bDqukXGYy42Ep9GZREKbjgCJ7ZphP8biwKYA/w7rdgdLEq2e2IRD79Tc474SJhfilPkCg6jEC9FE9tqVcJKWL3Rb0vJYjiqnD+wzMLMcZOnKO44QUvUn4Ok1ukRY1SJQZdwF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLpH0U/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLpH0U/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08ABC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760944793;
	bh=Vr95Xvi4mHCVfIN7Uoxhdhbe9e6nCoLH0KMN1rsXW0U=;
	h=To:Subject:From:Date:From;
	b=DLpH0U/X2Mt3osqsaxgAqKsGNtRlg9liczOAaxuD+yBJuq6VPdj8f29bEoNf23Jfx
	 8gMFqHQMXCmfJdrrUR7MWWpfLYL0rSzSKkvriRLdGlveLFTPcGWZoyUXQiKiS0ICWI
	 TbV0MH37I6Oqd3oBwsluHcZ05DUJTj2vkb9mYYYf7oRsbvo8t9OT9HjgCJUHO8MQLw
	 xotToTKRh0/eErXoGYROsUBulswfxb2sGdDMr1dgTcPvqswMu4OAepQVAyyPdWMLyL
	 r8zDUVOFgyalgpVlgj1ykAfmnlrcQIuz3jDvExeA2aNsGcUhgaMaiM1H8Mdem6+dgv
	 lhZI8+qEapllw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED6ECCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176094479357.9161.13057840968824795865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0def483f23d977490612fc94c07b667f8c0e5df4860ce97888051635882d711e
Date: Mon, 20 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760944793
