Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413BD2253FC
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782090394; cv=none; b=S5CQLn0yb55s9K2zB7aq+joiMlfGy3M2lb8CnEVltSwi9h6thdFSTJ71e0pvB2lIwPEmlM3NEcabEpA+gPAAiN1xzPOCNEikhI9SZgk7njdXOQrmw3HWGrdM6TeNvR2fqN3Wth9AM/W11AyB81ifh0XzDY3UATh5tCRI4IDHgDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782090394; c=relaxed/simple;
	bh=YVGrLqw6WLfNrCS08ekWysn06WZfJqzPtTm4NzE8E1E=;
	h=To:Subject:From:Message-Id:Date; b=J9wiMnJU5TahdIjUW4pY1b8eiyrvh2xcuFPj/Gc50voBSitwlluzz09miDMfgn3enHYRe4r/B3YMzabdUGKPvj2WGzWO0z87/r1IOe/zzrBRmGylnSl1+vKpxyTlU6bT0yE0f4qYZbBJcg7tJSYNoFwFKrNFw8/rTItbQvHNghQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgPO1/u9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgPO1/u9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB281C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782090393;
	bh=YVGrLqw6WLfNrCS08ekWysn06WZfJqzPtTm4NzE8E1E=;
	h=To:Subject:From:Date:From;
	b=GgPO1/u9WTPpANlp1lOpjPB9Ktt3j7D/pf+XBz3zqT5IeTDzzQXLUB0y/Z8lQcJ1A
	 cxiPR/RaBWDcniWiD9uT14r0PwwkAIE+1onBln5OdfOlUvI9KElpHYhwswMCpP8OgC
	 QwbWBcUw6XqJOCY6Aql3lXMvDcbDsOopLUuzjMLqxwM55pEFCe+TTRzKZimoXjYzF2
	 1sJJiGWuKa2SX4Mzai4S8EFqGB71QGkuv6wSaGuloMF70/6mBNHneK0vE7v+xNxDJH
	 bQzO/QdwjzB2m6VFE0QWmV3K9wvdhXN45bj8l+mN8RjarFqk5/gYA9Ch+FH3S4H3aF
	 hAIn8jWod4wng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE37ECDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209039370.5962.4243494611805550071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eff731a7de6f0a3cb85579f3d8d3f45548e6fd71eac68c5136d07130169607be
Date: Mon, 22 Jun 2026 01:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782090393
