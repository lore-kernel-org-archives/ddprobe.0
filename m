Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263B73064B3
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760557194; cv=none; b=fL9m1sOgT7AqNoEwHINi0MmX7ZE1LVGSESmd7pni54XtZmd1e3wcBXExwCKeyezfz3kASv9eNOU/yRPWNqvw/BA4GCRDEDiPGtmeZ35trPsM8uQYDt2emhKRew1f1RXpNuj4gDibEXDaoFQhuGBIkIuN6EtZil/5kOse69wA3Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760557194; c=relaxed/simple;
	bh=czSdN/mXz8LtTkBkeYX3Ea8JgbDHEDW0D1fV6NWn5Tk=;
	h=To:Subject:From:Message-Id:Date; b=FbUN0oqZJafknn4OqD1rBE5KVhMIL6OxoJyxPcUxoetFpbCmvdv1+jNsDq2CJazvjlpXqCVGA2aSc98rCs5eNOdgI8ZdyLYilzV/VJsHV/9yNOobXn9uT0Nae4YqCH5ZTRj4UA8qCZ+J42roVWygCI9RoRRrT3Niu0kvp8bSQkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aR+qTO9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aR+qTO9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0177C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760557193;
	bh=czSdN/mXz8LtTkBkeYX3Ea8JgbDHEDW0D1fV6NWn5Tk=;
	h=To:Subject:From:Date:From;
	b=aR+qTO9/lZZUCXa5yvTOgERc9lueHS3kanbzBFj/vMDroV8u3tqvctTt8fm2OAxQa
	 zj3cc83BWJSBvvJOclJS457pbVqWQI/px4BZYQhza9KWmwIeEeluxPyeLDNopyggVj
	 O9sWWwgZ/R1Vzgja3ja96A0TcVrmxwrYSLky+ncIyRHeR7AiF/76YuVb4yENt3jQ5r
	 DyMe6M5s5bxflTUXCTL643ueSE86jwqcPaY19rJtqLqOEkT0cTy4ei+Gp2+TSIrdLG
	 dhX1TYb/hR+bQO4WqIcLwpoHy14gTNCvSoGqQBUXUVYGuB6zhSeFcy7xYqWbwYwRma
	 PO9ClbxVwWXFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B91CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176055719358.27694.15290255314460208547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b6f4e3cca1f64de346a180d718461802be4db133bd8e028cc8383d881ac1f5
Date: Wed, 15 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760557193
