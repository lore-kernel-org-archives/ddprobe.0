Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BF5FBE8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 03:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720236924; cv=none; b=gZvR6K03PZFWHJyNQP2AbFzNoa23sJJwc275qzsvXqSxqI1t64PhCadnqu8wA6Ikcl8gb2rJpNaIxDlhIIKaRTQIr7f3XrellCEp0LlQkP25rZ9VJUCf3gy376splJ+pWjRLPzgAhRjnYvmbgVs/qPcilWOxczZJ6s0X7b9cpVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720236924; c=relaxed/simple;
	bh=mv9xmPZ6eAZ/LpVi4tlXCgf/49JegtbzN5V6CIimLyA=;
	h=To:Subject:From:Message-Id:Date; b=X/n79vCa3JZf9aY6wewpfWFL/TnxPX+mzB7G4kMc1gp1TsNigKYTJYoqnSe10+m706C2LK+UyjYF5iywdAeq3cAijgAmQL83PE6Vpb38uCwpJFtQdYhMmRZhuxEc7xXzVdi86g1xTYIlPz0nvZE/lu8Fpnbx5rqEo2+R7gxtWhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxE45QqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxE45QqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC303C4AF0A
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 03:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720236923;
	bh=mv9xmPZ6eAZ/LpVi4tlXCgf/49JegtbzN5V6CIimLyA=;
	h=To:Subject:From:Date:From;
	b=gxE45QqQ9fLee8aC3SP4b7fpXNTZpvix2gJHeMHWXOjwwDBp3FU2Mswj/9YiON/wD
	 VQ+QSb/aTLso+6fjQuRpIFcSpPqOnVQUFQ/h4P3nSypDvsCwu845dSb6leFhPpttCQ
	 Bs/WnGN0tLeQhd6Y7wNDyEoJRxBySlQr8+8og1KRzFqgNccI0eUFQRpq3SHqh/LTcV
	 emP3wgCYM/GEwlxagywcelV74Cjd6Rqt+hiPxqJh0hOSKtAFqgjNX7e0EyZrBdkO3+
	 3m0oHcUj0zwOMvY+VONA6jpUE24ZXIVkPk4eoCwhl7kCwxzclhdCmpJRARzPNIPH2s
	 ZTah0QyoSL9rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C381DC3271E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 03:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172023692277.17291.10506751663817700657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edc15f60a514e7bbd5b22d63fe389ebfa6e7bff778dc9cc07050e77d883b3e8e
Date: Sat, 06 Jul 2024 03:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720236922
