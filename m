Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188AD1758B
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753811394; cv=none; b=lTPGEt+mqFfC717XCgAjhasSv1Iz6RYMPLSjfYdhVmFy/bSpUKH46ZXQY5Z7YG4x+IvHuR33mqZ3ysasflzROIhnJxXch2DeAm3B0P1DYUueoArh5rIYK0CxiIcWfVuBTV3nLW5x73Q/4kuzB8U99x/UcsjNCD7R+GSKxYXh69s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753811394; c=relaxed/simple;
	bh=56ABI1UyOLczJ5hZvgPUPeGapEa4VrBxI6dWJsnD2u8=;
	h=To:Subject:From:Message-Id:Date; b=u63vrl8HsqAfv9nAouxu+d2irZWPW7FOBKeGmDWRxkk6dco0b7EShLTEt+KQnXwSuwm/smRWGxoEIGeidNPSUDNxcR1fzc4TJaZB3XhZNa1g6mNc/MDHs8zKVPJg4BQmLaqIcdoPNNCjQ93xIr0GmGEBIcjksLplfGAq/4lirXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cg4ozmIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cg4ozmIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18BDC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753811393;
	bh=56ABI1UyOLczJ5hZvgPUPeGapEa4VrBxI6dWJsnD2u8=;
	h=To:Subject:From:Date:From;
	b=Cg4ozmIQklDU0x1Yx+yUsfAgeQyZJ+z3WmbpZHFhHHW/d3ZqqgjD46AkiT7dPqo/6
	 haZzkLe92AniIyUhg+kXtBGUTmqesBQQwdVKxwqrBZ0uuipK6lQbDYG2NAUc1Ca4Jm
	 CCSp2qrRhnbqL6XWhlbHdeluOwjwxurfSeYXfL3ohGe3USC/pq3cLvim+kq3LD5dhb
	 FTr5Auj1B101n9LuBLFb85KmkgUd72eI07r+lUXBfLaDxjwMgHvidUwxgipIsTAjFI
	 Q7P3SzDTRGw021GIzyfb1pc6VgwsiJEvTGBECP/ymJdbiBxFivvOtgDwe028ushTb3
	 O6+P7OYgQ5Fug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCDCC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381139357.28074.9913817207589548610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a14c694a3fa7b6aa02c28b5aa4be053cbd385e43acab3f0ef705e2aab1821712
Date: Tue, 29 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753811393
