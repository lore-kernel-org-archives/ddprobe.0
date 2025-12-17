Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115A8283686
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766001234; cv=none; b=F32A3Bes3wHrvXonhg2+iF/8W8cSon2mcyj1n409g7N5HhM5dWnBn3pvkgm1RUIjNVA11LrR9imlVpOPZjdj/Ny6F5aguCAtUZEPT5iqP5ZdCjjJth/zI4CigBp4YOOeAGD1pTQwluzdWN1VPoujerkoeGQ3rEgFpkHSdQfKczE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766001234; c=relaxed/simple;
	bh=/4Sj4jkqpLsF0E2D3byAdDUEfqZaI7SRpTLnhvfxjdw=;
	h=To:Subject:From:Message-Id:Date; b=iaVMu7YIYbGMT6H7F/ikcRz7IFFL+C1tyUbxGDL7W0cf4KxyLblBYb1kZP8JYVBw4DlZMl6IA9wmVIeEt2AsiBEaX0GZlq9VGWGyHP9oKdw4A0JC7b3YZ8M/U5+viMNriAWF0IZedL+F4BZDGQj1PSwKXJjjv4eanl2aMbmikPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lI5VtEXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lI5VtEXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15A3C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766001233;
	bh=/4Sj4jkqpLsF0E2D3byAdDUEfqZaI7SRpTLnhvfxjdw=;
	h=To:Subject:From:Date:From;
	b=lI5VtEXLyQX+6qibQbhuMtb5uVUURl+mNK7zy3rCoNee4vA4WqCOMgjSqrv6puH2A
	 aCepIESjsZX13ljuXOFzfhYmBjtMzOYQOFJwbAjQ0kHvqB95epXfLAK2+1pTQl5LYL
	 S2Z54dVo+G77UTbT9ibsLzCNn6Ef81t+u3zikNM9kTOWkEdSefGmPzgkNwhgSoG6Jy
	 dAQBzft63P7iyHIuNWvBvg9cXhWbXff329VZh6HO22oaNk0yP8M3woStiiQoV+pVmH
	 FfU8ABHnK6V0rEIUhTWoHF0vE+ehBQq/7lSXpjCTSbpiTwcf4sHeLdw6+9xLXc3LTj
	 Oes88avIIeLWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903A3D66B85
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176600123358.13754.8486337662442099942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc726d74c4476e23a1e19de189650f8fd5f9fec23feb2bc84c8943a5e8bd933
Date: Wed, 17 Dec 2025 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766001233
