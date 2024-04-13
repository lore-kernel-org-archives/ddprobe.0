Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD5C5822B
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 23:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713052763; cv=none; b=i86WgtloGF1QH87saR2lgTsDaBvQKVtvkjO+/vXFqF/Pv8o1u77KVk/rACbBbwGNJZikJ3m6qGlHRkSfH0JgB2PLgFL+a0QAFb6EKe2Zn0iV1iCmzaSuV7HlwjcDGYQ0EsRN9g7nNofU0DIzXZZ9eDH+FMApdpT6yIqPXwpXf+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713052763; c=relaxed/simple;
	bh=3/IneZK/z4zKFS3iYY43hs6+YoC3iCAcc0YSrml5pGs=;
	h=To:Subject:From:Message-Id:Date; b=o+YpA6fimvlETlbovQJAsfEPjDDmyBNiIMn4PAbBv98pnVemDGr52Xls5xFKNEksBmsGNO7eGgG7UqazI9eQe19gxw7RuD1iWt9eEukVbHKrX0lqYCI6Om1mVHqzAw+3XKUs8uwfutCIdHOgY3b61hiQYD3KYSk03mnJWfGy7sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpzb+veH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpzb+veH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4460C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 23:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713052762;
	bh=3/IneZK/z4zKFS3iYY43hs6+YoC3iCAcc0YSrml5pGs=;
	h=To:Subject:From:Date:From;
	b=cpzb+veH+cGeWsvHIeqphxgh+UkRuVSm+wSOQtX41eOOM6cOixNL7T2Pr9Yn+DK7L
	 MUtdcu7wdSM2SHzE6VsGUGUShXh6AW69zvZsRQaocamMYE3zrXYw+h6uv3v9wXHQgf
	 Ms2m67D2oV60EC+nLk0M42rFXeCn3m1eNxWi/X/00gYbdSf94RYLabH1Qc8mLocf5R
	 jCFdCfLldikHkb3mTN7W0ExQ82duSWvaXQ/7kwYYj6anI4XT31gGTQ9X4kGQrM+2+E
	 H3uleTBNptSYoft+MngzfXleNYUwVR4gwNGlcAllZO/8OUHqaWHGt6S8Y7ySWZJCvP
	 TvI2/iGuUmAgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C84C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 23:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171305276276.1272.18321848377445019678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a7c34835f697eff762c03f0874ea9c8719dbbf787081b186bd5deb34fd8cbb
Date: Sat, 13 Apr 2024 23:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713052762
