Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EFC26E165
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778239654; cv=none; b=BKahMcMImVp38J2XoOQz4Yj60IJ/slCxaJPoATcgyfWPKAygeJuRjyTtG1V42MI+T6pwejkacVCr3nxXfRtlki58dLVqu5DGSgqTtlSYJ+TGVnKuO9shQ0xNbl5SrhRp80aByWc9/BsqWXdyrppGRDRu/X1EAwJHKbzHc3BV9kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778239654; c=relaxed/simple;
	bh=EwaRWN8zHcfWieRB9RQ6qDse/a/XhLz5iVkFDz9Kq6g=;
	h=To:Subject:From:Message-Id:Date; b=ZE2SB4/mLN/vzwZT4SoTuekHrZLh1R5t+DPiH+E8YqRPo8wabzVFMtTF9FQugneU5LSd8GrJMuxa2GQ3/Z9zAxInsmmLHFmju3az6lIDaEl+n92znrYdpTUheGxdmmyMGuBb/spbMmRb/n4mHUXUD1XjaxczOjFcm2Cqvf3IK1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhKKvFmo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhKKvFmo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5C9C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778239653;
	bh=EwaRWN8zHcfWieRB9RQ6qDse/a/XhLz5iVkFDz9Kq6g=;
	h=To:Subject:From:Date:From;
	b=KhKKvFmoPt2HJ7XhoZHpS9S1CQLoXvktdHu7ub+EVcCThBgqjOj2fUISUlWkW74/J
	 Jwa4DWuYnXFMsTKZuxGpH+JernVxtZsnEL5ZzOR+QOBM0Xh5Vq1FxD9IF72+82a0GS
	 8zSc8JIqnJeTqfB7vgGhHpKnhs4IKbNBXHKrwVGc1kXNVC4+an9Hs4pr20n6bGOosi
	 3w5pxNN7SvRFA9mIMivlwgxijtfoz1EcUFrUgNNfb3aAw/r1Fk7oQUik7sxNluCfPm
	 HDi/Sr/KkSTfXu8mpvRW/HlopsKSNQekQ06+YTV7apuSs+Tzr1HQu1dUF62CU5OePm
	 zeOyYv9hZxcmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CA9CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823965368.16393.8218081654671044413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6cf7293df6d806b2443b57c539418f2427c3bdd9c50c2ec080f2554bd88bdb5
Date: Fri, 08 May 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778239653
