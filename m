Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1522D36EAB4
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774796094; cv=none; b=es1Fi0yR6/R/W8f3TGNGTdo0H4EpoFN/bJ8VGcs4Y+z4m4wtXCzGv0dQX6lG5l8L/PhduCBgA4V7dDjpIoKDiNNN14pysNbGabk0XHxQc98Mg4mkD2p/mPaerQmeNUWTM0wjKmiC6azRYvItGAtj2A+4AuYjzgkQgk6UrBtDoMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774796094; c=relaxed/simple;
	bh=I9Et3rJB9LzViqebRPdERRbCrbV61ExbXXs6DsAxHLY=;
	h=To:Subject:From:Message-Id:Date; b=tF4dIVOfLJJkDibSZ4BKhXj/kcN8kMwR62z+Nmox2L3gC1I9U12I1dwzGDj9qjIaEU9GoW1I2wTi4E4AfbuvPn9Zs5fFB4ZfLP9qaFFVz8gQ3Ami/bOZLEK8k5y0MmAKimN4Bp2R9pED+cA4WpzwrD+L2PpqFT0dTs+AP/NU1UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2NKELFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2NKELFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1894C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774796093;
	bh=I9Et3rJB9LzViqebRPdERRbCrbV61ExbXXs6DsAxHLY=;
	h=To:Subject:From:Date:From;
	b=r2NKELFA4mBza5x8t3fiTQzSwyL5Bqe/d3h+7Nc3CaFJHUyT+4zUdIzb3NLfStml0
	 XG3KJR8gzy56b+veAkVnNhEf0V9XZ0QjobTDM3bN4lyvjUIQDVknAz1s+03vgwH/BI
	 5GEJHC772cubG56jeCACSMC4P6cm0rw5knhMbDRNDlwcIofRNILKpz+LFu9IlTg48Q
	 OuyJE60wE62GeY0E2qPDU0b9ob7JrxHCGE6f9+Tsu0IZWjmf2KphCPflTmZC60EvDF
	 gTGBg3J27pjBkhtpwaHrkLZ7Ki9kAsfnB3dUIUmoCmW9ZZXArJwcsk9kbOawgLkzth
	 ljpQJJUVM3y7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12BCF3D605
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479609362.4992.343496586412209554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be4bf61ff99ce98719634f366e18d4a67fa43063f9849e11eac2bf7072142fd6
Date: Sun, 29 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774796093
