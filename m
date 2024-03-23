Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB293212
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711177697; cv=none; b=W0rDSKlLfS1Yid6FJ7cTeEE9DwZqoyKbp/bYWHkzs8yHJYROjfcIoD6BZOc/55qUlgHxzXI7+giPmBj3Cs9TMFCCBoKGZ/y5h6uvaFAzFY3yreDqNJxtPxmO15m6W3NTnuOySNoVuhlMmnM63fjTWc79r0/W48ybIXHn6f9LW68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711177697; c=relaxed/simple;
	bh=CKTDXcP+nkqKVpKNDJcGe7uXcSID3zBvoKrTFG37Wi4=;
	h=To:Subject:From:Message-Id:Date; b=YiKJnTPiXJTS7ygBUynk/rH/mv3wtUrYAj3TzrsjTiVpKMupchgqhKYsTA5y5gEJTGBvwVOvkuKA2SE3sxdWrPA8pXcgm1jb6mOv656qtu34pWnNhAH2USGmot3y7msiLwunZtTZXUjODKto/n0g0dQzxHKWwZy6imhNCatXsaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvjmFbws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvjmFbws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAC5C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711177696;
	bh=CKTDXcP+nkqKVpKNDJcGe7uXcSID3zBvoKrTFG37Wi4=;
	h=To:Subject:From:Date:From;
	b=mvjmFbwsSf0kaOb/Oh6JYSHSlN+5pPsYNrWvIe/DCaS5ll0H54PuaOJp6xGWfcbua
	 u4b+ffoZog1v9o/RQct8fvgLBBSVJHET1x4tpy76RHtTQPVw3kdWbTfxwlgZ3onm6/
	 R9CAXvA+4XU5nltTjQKCqKqTQZ1PlUaN2qUhBov2h8yvGSdaLSM/OZs5AR0pCOSDpV
	 47Ca17PVypJeiETNbaiYF4+gPu/GP28oiH18Ez+I0zSE7Ena8TLF09NUBGEssMW/l+
	 VLAIdzHbx47Jd+F9QONzK4K3TXY3fvIGw6lMBwGq9Cn3u+bIOI0tmA7LCCy4CIk6g1
	 uRRiZReU4a4lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71A9CC54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171117769643.24512.7171556136134559878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52e774d82dc91cb7beca534d4290edb826f455f6a65a7dad30237d374a78ce85
Date: Sat, 23 Mar 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711177696
