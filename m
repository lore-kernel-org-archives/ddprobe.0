Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492162C181
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784992834; cv=none; b=mYZSiyBTLcE46qd9DD99WNmANBvow5GvAJxBNq+zE6a0cqonBDqVnKZInwYEYv6fup6jLcOwg0/HPf71qQpp/J0jXfvQdjHDJhwymCRllCshXkOi5ecHi0Tql4gCpsOR3pBGYoZt5FA+W4YIsFVku0pBVsZ/t9ywd+3e1Ymy0q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784992834; c=relaxed/simple;
	bh=8nYh73Qt/1JrF/3f72gFScZHQ+xWGYgvBQw8v4KOKiE=;
	h=To:Subject:From:Message-Id:Date; b=ietO0Oan8/gC7aiZAm1FulfXU/Uv0emyoCHQOWfUA3eilGA4+1vuMS6bm22unHkbbugfX9ZqP78lsBKc4GH/+eNe7/xze9x2EZ1lGsQeQh5clV9zt2UB3+RZjroK3z7VKHqe/UlAYoxj/yuU+N5jQdHzy/x+ZDMCQlfgkPagNsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnjFkSJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnjFkSJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFA6C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784992833;
	bh=8nYh73Qt/1JrF/3f72gFScZHQ+xWGYgvBQw8v4KOKiE=;
	h=To:Subject:From:Date:From;
	b=CnjFkSJ2hUTJglAJ6gOhYD80w28a7R15be6p1ShAtSBjx6MaZuMoNCBrJ5eb0uC94
	 69PxPD5MeYc4whRXqwsgt62CwKiWtvxSzcoikza4Nz8pjQCG5FVtPlTqXE92IyPLvE
	 lLnqh8/m5f9+bOfiHVwJmKAwvhVWV9o1ksSeH1BAhy2PsbRL4puqlEtx0n4So/SKH7
	 coX+Hb8FGrPGi/KxNG0u9JzOQC7w5epUIPimT/TeTBxf1kl0iTDqdAtjyYsGnUEX4t
	 ZTHVZz6PWgEuTH/MXxBPeWKkH1DuVgKC33RxF8J81mV1+2U2oCQmaUJL/0vEm8qJXq
	 Tdo7OAyVj/xPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB75DC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178499283368.18322.14468573951781439077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3abd61d41d4a32e8e5869ac107e2928adba0f3b4bc6556779240fb2d842dc42a
Date: Sat, 25 Jul 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784992833
