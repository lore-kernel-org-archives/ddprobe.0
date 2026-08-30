Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DA6212564
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788054034; cv=none; b=ZsMNyxGSvMv0wYdorpCgDgWYgbNgXrH+WN0DFfelWLeyDuEslXD9DF0/Aaqt6rXrFJk3RBQRySFJUr9Kavene3eBHgasEpp5E3l8AdL2i4lr79RjdAUOoUIIb7tIOwzvpVLR7Ql43QwL7y6YAxDJ1xWn2itAgpm/+qw4qTe5kTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788054034; c=relaxed/simple;
	bh=qniRpkfuS6QhYWt5m++jOxBnqj3LALq4vzMUzpogQgg=;
	h=To:Subject:From:Message-Id:Date; b=DT2rblOusgEB/AlNTKV4v/8ZX2ktWaAeodthYH/kg8zmNW2YRy4A+SST2wRFb2ISeV+QL9/lFmx705/ISP5SBZ5eGy8OG8qdq+5YlH/qrC5eG0OXvhflwZLt9XMQd3KeLsLbpsjaEitjgZlVFDXg+jx681ysQqGow8B4RGJzJBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQ/d7FFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQ/d7FFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DEAC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788054033;
	bh=qniRpkfuS6QhYWt5m++jOxBnqj3LALq4vzMUzpogQgg=;
	h=To:Subject:From:Date:From;
	b=FQ/d7FFwuDYelPLJTrDSlpYix/UPX4294jTCTtdpVK5JH27+iN9lvoh1Ol2YSLV1k
	 +7rLJ7SC9gX/2rKbXWZ4kuHCo6xIFLu+jUdK8hHZxpGmIU8aG63hIGXFPiTmymHmeS
	 QnLU1ny9SPV1iCaRyxadXPqEQUhP5P1/Jkee7/SwEhjd3hwWQZ8vNqM85j8fnmgalV
	 UonwGUEupVkRdhmkYxqojCDQ7dy+Xa6oK9pzl6ncYEjRnIfoXtUdR38ngyIn4kg8dU
	 y8UHQQ6st8LXadM07D9PP0+qkU8+4bkczQE2N3Dr+0pTFJeEipK0IcBCE4Faq7DW1U
	 0865Miq+t624w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD368C61DD6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178805403368.29686.9243188143480040425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079c47c0c68284232e6f93b5be5e741c32b0591980e9716d735dc13032f6bb36
Date: Sun, 30 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788054033
