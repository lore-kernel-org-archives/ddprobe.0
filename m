Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD05356779
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785582634; cv=none; b=dOeECL9oO4rTeJTikmpky0JbD4Vy52YPOt8YcQp2gUR7kbppZE7csS6t9uuHq8YBkbk/Gloprq7rFfvi4aK7OjLqypPJ1IaAUR2P4rk2ZB9gddO25KafvJk9lqbnLemWCEilCmRyfmmXZMM5UhymIqjm7SE+N6j6qklkW99nx1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785582634; c=relaxed/simple;
	bh=gZ9dwIjI7cBrll5w6heN8Ba88xCXZAMavosGpWPxXYg=;
	h=To:Subject:From:Message-Id:Date; b=h2qoEf4/B9ec3xmZ+Kq5IFLFNog4fFGd1VKE0McqsABiIwt9wHpKoJa4d/m7W4POvUk2tMfmbweQXMPfaXyaodL+HC/U87SLxpo9ww1EUirE5kwzqrgN8L4iwz5/xxfT9QiDL1IiN+/C8KCsezxuGXfFX7G0UbgZ1CxH9V1gi+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ti7Nkdss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ti7Nkdss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF487C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785582633;
	bh=gZ9dwIjI7cBrll5w6heN8Ba88xCXZAMavosGpWPxXYg=;
	h=To:Subject:From:Date:From;
	b=ti7NkdsszlgG3pSFa3k49zcR+TnrXrdOlE7UTieeNRijzcFzwMzldk9N/IFScV3LZ
	 Goeervn1NzWM8J+9k6NBA5FaHdcuHoKsETjcUskg42wJC9a5jsPwhddjeKhZdAYHis
	 Pn6AEUHEjQFuzD58XqH6SKCmG1KmJ8zCBgK7J+Og4zs3n1bpRrXHDmf2aPpsVnImEW
	 evyr3De3BoXRHNhXQ26S/AKqjZFDqZcknOibaMwQeIlBE5mvTeGasohqgj74U93YO4
	 FcM4RA8NhaBVFZ4dQ04pTF8tx9WnYYDYLTS0YZ7g+i+lrh0tcWjZoPT0FEAMyMwqXt
	 VQMzCXfCDjwSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1FAC55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558263368.1211.1936374321798703016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5afa7b1c0d942034aeef9de38c3e8ee401a3e906245969866162302b11af45c8
Date: Sat, 01 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785582633
