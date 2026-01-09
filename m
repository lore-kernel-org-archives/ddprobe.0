Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191A333CE9D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767993834; cv=none; b=Y1r7zrlbLEaXJW0EbDFB6GXx5BnNos2nFRCftjGoyVCyGEYQjfqSdvTquT9P102e8Ac7BFoshFoXMmGX5aoXqKzK190z/kIsBti/FMp2XEAXsvpVOJw/8JhQRahw/+5x/hJg0Xz9Pzl/jvwBu2/ts2oUJW8+u1x+L213/hbpL8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767993834; c=relaxed/simple;
	bh=Vh+zIIPDMwMkTPm7jJnE22+fIw/LA8/X4si46lcX/Zc=;
	h=To:Subject:From:Message-Id:Date; b=hA2bQs9heFjy86c9Xg7nl+z/ZxOlp200riUGL4ByCWngaecCpYPk8g7axLZgrYo9+5E49i3MmkTdGFgbaCv0JVh5VNZzc44WBWbEfE9MdUiu6HHak5dddIvDoqxFhsUcMworYiQP/gDq61uKVTohPdrNBVDVsNI3akmiwy7EbSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZJGAxSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZJGAxSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0C7C19421
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767993833;
	bh=Vh+zIIPDMwMkTPm7jJnE22+fIw/LA8/X4si46lcX/Zc=;
	h=To:Subject:From:Date:From;
	b=uZJGAxSvaRRUei1UD4AHUYtDmOF1HdUOdcsJM0+0Sci3sEmV6WXbN08/YiWlWny/9
	 nM2K/+O4LV7+3Wn+HlIffIwIL3MNwd0FNtzyGkxRf+PLNde4/jwnBRnm923J79teY+
	 tmdD9IJBkWcALAenMqKIf/ax4IjVQ82IMZ773qKAjsL5Ja8h/uBapCHON43wv1Wz3D
	 r/P0VM7VfRCU6QfqmG0jnnGFLArH+ttENf6eIl3xnU8TrGDOS7AJDBE/rNsoisrsQT
	 UM4hETFynhJLGrmK3QKG6I1uJju3BGHsPOa669KQVFlZ6RySZqliLK6tYjNwkIyosM
	 Sx8EL1xMar2qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B91CD26D9F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799383358.3363.4262408370456010402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c752474b6d41b822790040f7b68582d19080e4957a792b109462c0aa875da539
Date: Fri, 09 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767993833
