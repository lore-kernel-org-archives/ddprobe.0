Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2039E18EFD1
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758386395; cv=none; b=TgdlW/CyEjkWvLGkRX+kEAON3Fz83PrfSqU4WSuCb4PYKmiR/6yKOgLQsx0i74hDTPZev2VGuHZJG4nf0sOfRIHjaUQzRoCnGyG6Zyku4qHGZXrANVGYyW5szBOzofqjUw4vhe8i8wKxWhngVo0jIlBPSBUOzwTseqZc2xa414s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758386395; c=relaxed/simple;
	bh=w36l+oPOX1K/iQhYUNGnSmxuZcuV6SxQZ6euUrZP5ss=;
	h=To:Subject:From:Message-Id:Date; b=QgxP3T+fGylf1n/HbJybW0Nqgy+VQTGXw+Jd7uabAa/UQ142xocZ5Ms7TylU4nkqhdDZWmPsg6yXBEOi7qZfzUjVp6lBPGwWktX+kqWu+kgcJCtDlmT2A1azRqXxqFJTADy/BrsL1+xqUX6Wu1bzjwgGG1QxUyKz1P7Rfa2Zurs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOaD3RFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOaD3RFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64DDC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758386393;
	bh=w36l+oPOX1K/iQhYUNGnSmxuZcuV6SxQZ6euUrZP5ss=;
	h=To:Subject:From:Date:From;
	b=EOaD3RFL0hjK7dn4F+fvtVT+nsj+v9KOSOw7iTwEJW7pJU0dxsfZm0L7DzaU7POWL
	 unYcsJN1Yl2x4IEebMdr3d5rlLNxlN7U5W+5zORcVVGWVDQLGA2KPcGGr0z5A9VfmR
	 73xA36MprMtEkn0a2i1UuoaIrPyjVehf0uQ4KhPHA25mqDTYHhrHegueKerY5Ks5Z1
	 Xnin9iAHrrNVB3jUo700hw7P7snikB1EfMWoi8k0tWoewaWtNkM9cXAdpV6yfw8AoA
	 1OZERu5aAD7/HPdJrDfkYCNa4yHpewKgf2OowIARl2W1Zm2/pbSQQJ73VmswA3o4aZ
	 CmMN3AnB/QuXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0366CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838639358.2017.9569449372929239383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d88f65b1e5aa355944daacb9291a513c574dfbf9c42c5f439901f9dd3ecdc8e
Date: Sat, 20 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758386393
