Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055B61D8E01
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774065894; cv=none; b=HOyv0EWpkTqk6QBaLZgLUK57HSuNOSd8/QkFYVzJb4uqcM+T6hngocpzVk0MNlEA/xIkFmPt20MPhH/5bJYdTB0E12MQ0np3oiwWaHqKr1KbA2HI9UPzp69eKTPiEBLdkWg/TvDlBxhJaiAUmEwSVTMYydoaGOexay7G9Qxn2sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774065894; c=relaxed/simple;
	bh=96Ufc/YEWO6eTY/K359S3JrSgjWKErq4AZkpBkyGPP0=;
	h=To:Subject:From:Message-Id:Date; b=gW1zlcWghfr7R22iO9sAyMyiKNffcKvNzb48mMUE/kXzAVSQatouUCkVACaxw4AY26YftFjKohbGsWLK/hwjDGkc+4+Sdy2sC6BhVDpgto1FzYXmfEb+GWsz9odrflkNT89A0+t8yZPvHKtzwrJ9Z/S0zrDPKrwdtozQa7YkuLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pt8lV7UR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pt8lV7UR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4F3C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774065893;
	bh=96Ufc/YEWO6eTY/K359S3JrSgjWKErq4AZkpBkyGPP0=;
	h=To:Subject:From:Date:From;
	b=pt8lV7URAB6XHE6HGlDEZSenTbQ9PxpGk1iI1czbzC6ppbKl5iaSZbG4ABi7553J5
	 nIgeyS7FpowZkXduJCfvx6Vro19oKwVnVWjbPnAL6zZ9B78irPL56QQOMpKc7jPUtE
	 gFzYooIjYPUN/PIEg6jsskzeWqAqx9xdZmAR7dHtbDYRNHtRDcw5xsV0zuvkoXu7j0
	 Z3+A5ly73yuDJc/x8lK9TyAJP2+ZPki+lF4R1Lig8k62dwg5+4+o7yI0dHqw1P0yv8
	 guTLF3kVqW1Af8YJTkbsGiJnzV9FO6Wl912cRGlvTXHsewCBx5yWWquap1OGDjNo6a
	 mXgEj/sgk6G6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901CF1093170
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177406589358.16888.11515740903632259406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c28c244d629ed1337cc1ea7773dc4ff3956951d25ef40547c4f52079e554a8
Date: Sat, 21 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774065893
