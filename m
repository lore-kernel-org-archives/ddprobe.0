Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426AD481A3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748223594; cv=none; b=sFjL2FoTx8oJ6wbIWmMqpTGpTeUN2tVStORj57N40uCOlETwi3MBASbmDL2RUr65OLh/aaFphPYdnPMzBzTAF7CH/yFOv9CYE61SdXgDZbElg1B/VB2ZWNwPoOLt7tWj86Ry2jbGPpKhkMDea9EWNTGe5V0SN+QkKcsmKGgzkzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748223594; c=relaxed/simple;
	bh=fZ8Hcr8WU0EQPd17KZiTSzxJiICCgTW69+tAKvv1HWo=;
	h=To:Subject:From:Message-Id:Date; b=ooH3tr7Cpl9QLNLtaxPQ7SRPZVulykOXxufl1hbo0Kin21TabZXJ8Qjz1HSoXpoSQ2llHVuVR/nqCVQfmzP5yZ7itfl4pWqvhwGsMrwphZniTSihmTmVQyYObf8babY/bDFoc16zZ+EukOXS7zgpAfdiI6IiELsHzHNIF/is7bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qm8/njqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qm8/njqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4ACC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748223593;
	bh=fZ8Hcr8WU0EQPd17KZiTSzxJiICCgTW69+tAKvv1HWo=;
	h=To:Subject:From:Date:From;
	b=qm8/njqoxHTqzzkM2FOvDgfxzTWBJBHn4Nu5dYUld3V1H/lZbuYd0BEPgqYkwM/bU
	 Am+sglLyKE6aNd4VQUiA5YvZRe4Nwq4yyhkTJk7AhCuSkymXA7n3jQe9B5/2/DgOgr
	 w0dLgiCT8WmN6cBua25z3V8n8vtlXKxwA5c0R7c0XCmuie/70xSr0hEjl1KBOWEtit
	 mX6SER4CAsgLjx87p8sNsqpQIdn7DNc26/yZxLyOUsF0z6SYAKJUdzt+ZPhPaten87
	 xajOEBJv/xJKzqVkeet1QcCkQsYTDnlFxCCQIlmkQdMKT62vqLL3ED9CU68liZnPj6
	 qkcklIegGVb0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E89C54F30
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174822359359.28778.11173781803053582819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29826571924cc8eb31c831dc1cab7fed1c5eb7c4ec8093031c878efdcdad65c8
Date: Mon, 26 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748223593
