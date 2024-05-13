Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583234C81
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 02:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715566943; cv=none; b=hWicNCpcC5e2/YiYZ0ZlsU+EMxo+UTKvDsFRLZ33p4xRbTF857c/yUUb8T1u5rTsSrzkYhPpHECopjznOCc6wr0oAZrbcJiBgtLpsmWa5o/bB3oV3q63arQxG/bm61DtZHWq6MnH0u7Cp2+1+nwUhO3CcBNrv1893xRNtnLZUQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715566943; c=relaxed/simple;
	bh=Vnf/rR8EUmgSEfBX57K3ZSbcwTSiWpfHSxdDrRAQtXg=;
	h=To:Subject:From:Message-Id:Date; b=B1hcquhxhXeRBCWAub9T29CjivBathwqCIXIXVIOh0SUo4uOThDGdJ0uCE7to9GLAAbyEHlUQuezyyYL2u+OL8VnWhtkiGsutefiODJ8hrHuJVisiZdN3A4zL53khGCWWSpEIUPfLEpJanVvIK1yRLnU2Y3bF+oQbdEsverltyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8KCBzMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8KCBzMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB94C116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 02:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715566942;
	bh=Vnf/rR8EUmgSEfBX57K3ZSbcwTSiWpfHSxdDrRAQtXg=;
	h=To:Subject:From:Date:From;
	b=b8KCBzMNtdQW1Id0potkv74Ob+lpsLmZk0WdKLXK995aOelJGrnnHY1mkTQ6RrJuf
	 B+LVkLEvyJsKW4jwB9v2fS588PwpWx68Cilk/7OmFV4RRkegFV4dgr8xJSrgfX2FBq
	 wosTXxBuMcqSbaT61G/PI5wCOwYzNAm89kuN+TDrXJ9ZeeI9JYNmCHgY02T/NTxRLy
	 HV28Yr5mwEGWeaRkL6EyrDDb1ufamgoAEb+gzAB7sLzpKg9DnhCV8rS/I/9ptLuRXq
	 PxWP4GOCwWZ6yBkRYfYb9tMHfcybUK/HoSmwLFzeQl2ZjDADuT40WB3Q5Ru+HYof6d
	 u6Gqc3MpOFb6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8643C25B4F
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 02:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171556694278.2466.16384885494763366738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b97b59735702ffc16be0c3c983675ac91b13709eb7b3d6a4acfa25796291f63a
Date: Mon, 13 May 2024 02:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715566942
