Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2350713790B
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772637894; cv=none; b=A6T8qDHeqt/MIANzJj62U96h7Ba7izSvLZdM6J/Mv5AhbgPfqcNIJMoipzfMnLTvDYPKNWAlBoErISa+qKzPecy0hWvOKpTth5ViHScKoD5o0ANOrywsagH+SCFDbOpzOUEB/Tow/S66IBc4m1tB9U+Maw2AllXRyLycXXjw3tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772637894; c=relaxed/simple;
	bh=Y1rdboXJaICxfxojXgkqiGsKrmkVqWfAvBnZbDIR674=;
	h=To:Subject:From:Message-Id:Date; b=IbsXHe77KH55iTBF5Y/DNVpTV2vdEzkmHzYi7BAQfzybbYrVkToiQTQ0+bQlaFxNjt9H8gYiuKPB85sP69YysKVuvslRJ9jkOfIr41ebDGzClBE9fAoCStUmUY5OvQVxgRDRbfR5RVpTGX+cIhUHk1zeo/hKf7EmukWFtD0xCzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jmqj0K/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jmqj0K/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9F9C2BC87
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772637893;
	bh=Y1rdboXJaICxfxojXgkqiGsKrmkVqWfAvBnZbDIR674=;
	h=To:Subject:From:Date:From;
	b=Jmqj0K/8PEBIIHOTvphJZl2IR+ThlUbIBHOm8HnNVJrovmGLIUM1pfxcQI4D/9QzV
	 pNdwReDoCeEhxEeY/iMcbPJ+wBrSSj9bqWthw9E95Oq0bshPdDSMXj841MaS/11WY6
	 WtxIAhQQfoPykF7QCyhQKLCdS5ED04UJ4ogN4Y5yny7TRUWyGK4fVyhMGMeHUG2HDQ
	 4W5T6KCgXxYM/UNilYtqgfoEdmPGODFq8ZPTAg1UljekNtu9NxdenmGl4LSuvvQk1E
	 Kf0URxWWqZ9jxqOMNipfEQj7+ODAO854mX1sNGw3waXT6zEV7U4PqNVaxB8/1nqyIy
	 TbsGr0Flky+kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE7FEF8FF4
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263789362.18413.17342912161735054222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19083fadc2e602323533b98b27e869fbcfd47f9deb13498502e2d3233ef37d5
Date: Wed, 04 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772637893
