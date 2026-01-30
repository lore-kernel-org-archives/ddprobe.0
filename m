Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DB52E173F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769778834; cv=none; b=W+itmJEfhsqp8l8eoD4+1syvkjF9omzrFrPGs/i00bqjlIgSoL19lhvERyigVL8NgJy6GENmeLqmlc2SED/rUtYsad5dZJiuko4HW7NZVnxw6wij2JMR2usmm8g4QfXvGZiH3lS8nCUQwpV+zcraM37RbFPn2g0AXNTzeuYmVJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769778834; c=relaxed/simple;
	bh=pu7K5htVHjslHWD68/0cC0zFWLIMY4hnC3Nn35aNTvg=;
	h=To:Subject:From:Message-Id:Date; b=XXUhLTlbdEBKbSRe4LZZFXif7tqlcgPUMwU4i+wlMLp4ww1DaDy4WvKxVFhlBBLjFfXLIjwnDWFbBh+XPoCjY8sMo8oJujAzra39Qc9CLEmNNfDhjxRBPVvsDpgcGTYPKTmPTd4XekHLyP4y6ZHFkeZWsmTUIgfPj7zpmsZCrok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENZxbyx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENZxbyx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F21C116C6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769778833;
	bh=pu7K5htVHjslHWD68/0cC0zFWLIMY4hnC3Nn35aNTvg=;
	h=To:Subject:From:Date:From;
	b=ENZxbyx3PpK91HK9BJAc67rv4PximI9owG2MsJRbNmVb4C7ivNZ95Sa89edSoHtBI
	 t8pcXKd7MSWxIcDeUgbLvwbTQ5SO8a07HLj+DvfsshS54YaYEAjJyoQrU18S7O28Ve
	 4iNgGiOoBLi7Clmym5DoQAWLfl5KYRzMuWQ/65rkDmIsTjG0oRgQUPS5aWYJQzWJVq
	 5cDm4UG3fFP+6hwZ/eNYKOMLlhUP75EQ7cu3sGLmscb8Z7kq5oOt5N7l/MgV+00JRG
	 24EWIzS4y14LTU/nTTKN9my4tTiASRXNJwgVatCY78fgsqsRDRwgWr2gVrlGocQ2In
	 W3zBOfVK0sQ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923D8E6BF0E
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176977883357.14076.17424823334794737629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950e1f20ac8606cc778ce681f34ff37a4bfc1b02bd980f8010bb325005de044d
Date: Fri, 30 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769778833
