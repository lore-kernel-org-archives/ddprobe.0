Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227C33016E9
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772521494; cv=none; b=hVokuWQj2MzzGCSnxHwWBxBumz4uNc3Xn2tB6Lt8bkF9zxm2+oWAA4MM/tPZK1bzz5/rT0oZpD0g1CGU8cUTscJcoO2D3SyKhe5WriRlD3G/ATryETV1V6XVjk3NrxPGl+1zyzQeyLrqP6JDBDV++j54PyDsBFE6NsnTBuOXgmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772521494; c=relaxed/simple;
	bh=jlSxBEqG/BWRlVmGMV19704gedwnpfZ0WVmtg6YzozQ=;
	h=To:Subject:From:Message-Id:Date; b=EQ7UGPamVX8q5Z4AlWjLZWcMiY8UAB0tqHEoP5WYy6iQ2Jm+UdMPLCpyHH/qxJOui7bMmQXnLy+SzxFlOrgWJ72x8IA3yW6WF1s/Bn7nB9SeHkLqIF12BFb7znpQ5ISxPJkkXjcOb3Bq9uSVG+ta4lfeQdDaRUJCKDQUSBSV95s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+2UyEuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+2UyEuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEEDBC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772521493;
	bh=jlSxBEqG/BWRlVmGMV19704gedwnpfZ0WVmtg6YzozQ=;
	h=To:Subject:From:Date:From;
	b=M+2UyEuDlcgrKwgOE5qSQN2n891MaxgyYpQRYhknteUbQiNSO0flN0Vgnz0rfZ9VA
	 SbYzBT6rUx8EMRs3jGD2umamnNxdhEU0Mt8uBuo9pWCq8szKI3TOdLB/T4FGWxjVli
	 VeCLHALhPppcABH9VucKXEgPQN37mrRRQNK5UFKfN9AKeTd6/xqsz2gzbUjY+imPV5
	 ilEjgWxvIsTm1uVplrmKeEJLwaX01vvI7l/nGxCttHh4d+4m9AfgpMviK2KtmbxltW
	 MotLt+IPWs++OZyGvJjoej5KcnILxGbmdw0vRX3B6T98SZT93jsOKH/EnbcXY9IcX3
	 CKGYxH04jyQyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4962E67A7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252149363.31485.14254600430933232313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e2b7252d50123c9db927c4c95489a4bcb4572a94c691e4302797309193fe02
Date: Tue, 03 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772521493
