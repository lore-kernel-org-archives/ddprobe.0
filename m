Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FF63E92A9
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792184434; cv=none; b=IRCCnzpxCqAIevLIYQGslsHXfeA/omz6AbPeOM45eHT3ZWDLo/6GLCXgpRjOd9uyY5rsB4OXB6AJU6ihBs/Lmp675d8YmKqMYO737WG7bXIsq6SdyPYA18iXyV1HNxG7q8G/mVuCtVLZBPOjRcw80sm33vGKMK8/1kr5g/yoZNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792184434; c=relaxed/simple;
	bh=qbUcHty7C+3s6Z6BWvjFJ5vD1rIhRbiuhQr+mNPc9PA=;
	h=To:Subject:From:Message-Id:Date; b=FUgZzplzHSWdrjITGAPhOkxioE8QDed71asXHqiIcE8/2yYT2jrA6pnhDjMe1rvtXI5x7Vedj/pv+FZkzSVWN9VQ0uZP+uW0tEJFlk5LhVWhlUMqybhFpQ217oArNcg9KjlBukMfFDZFf9NYHUo8+7/SBIvgU61V2lXKYlZTBmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eX1KYPO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eX1KYPO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D860BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792184433;
	bh=qbUcHty7C+3s6Z6BWvjFJ5vD1rIhRbiuhQr+mNPc9PA=;
	h=To:Subject:From:Date:From;
	b=eX1KYPO6gm/zS5cGkiEW3dvS6/fnHTxeHqIq9sY+zIs8O1kl8CDS5r010AcPkD75K
	 JZPQ7ZckXUMWBkm85xeNlt1RGzJGGYCty3hR480Vc4SRC59rZf61CtFF6CSQ69y0T6
	 boxWA3M3lD5w7kXdrP3a0TxbrV6uih18OLesG9f6KiwiRRT+xTeI6mmz5Oi6fbfFqO
	 Fe7UJM5Gnvg43gE/99q+zdt4Rpue8WngmItUc5G7tZ89oaYCLC6VerRQUbISJcUItd
	 KMMtIUPns/0smLrzIvqbc6znTcmIZt9HWLgV/PKkvUj5/VQrQl8bUxuzSTTWpgQjIA
	 1Y85Gc0clSu1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC2ACCF2C3
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218443370.17482.16303058447047284163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3da3043862734ce5362f7aa524dc49df84155e5b47ba8a76b4f17680486b846
Date: Fri, 16 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792184433
