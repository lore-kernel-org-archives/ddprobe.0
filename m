Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537AB146A6F
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720910423; cv=none; b=fr2utsS5QihlCnILS35JMG9LOKR+1QjsmsnApetyo8XYqGPlRC0OdfklPhyGaUXNMMBkeydufnTqU1FHTontQ+cBRuQ00s+AWPaG9vft8YJovzZls/9xAMP5B0QakNwEDHlqqgar4aCG/NotRLOnJ4JVYA80XFrgcTPhqGDt0Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720910423; c=relaxed/simple;
	bh=lmFAnVpq7XqDhpEtnPjyWTgTqyb7AhMlTG2jwwbVeuE=;
	h=To:Subject:From:Message-Id:Date; b=SnsdnzPzLmAs+bdTU8usg8/u9eMvuEKjTUqqskBBbq9RYPwHqJqPkkb6KCgRE+CBdkxFDOL8HnBQ3csjNpWCXa+R+iEyfN1eE4O5c9C/pptIa5URkhyUXBmjxfcO8JgUFRQv+O0iw7bSN7ix80mjTj1ReZmvPmsqWopzu5DAD5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpxgghZd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpxgghZd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D567DC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720910422;
	bh=lmFAnVpq7XqDhpEtnPjyWTgTqyb7AhMlTG2jwwbVeuE=;
	h=To:Subject:From:Date:From;
	b=fpxgghZdO2RVj217b9rwrwxjzrJ3Fsh1PB1efJM+qzsj6LchMXbT/vdp++5odxmDx
	 c67PHgH6BAoS9I69T3kzyEAnOWU2m2LIYmJFbYVzpNLv7ZqfJbs0ogeRZgCEDuhDed
	 Ba0EnqngJ/6WpySL/UH9I5awmn+1xqDfu8S88UFeElurZKws1cv3Qq1AUIjSV1nlra
	 VMCiPsrCBVKKMeGaq/5JQ8RwON7dXBnIU0gmKNiEUl4AO28DPHKxMaDX7jtr09cwUS
	 ACxiLta/c/QWUyi7kQUH9glf8dviDOFr+DCeyymjWJJdhxP07wx/pcAv0sKviYXg/Z
	 uvjYupL3ZiXXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C292FC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172091042278.21070.14849740234504650468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b775913a64be8fddbcbab14cceb2c961310ae507c4953d85478160d46a78561
Date: Sat, 13 Jul 2024 22:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720910422
