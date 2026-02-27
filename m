Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083ED1A317D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772191494; cv=none; b=NHjLrR9kIdkNIKPckF2QXru7GwMlOYbjFSzGNdqI+FHVBpar2Xgo27HEqBuqtIUgZHafMBTS5gtccV18gOki504bEOGGFrb7ksvfiNyy+Ldd5YwAu9YsoGlzAS2TdiQpEFq7npgEGWOyHhQ/wjbTm/rW+p/q5kVdeEoYAm1nEOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772191494; c=relaxed/simple;
	bh=JxRAr0lRlHWWye9RayESAF530aVDE/bLv7wB7TCBIjg=;
	h=To:Subject:From:Message-Id:Date; b=cVQ+L1D0Wa3JEWVm9qzS0hz/yMc0BxAwc1ei+IzJmgZGfB8VCdle5uXNSdVskpZyOOjTfXXpr91YARU3KesZEnS98INFVkLnLGjok7BykbbwfXwSCPn5IiABE/QrPkBYuR148eb70SRlxQ7UHQ3OJDURKRRJsgsQTxXwUQVx7sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrEd0OdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrEd0OdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0DCC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772191493;
	bh=JxRAr0lRlHWWye9RayESAF530aVDE/bLv7wB7TCBIjg=;
	h=To:Subject:From:Date:From;
	b=MrEd0OdQqG0OBYZYQCbLP+l+JFwIZFCbyLYXOQE8oB1EwLkjOplPMFuCL1lvRxyYm
	 LQ/kNsig3vRtSIlBw0AKHunqYg8G/lxxUs4Z5fbxTwUsDg1QCZFMjCsLNEZClFS0cV
	 larcD5dcrNW7Z7518SwE+nXVtr1CHPfWxNE32EqOzTpp7MeViKOcGTg4cMk/cCjICy
	 zG9JhignmGNVtfUxhL8wNX7fvti0n1Y+FQo9wPmrYU4UZZn2335NimRzuvtelI6REK
	 ayd6qmAS8W+E07ynavDdKJ11lVnMJd7QayAphxlvU7PLHaa1Fii54NfykRC2I0t+to
	 qQbt8qc2dVJpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F610FD7F95
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219149357.30620.11745703291535924710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e6cb6dae511b6b90fd0af38be3df12d5895c7dd490cfc91b633fa55224ecb68
Date: Fri, 27 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772191493
