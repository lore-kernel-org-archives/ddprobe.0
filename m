Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4316715C158
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755980994; cv=none; b=gBIUy2NHjTF7rs51Vu6sh9P9/wm3qYnVWa9PLGgGN0oQC6xpRYAueiqzfE1S1aGJCnkgTxwsv1qKd6sSl2wLOCSEVHInU6zWtyRwoh4MLiqcELFNSn2OwBjTWphu/o/my84YRDDIdln8ZF318S5JL+x7te52bL+IQptWGs9OPFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755980994; c=relaxed/simple;
	bh=kPCVoWoGGqTOTxYEO1ako3DrChNzglEGAM3rMSUxAYQ=;
	h=To:Subject:From:Message-Id:Date; b=S/5XSy+MEFOSRsl/1cjL/swk/COrvGDtaMfEI6Gr46vJ0tFbsqKBYcmyw+IGzqN0GJPTNkaHRAGTRlNtAL024KNFT/RZDko8EnHWh8OsQXj7KayD4IBgn/M7yojNel326TDrREVMyzho2uvVp9FOoMBdwYZFmgnYKd/nOfAEJ+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLAeFV/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLAeFV/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6492C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755980993;
	bh=kPCVoWoGGqTOTxYEO1ako3DrChNzglEGAM3rMSUxAYQ=;
	h=To:Subject:From:Date:From;
	b=HLAeFV/toHuUQ71qlyxcMHcfvrRjqpzr2I+AkyLBXk5J9yfDWgURmsy84HjDBUpj+
	 WbcKF4vSwOgG3w8XeR9MW/FeD8O2dTXxM/S4CpmwF86wRDExMAGA17dPRKaW/jrk1i
	 89eJiStxkwStC/7Pc+AtULXD2MgY0qSH2/lMvjmkA2KfMS1pI+A2eCWX3YviFC8pX9
	 rzOuoYkEQbN31SgWOHR8FhwCTN44SuDgoWTQxmFwwCqWnHbS8zia2xc523gFlje+6O
	 8ocF71o3bB/X35Qz+iv0rpVtjAdB+cHtW8Qqbmpx3W+hVpRD9Hnc9Lr7ocK/G6JHz2
	 m+VO203req21g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94819CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598099357.16548.949999099811841064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed360bf3961c1fb3b6e3c24d7f23490ad6e437ed0573a727cb57ab3587600ef5
Date: Sat, 23 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755980993
