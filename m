Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A192C853
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 06:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714545743; cv=none; b=hY+fAxD+ue3QCAvxwUZAl+M/a1YPwZvNgMHlFbe1A/5C1d56j1wnnk29DiB4COI6Z8CQAvfB2haZb060B6SZaYBteJ46GSOq1AQo/6kq30oFLgEsfQO0p1mxs8TlxRrkOP0CXlVA052mCkzfpq21RKnBV9MDVvmG3dYWewK2e/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714545743; c=relaxed/simple;
	bh=c2/sC8bu25R5O9FjECTd+lfKYzaYA+NV0s8w0BVpVqk=;
	h=To:Subject:From:Message-Id:Date; b=EETPp9VFKC3/lLxoPXu11wk/fQIWHwD3sbnJjlKKa71gkCqMvhhivcFNqF4LK0fBlYQDv6hs/kinnzAzgVX8WhL654ThF9+eH0aghrhE3FwrWWBpB6yO5GerMW3t3V/DiR0Qdknyn7renYU0mlWeGTu3ngyEc5Aw7K3k9NaLl2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RW2YnfxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RW2YnfxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EB6C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 06:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714545742;
	bh=c2/sC8bu25R5O9FjECTd+lfKYzaYA+NV0s8w0BVpVqk=;
	h=To:Subject:From:Date:From;
	b=RW2YnfxELQflYjG+Sw9bVpQ+SEI0iuC7MyTPKqrL9GCMvMdereh6bCWxkklA/Xp33
	 ssZcWdHuBq5Yj6UK2uohOnuHOHs+lpbxTcLaxm21EAsYiApWmgvhDW+G7Rjhgx9Pf6
	 c9TYvUPHFLFBiJ/m14CKQbaL1Nnz2gl5HIOMTsE0ud5uqdlj0MXZ6qcqiHsHPMsdJz
	 D0iKFEUhmhbTUHi68k1+1tQoY/Mtrk7Tfg3tTTSWSWUCDWs3w8hfTaGu9vqWP2fIUh
	 WUZBYoaM1dZ8Vo4qXKW9W4dIyJVPmyc/6tgMbtFW4gqy7iQHAJLJ5IZ/zBGqi5k9ol
	 yzhYD8u4x2Img==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEA6C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 06:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171454574275.14319.12253476421896898779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3af2dcfa67de10a3d6e9773eefb27190a55a9285f5d0b446590db7d05747a56
Date: Wed, 01 May 2024 06:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714545742
