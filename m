Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EB51D6187
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765937034; cv=none; b=LRTjWCUQK9fXhGF2zDO1FFHnAr+eo6eUq8JiEmJlA/ozNBmEB2Gq1uvdViZG2/C1kgEIpLc6FprY1FAA1hCHAbg7SfljjOLAbR+iJCuc4AEwLCH2z4aH0lew+rNKxlA3nMu4+Af7N6PQjNfoJZ77yxEarDGJuEdlTxIV/ZmHtCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765937034; c=relaxed/simple;
	bh=8iDIGM45PqTekteSXa6XXAm0HHVO310Nafv6hDpFkEQ=;
	h=To:Subject:From:Message-Id:Date; b=VZa/QZdaGKV0+PAl6p/AZiWDOLkKz438vjBvVF14dmUpQK2fQZUd3BJg1GOAmcyp2WK34k0VJ3NvDzpqVgko0mqxrsLFwVJWu3USZU3gvjwH+skJ5LiQEAK6e+/osmPS8Vior7u7S/TMk05JUFSUG1+zrxDCBrF+5Drw3IcxOK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPBuEEye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPBuEEye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8421C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765937033;
	bh=8iDIGM45PqTekteSXa6XXAm0HHVO310Nafv6hDpFkEQ=;
	h=To:Subject:From:Date:From;
	b=IPBuEEyeUTjXT2LzG53zHVde/wkTf7x8PO/z0E0evZRltoYL9nWEo2YVnAfgtg0sB
	 zSTHPv0nwNBSzoPYJ/wN9TT2X/+hnTaa+H5/FDu5Cl3EYOPG8uhaaki5kHYVxkdGti
	 ZXe8fd1LqDsNnDZ/zbXRaamA3tv4Dyjv80nyT2rv5eadblQDykDLnY+aGMzCpi7reA
	 2Yy/cpx4+UGISIKokuV9RzPAFLszLJiSwLQoj407YMlXe/qZ6Rv4HTss7iXEguFrUC
	 LCn0M6CMvYAP+5diLtE2hVjy8gdrhYByfewRxaOGc9HOLzzAOVOTMxm3h8rxnEfgIh
	 A7cN82PFrnXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9665BD6406B
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176593703360.26570.13791038971231021053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d6d422d7d14680145fe391dc38922802440a72c56332de1d6b33bc3b19ca3d2
Date: Wed, 17 Dec 2025 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765937033
