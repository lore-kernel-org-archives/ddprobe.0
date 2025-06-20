Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5A2317583
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750405193; cv=none; b=He5r6ehwC5jlSn3d2Bt48sO6AdtVbB8TjxQtjgax6QdHTGnz29WBE/+U3293aCXLkz69OThlHvWRizzz89UTBcS45kqC4g9fnVEp6In0zCn5enTQ9MohunzojLd8JJcLvbxFUlDBBjpSiXYpRLNnSZ7Zizqa9MWYuUD8KlRUQNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750405193; c=relaxed/simple;
	bh=4badOVnFoljChBQxtumLSFsKJyI+I1bVRAOSkDsGLBc=;
	h=To:Subject:From:Message-Id:Date; b=Vzf4YBDcU02yY1eatqrWIMHPcCTnzO+REnwS/EvZwBdT1G+xQqO31rv4bKDGfXeuD/ciHoaCIl4fkM469w1/+YWny0YAqngGtcf1GCIE6BBKPM1xqY6AZkJknTbt4EWGlWoneqeG6V4OJH5trO9rIBDhfNfuDLcDEn+D9a7yN5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NX35sTtt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NX35sTtt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D975C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750405193;
	bh=4badOVnFoljChBQxtumLSFsKJyI+I1bVRAOSkDsGLBc=;
	h=To:Subject:From:Date:From;
	b=NX35sTttPYWoiln5Mc50rn8E79dYcTOLERYx5enw1NrVaRlF4Yk4mxoY0bEO9orD/
	 GyVXi6+YBvknJIClPIYblqKN9FXr/jqRdpyfud7KelY9ghJEM3npglONeDyIzlrNOw
	 qFrf6NF/bXHo/PblPK59SZ0RxmevSGM0h+D4kKBGhpsWBVOW11dbIyTXE6Q2uf6khK
	 6U52beq5/RP/1CxOWWSp0Dl7O5XX7sZjXLUqJNH/dhtn2/E25YijWsqL87U094IcnM
	 s4T5fUWhpM+ZrIJJxNHglFbhVnohh9eQrJDIdLC7n9gwBi7VUUjsWvnIyA9HaLr4j2
	 9sdkyaL5ZsqyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0A6C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040519357.31559.8028707430063990653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da562027a2d480a2af6441d44f936a5e63c4f321e9972a65f4e262ddde487532
Date: Fri, 20 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750405193
