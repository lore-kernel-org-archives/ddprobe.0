Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6F6255F2C
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779469954; cv=none; b=B5LxJfu0lLGVnK1Rjw1RvfKkfWQ0L8Fc3tNeonZ37ecTAITMCrp5A+XxoQtvW3hdXRi2aIe5eB2wr8d7al5tl+xDU/9GhV3tUJ71XZ+yxQga/13lumas9y3A0GX0P3Pms8Z+a+j+2j/PXueDdPjr8QzsniGNpkJUy+fRZNNTaqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779469954; c=relaxed/simple;
	bh=p85aC89kipYM8cUp0Q/vJIpPx89PypHKO30qAkY2/80=;
	h=To:Subject:From:Message-Id:Date; b=jRIQr/7GUJasUZhN0Tkfi/eGZJpKzvE/i76ABLLxfATIetht5W+jFYp28VXT5UtMARUjTRy1RMAlprSF95fiEwcz4YUXepeDSlnyN3N05EQAgcIH4hyOSD/UZGf2WpO1WBLwXsp3FA+HDqlx9gkvqD3ZEKWoJqDtJxVnObEW8TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+4jlq8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+4jlq8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C28C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779469953;
	bh=p85aC89kipYM8cUp0Q/vJIpPx89PypHKO30qAkY2/80=;
	h=To:Subject:From:Date:From;
	b=l+4jlq8REK19K2QL9hMFoVol1A6vtEjVtIouMT+8yylBMPEBC1+Uh6WZqoqp2ZewC
	 mmpOSeMhsvWauTuz0fcI3bip65WYZduUjJyQ87qF6V+1qUNAUq1JHGOudQp3tHUTI3
	 rOs/2z7zn1qA9PR3/joirsy6b2ABgx4uHyGl5SnEFnYXf/gg0mZ4Zg8o5cnAKGpnEA
	 EMAFgcDITiphpnGPcsRwcSAYcW1F+QFqPXf5TurR9wFWArJSQ0kWduYxK/3I+kAFec
	 Zil7xxiPVVUeoLCaLjF+xs+RfHXR1CgNs5fXyAaGX19n3aTENFpa9LllXsy8D0scdo
	 HnDJlDXZMydSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7F1CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946995368.17031.6549137343575954811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca662ee624ddbd784bfbf8144488741d00e13e597e6d447d874b5674f1df0d3
Date: Fri, 22 May 2026 17:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779469953
