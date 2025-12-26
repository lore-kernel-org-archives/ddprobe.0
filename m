Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2349017E4
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766707434; cv=none; b=p4rw1uvYcRaYD5dogmHhx+wtVjTGBDkwrOQdX+VlU49V3yyv1TXP3Fg8rEsvV4OrpSF80LPgNLRFL8HJcw1h+8mbT075lgV8XUGNq7vZNqvVgOzyOj0kIzoEA24P6KjKHKjSMAwoAG0mQeKBBE2UnzU6/KR6o/eUoG7Muv7HcJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766707434; c=relaxed/simple;
	bh=kw0SmADuStunUhxL6qwoC38MTV1X6c2hKYKUmf093d8=;
	h=To:Subject:From:Message-Id:Date; b=NOs0LGQPib9fAuzhECOv+Huvyn+bLQOtJSSDMvkr22KUCS2xpRhOeR13m3tgVReyvQyfGZRLzXdlfjLlG3awKiMrgfmmn5YnVGgrtB3S5eNBA+Yq8rV/m9/CQqk35vyy85t7qVXBTlC3iM8BBnHCIDzofwPJzDStjeRn6ok4b5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2wheF9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2wheF9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE42FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766707433;
	bh=kw0SmADuStunUhxL6qwoC38MTV1X6c2hKYKUmf093d8=;
	h=To:Subject:From:Date:From;
	b=N2wheF9Wyc/iq8/UGpTJpvpiR2c57joNWXf0wMX+Wr5Okrh6cY45IiHrda/6hlaHx
	 l+0XqSf8uA9Z59APhLzqZOqmYPZ2Id7mK8M0gX62mdPCtAnj+9khZCpR/5LO/HFJPO
	 tdgQcEGxVqXhW41ryXAkJre5N10o76NrFPvb8UnsvLT5j8ATKstoLAPT3iPGL3aSxy
	 N6dySdyqUWdnihF11u0p40aYxte5WP5mlSTBHbgpo4nAvDUpXGcsmqiMR8A0A4Xafj
	 eLDvqHmDW+ISxkv5RD+xrZr4QY3LeyBs20o+jXtqiV+ccHNQTrbSJ5CpVg1xzZ7N18
	 EZBTP6EHrSHWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F16E7AD4B
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670743358.28106.17164923354453071283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2622a757750296a5c3f62c66aec1ca847eacfd3367f6bc850d84a681dbe15ec1
Date: Fri, 26 Dec 2025 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766707433
