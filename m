Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103A9224B0C
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754750394; cv=none; b=KX+LDVRW9VKKTVFjrlD1+6xh/KTZHdz/1U6XNf+1Yk0reGEWpjiVgfOB8HJWF6M4E08kuH8+cgAT+KosCaBPB/YqrBxJrn6XYEpe3Z0r/nV8okc6SOUvnO4vcF3nWAh5emRBmjtBwCaVZzSswW7Er/G1jTwkXYT+l25yp2eIuXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754750394; c=relaxed/simple;
	bh=yNC4qzLjNb2zgxjfxsDre8q8p1Wvdu/8Ps2sjlbLYjw=;
	h=To:Subject:From:Message-Id:Date; b=askY4FKod6NMyNYdrUOXoRnJ9ZJsZChMDpkL/QHyTlp8f8FExey2tsX2YOjszmlyA8W9AR31QTOjcIgc26vQ8DEPLhJxTsHhLPYbhinGdBoWiEfoMRaXzHPMEc9L8g9UHl6liK90s6K1RiYAyFh19g4mzrHTeNv4SHbsXr2ABPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/HdP0O9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/HdP0O9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52C0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754750393;
	bh=yNC4qzLjNb2zgxjfxsDre8q8p1Wvdu/8Ps2sjlbLYjw=;
	h=To:Subject:From:Date:From;
	b=c/HdP0O99/zTnx4qywUXBF1KlIii84hlXqrPR8+ravD3g/YcGgwjwRPaSc4y7gSH2
	 RwMZnvogdP+6mZfaUIqO8WKtsm1lRsakb4al+ieDNpKlje2fHu34V2P/EioJKJDAp6
	 G2MNiO7B6X1bS/Qzft7zpQxpYJmeN2NuquI1VX6q1zM62U5kpORMLEQ+mIS2LwwYcY
	 Tfqz8ZAaKQstnYgL1wIVQit+/i6Dr25CH2aD5WkRccU7DuzXTf7gCiXE9GUm1RmOy7
	 hucK1Tk7gqnoO45qAcY4niAvcxXeYutsrA9hE4dQp/ZP1+NwgDJDM+gDJzPOvBDmdf
	 GloCSpFvrQ/SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91148C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475039357.26993.13720449132535780874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e7a467db9eaa1b1efcc5309b555f5642d5a14c6df73d41d46eb55fa7dd2107
Date: Sat, 09 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754750393
