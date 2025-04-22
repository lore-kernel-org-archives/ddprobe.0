Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9A319AD70
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745304594; cv=none; b=Sd0ps2xxVModEwDgQppy26zh3RmWwJeBoHTinFvKq6E4CqfRm/kO514WB1byS11Q7NOa9lg8AVIrFYvJ+tHdTxlWPNBzyw0pzyblTVPGihMIDvHLNU0MI5BPYXHzoLx93hhmnzBdnJNLZOFMS7IK/FqczYHTiL1ci+xZWbJlgtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745304594; c=relaxed/simple;
	bh=MoJIr3HAMINSusXgVT4ho6nygSsEVEJYIV2MvmIympw=;
	h=To:Subject:From:Message-Id:Date; b=cozVPRzfoaamAuhVfAcb4RtSNt6QsA+AOB8NayJQwx3hg9Yk+fiJkbmc0K6ne7yWPwvMxcN96Oq0pszBB5FYnoLD/nkwF6dsNiK9yRAaTfs3JC3O9NIdXjLZTJq48DcT5JtyOhpSxumOfc8DyjIG3ZaZBSUjMP4JthNMF5yAzGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n71T3Hf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n71T3Hf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2E3C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745304593;
	bh=MoJIr3HAMINSusXgVT4ho6nygSsEVEJYIV2MvmIympw=;
	h=To:Subject:From:Date:From;
	b=n71T3Hf979pkuAXGN//gv6Y6YbrUZ9WFm2aVrvrXSHOmeqpwSHccoqSGzRNFm8wjU
	 b9q1jqS9eOjWtoZ66rKZ6irjF0rrW2qZ1PMgfBz/RKSXK8L328sG30nONdqfxsFMKB
	 qNiUpxK6nW42tolRBE0P4I37xPZaKNkrcrOwGrCVwhxV4Ft/GeK6e0ucmYlNKGl9C8
	 ye5mlplIwiHL6m+adFJNg6FlOfEpxpx8BY76/Dpgpv+55Ncf8MvHomvWnxBHchYcnw
	 S8T7YPp4Z6TSMh+ofs/Eg9dLI85aOgATr2RYzDEU4Jeu3LXbT6/A+MosRiZDKchRYo
	 otz2Wi7ydfMlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98457C369CB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174530459361.1827.179640778572150749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59bb19640d7a545c6a6c8481416e59bfa7fca705dedb721210c4f8a1b1824bc0
Date: Tue, 22 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745304593
