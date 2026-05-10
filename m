Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292C23115AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778449234; cv=none; b=uUuQi+4s+HdqieeGTEljQ1fSxG1Q4JFoEAz5GNvd0shEARoms7JUlIWErA5Da5Sk8hPwG4ubH+5qSjFRMDa39nTtxhfnzXva4Zm8F2i65ahquPxhhtmQHyszOe/AxOhDvCpAk07vAPSXynZELYWqVzttNQZ7924GAspRzrlTlU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778449234; c=relaxed/simple;
	bh=fttU0gK5Nv2ARdrbEgIwkhm2cDLyrjM0H2fw+wDWquU=;
	h=To:Subject:From:Message-Id:Date; b=JVBvGEvOkp0T0PLJPI8cM+Zsjb34UFqBkjZnv7XUNF62iMB4K3CdEPjinekbYVxWfi/6LG3rAWxN7csUuM9Fk7LBKdanpSnZ5ShgROCe6NmRiD6K8GrzNmQcplUEsnZr6Gjdn76J2AuWdrL7iVro0j+8rizxIVgutLnF9OgOGNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVBxFH3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVBxFH3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB00DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778449233;
	bh=fttU0gK5Nv2ARdrbEgIwkhm2cDLyrjM0H2fw+wDWquU=;
	h=To:Subject:From:Date:From;
	b=MVBxFH3WRUIeRWx2/AO6MS04KpFL6OZGbPZdq+/dMKECf0ZS7Bb/RDVmhAImMNGcw
	 tzY8ZYiL4RlcIEvHtokHAIZ0COQUB8xmoQRSx70SXR+f4L55nvE/Pj7csMomjLfxZE
	 mSL1lDhNTjOdHOVFBe+r4xSq6fPuqPuFiG/PoefVYbiGwPG2RmjKc2nxBtMGDWn+1Z
	 J18rR2fIeq5U54YXWyzBzui5Spr5j27ZnyTg63TPUjN6+/xQ+Bee8fM/ah/X1EDqeg
	 XvN+cCeCkda0SKj1o7uJ0fQm5efd47pNLUoc0BkFoXRQStgXXyYNfjijYWp6f/jlpF
	 8B4Hxb3WuW29w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA53ECD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844923368.21885.18382607751450407309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef67b97ac031bee22d68cef2e269ef961af4e7b0d86fd45982d26e60587d2189
Date: Sun, 10 May 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778449233
