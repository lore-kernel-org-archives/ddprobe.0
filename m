Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF202472B6
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778849434; cv=none; b=eD8Cq+YKGK8opyRITt7YS9+q5EXi0H3hquZmWORZCojuCCnb/VniFcxc5ThM3lV55Kp4URfV7Fd4ckLY3sv2Z4ozgViBsCcasP3JNgiZ/u9+V+T2TmyJKifLTVuurRZFoJY6y7nPVf5dsc1nQ5YzvgLmEyIMlYHeOHHN5TuGKl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778849434; c=relaxed/simple;
	bh=KHdNhL1UZRCNXodW7vxnc89vzu/s4uW6bn/z3eJwGWU=;
	h=To:Subject:From:Message-Id:Date; b=R3YVJLrrx5DwEjQzE+mGHdkyefi3qleQg4BiL4GZshqrff3r7p5ocBdf48Vv8V5RwdFlc3mih/FQvHgNrNmJTOsMgcG5a4ICffxZlbPhaaUdowGWQJ2bnm2PvPB7eDcIcUBEaNw4RkVyA2vDWYL6HkW1GOiDmlqZ3COGghXXe6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpttv3hH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpttv3hH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD6AC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778849433;
	bh=KHdNhL1UZRCNXodW7vxnc89vzu/s4uW6bn/z3eJwGWU=;
	h=To:Subject:From:Date:From;
	b=gpttv3hHZ1CaVRu20tXoj11CNUC77qqVPKHHhgHX2lz3xP4/gsf2mFaB89c6XH6XS
	 NLrVRamuSJkKzyKgxEhtTE0z95ytsUCof1useUuMf25owCQoBrhRgakrwuAKHQ3MSg
	 tKcSNEtbPYAVzX3/FXZu/IMpABm4eX7txIdyBvOLwXMfig6r4bhyNM93LTctCaDEN3
	 MK2QsveoZxa23VBJrR/3RtjG113Cw6JTPrjKrZDV3c8EykzHhamub4sm2zAy0JiEwv
	 qUbPlaX7+r5duaaLC/iDr3TwA+1VlDYKyKEw/E/gE+jJVk2H2rNlC1fyk1njVFYFCy
	 Uwo6HBcTh3dVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6407CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177884943373.19325.17708734908275043614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68de10e64cedba410355bc502adc9f3a60164c4e9b1696552e81ff6b94d5167c
Date: Fri, 15 May 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778849433
