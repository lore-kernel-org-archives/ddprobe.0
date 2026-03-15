Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0985535B62F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773600894; cv=none; b=IqOFaAO7v+qMwN5JLQLYb3QCgEe1kYyTE8hsUD4uRwhsqU9YDcHcmb9379iQ1Zmgmt9whvDVlPGc1OATYzJjvUceR1AtT2a7/5BwRnpaVY3YNNFD+ARsJQNLQ96AmBouhxQtiV8GvzEgHJo3gpYoA3HCuHXV2N901GuvARK1rQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773600894; c=relaxed/simple;
	bh=0QsDapkKpPSlqrHg2OF05+T9ZE1jTznT/08GSabqd1k=;
	h=To:Subject:From:Message-Id:Date; b=gIroBQYZ3m1V25Cl6ycWEnARX7saV2covVT9l32nKxCSIOfsMjnBEjvoyfA7PnKnV69AW+wS9pb5Mr6wehQji19wPWVaDHqEEv2N28o5byU3gKnjI1Uy/XBPsr2/mez0SZEkltPSmXA601Mw+pM4GfyhWcfM2G+9MBPvEXxcLlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dro+dbG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dro+dbG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD27FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773600893;
	bh=0QsDapkKpPSlqrHg2OF05+T9ZE1jTznT/08GSabqd1k=;
	h=To:Subject:From:Date:From;
	b=dro+dbG2ilyWtBOtOOaVeQ+rUMvNgSqFXj4lRN86G4A/T0PmE6CcO9kAeA1yf+w6r
	 XGNfXBZ1lMVPapEDe5nu4JqQBnpdni6q9q2rLfis6trCJZHvkx4DE+Tw0uUnHrerbz
	 YbOU48b4t1WuMImFvcklDJs7uMLCeVr0lyhMHZ4xhzz65b990RBOzvuvDDqkwOJ4G/
	 QRl1bZTXVK928+TiH9zjVyP+lTB+3rh/2xSnZQEtvbLXL7Lgh1Du1dMmtqUrs7S6I5
	 tYVlqG9g3aF7xPA37y+U8qN8VTrfeeaxeGgG9CI/EI+KymalA5wpqFS1EkANpx7QwM
	 R4g6u6ePYFydQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C575F3027F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360089363.5869.16756879117047698271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3198f93ae7d13c4ae96e48dc42e353c1176403558f907e41cdb5bdaf8619ee
Date: Sun, 15 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773600893
