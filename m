Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A301391
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767485034; cv=none; b=t5Wa9QiuuY+QLfGZM16u7vqVk25ElFiFLvNsmiwMt1RcC+Vih8P1XwaeHfcKwKYkc3jVq9lxb4Ku6LlVkzkANXANdnPtsE5PNKVMceZn/VMJ3vM689GrXgYj6+jchksbSq/E2sV8xo4pgnffis8LXTA9L1Yla7pKBRLUdg2plZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767485034; c=relaxed/simple;
	bh=O5jAJWhzQr8KB4Jji5XuptBCfys2uqMTJjRZ5wPncE0=;
	h=To:Subject:From:Message-Id:Date; b=i8Se0/OIsz7xXwvHgZi+TIbyyswIxrZZLsKz2x/exQty2b50ZLvXXYUwql559cOC2CbgbYRySJs74/7IDD3EuDU50RzS+T1rIobsW3RJesdTMeSatMlNtU8JrqqfgHxzsjQBbCmC+z6RH4UwJ0wEchzYWJyN9RtEBBsuIgrHrW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URUtPn1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URUtPn1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C0AC113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767485033;
	bh=O5jAJWhzQr8KB4Jji5XuptBCfys2uqMTJjRZ5wPncE0=;
	h=To:Subject:From:Date:From;
	b=URUtPn1oqxxsL/Vk1jJjNyGzSGStVhp4uxXBdteokaaa34x47YROCaCN09zGCuyJD
	 JtyabIQ4JBbJy0S6MP7sfc7wqUJMiINAOU0qXpIIMSgpno37EvRdqFJ5HPrHSFDAfR
	 b/qdapMgV7RUQ61Ak82LPQq9MG3MW/79+ChpqvViG7qrm1k/j4BT4+4F/2pMbSDZhq
	 Gd0vmf8hEsJRW1Znp51WBUbl8cfsWxg6/lkOI/njiqZexeoHL1qjEjq2ThcKuFmgGf
	 frHDB3NcxoE6nEswELe5NuTbSpyDnh/CIIP+J4Ie9CGlYHvouV2oUvuf7ZDSp651rp
	 EDx+4XVmSoNUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94387C2A060
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748503357.24711.9077622320395783626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f73a339a87b9ca7be975e4ec5ad070975212523a8256a12079084827107014
Date: Sun, 04 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767485033
