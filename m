Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5D41FC0
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791942634; cv=none; b=BIGj3MS0RToTUYlTQ4btlgyoGQu+WAENcXgG+btTUu4So2SDOnUeqUrkBYkf0mGkVkPJY+WThJsZIX3tfjdbFeunS+a/BEhDROpBrjrG4bFacODzauWfI82mvRtS5qUL/HV3PoBTA1Tbl4+LeLkchoSkH4mTtV5EAqN+zg+Y4P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791942634; c=relaxed/simple;
	bh=xQhKfSM6TpUUoYQjEafZThetiAEGoDKAQOvNwQZ5x0E=;
	h=To:Subject:From:Message-Id:Date; b=MR2lXhlMkI1n13hQ1sHlPaUR47nbJOkCWYRkgH8UbWGmefSAMnm2lNfI67Wm/Yc6xf4N0xQkVWH5z3T9vJ9/glmDA3BkSrHhic1RC7wskei1z0HrvVzND/8VBG1DXlQ4MFNqCn0XrlSWvr9EdVir0rw2i02ZV0wr4CDgxnPgfc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQ2OHOcU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQ2OHOcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0340C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791942633;
	bh=xQhKfSM6TpUUoYQjEafZThetiAEGoDKAQOvNwQZ5x0E=;
	h=To:Subject:From:Date:From;
	b=HQ2OHOcUBOo0b6lCUO/vmjln7HSHilyK0y1/fjPy6bxHVx/E8q+DchwjtHGp19KyH
	 osaSwE41POre1lYoKn/vOUaHotNi4zPm0FRPLU3G2CofhgVdmqKf+tB9JstAJxFmn+
	 Ac02NqOXK6FqV++pK5e6b//gxlOSeYnliwOXNetpctB1zUD2xZ+20s9WiB8mtKe3bT
	 Iv0PT88cAMnhZf3vqshFH6hnZF2beVl+3w6qbI2IAgX0aUu0QO73H8QYYpxPjWLH+O
	 tuwFKE7I3+emyjnclwpkDpSUQGENodM8erlPAo+xAPC8FB9KxCRJbMaGrYrATIsw6Z
	 twblNt/vXsfZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0438CC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194263369.1349.4297411160979308962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5cf54556229ca6e9a8c20d1cc3983bfaa0f9dbd4843d54256d9441384589809
Date: Wed, 14 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791942633
