Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327C422EF4
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753976394; cv=none; b=jG8vhrtAT6MBuu41YXBWBhHIBOP3dAkyaMNU5ufvmipEgQm83SnzBWyp3zIGu21haLUcu3esgRChP3pVMgXw5YBZ1z26qcoFClae9pbAtGNCiL5r8w8poUBzKF0iT6wPEJ+hMk5+JwHle8G/st6nkDwXF44PEH8rQf9rBzdKgYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753976394; c=relaxed/simple;
	bh=xuhhg23xQDE48cfkylmXKpSNiCVKsHuxTg5kOwP5YD0=;
	h=To:Subject:From:Message-Id:Date; b=rLuhVdcqb8RQIgDFk/uJx9wEJ5De8PIMPaReo7baJGmO0AXQ6km6W0v908In5n7r+fuqNShLS9R1VbTFvWH6WZP5ixa/PZm+8+grSqSwqHcfiPREU/qDzaZcM4l5gUeIXfBdiv96r7vz6gGUuN55A065alsInNQ3O8L1pxV+WeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6HlTdRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6HlTdRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE8EC4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753976393;
	bh=xuhhg23xQDE48cfkylmXKpSNiCVKsHuxTg5kOwP5YD0=;
	h=To:Subject:From:Date:From;
	b=a6HlTdRNNiv2XWVH+yU/+gIq+fuA8HodJEPxJKZ96YMavzAiDx4zwJHjO2IjYXFSK
	 FYykfac0AP1zKAyuytuWQGc3Yz8+YWY8PCBQnCLV7nH0JEkN0xkUnyYwt+avqSEMxq
	 EvnzFBANcOw5Noy5PRTDMlgjo1Q9ek5YrjlhT1MiukQUhwh8qp7gqUMmeUf2kH3uRp
	 bf5O9Ay5Lz9yynsk0j6zb3MMeeH3Rc4ZPvfb8mRHvW4e+9jjITBanx5krytEWFCEtL
	 17/AALhlvncs9noFpH1Jy6DJmyZLR/GQ5KtsqZETOKgG3DFcS2yqc6ai4kNjcLz0fc
	 jRGXnwnZ2j1uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB92C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397639358.1697.12902495433931885642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf0415ce98a130754d5d789cef5fa326f3bfed1cfc097517d4e0c0cd314cc6c
Date: Thu, 31 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753976393
