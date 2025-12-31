Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5581E246BBA
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767148434; cv=none; b=Idz14WwhGdK1WdgMK9D6KJqIPpS0KmiJreSYa+lXoq0A2r9+K0/ynIjXCb4z6d6kzmmdW6yPpBC0v374qu5F3Iadf0Zf8XCTU/r02pFzCawqBe1jI0Vn7Bm4iQ9TCf0/ePGokxj439vgOtrAaR7JBqJrkqyZRmwuPmpXtn/gOj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767148434; c=relaxed/simple;
	bh=vCWuIOgzELqson78MfrK9ZunfdBZWp1b0ejHRwABxDA=;
	h=To:Subject:From:Message-Id:Date; b=g+s7DE8tKZ4x6nDKl+/9K4VxODnPoUGAmB2TyUJO8aRYUyiLFKRzvIJ28kwP0PWwbvO19/6lSqyTtUwMWd9vAn5G4axRIcU4GLgjDUU/v8bvXIRUIUJzT27QaCgI3FKkk3PRSuDQprEgtsqFx6LeQQDOh/AFqNY0MeR5guWR9HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSYDzysm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSYDzysm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BF4C19421
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767148433;
	bh=vCWuIOgzELqson78MfrK9ZunfdBZWp1b0ejHRwABxDA=;
	h=To:Subject:From:Date:From;
	b=uSYDzysmwNdYMdECyK/3+vFjAY1wu4Ld7EJA1GVGwL5UfdoRmg3erqbDvyz66mHPu
	 2ZvvhOkCeKBun0nmlkjZJ7DDxnCbLASbP0SP5YUDN1SV/8+Bh3mNLc+wenj/UORkBn
	 cU/R1FG6x1hQFHd0/XUhmbYxB+iWeXk/sziu37t1e7KquLB3wy7cdpOuzhmXeUBHTF
	 DE5PricQjJ6+htpkBaaF4mQLOpTajHR/oIKNlHhtfzyJ51aAPx/nxsPCguNXLVQQv3
	 oGnYhs1OXrAdw/P2vXrCrzN9NoAW+iaBghxXVp0HuBWdxiFDv5MQGgD+dxSZzeB1R4
	 7I2Dr25i4N5cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91759EE57CE
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714843357.25931.16631926083778931676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b128944f54a6d14dfb59e76487424a5527091ea8822a2830e01f6e8ef030da
Date: Wed, 31 Dec 2025 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767148433
