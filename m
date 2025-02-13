Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4536328A2B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 16:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739465934; cv=none; b=mhm8HKPFzwutaA+47h7Ky3OnpAAdFQL7//VwZinEtSZ9Ds02RQ43wt9TblR8dVzu3vi/0xccoK6ODlM9LyiVyFluWro/28DXaLg2wmdTC8nje/ca30tP+2DizaCToK/NZaoo4Djm2bxAk5Erw7ddAtqn2kNe98YXIWJOvFOz6iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739465934; c=relaxed/simple;
	bh=CB1qB56C8Q1bg+E2WF0JukjOBIWSVtyTgbpqrxnZc5E=;
	h=To:Subject:From:Message-Id:Date; b=LVcHcs0EGB2/rpUn7ELIBPCh8xknKiMKzZkOCBG2CJ27n4JFcKogwnEYCKo+tK12CCBdt7ga9MWu1ezP9/SpRDbF0AyWh1NaB3mqlrY6M1DpcWRiqzpxHeJyTJBS4KmCj3fdamTvPTLugVN57ljDQGrZ6JrZ26NK3ktmhlAj9NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZnAoKaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZnAoKaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8573C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 16:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739465933;
	bh=CB1qB56C8Q1bg+E2WF0JukjOBIWSVtyTgbpqrxnZc5E=;
	h=To:Subject:From:Date:From;
	b=qZnAoKaCHespSBESrBoI9tzggLvBKyJCAdkiYLK6QjK4Wn3PgPJbgWDSIS6EVLyRg
	 40coIHgybih6ezIae8HdFS/LK14rlSymAZ85YfaDizlhevlE8Q2IOf1jP6AbAWZIx8
	 G4zhSZUlqTxwvWTnqzhK+oHlTeryOeAC5bsx+wPPGgcJ5oqp6NiiIvh6zNvwdXNGfO
	 064nj/fhkCe/CTbn1S3uEiwtYEsbyxXBbefXUtpkJl+lc0gD+JBelVfvPWPn+iAWgo
	 s+ImXUvnIZnVVjBBaJi9Eq7Br4FYySs0ZqMp+q0tUyA42cOelhHb1DuapvcwAo2jjw
	 Mziwywwwmcdxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9507DC021A4
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 16:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173946593359.11052.6730011574000292957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4f73afda19890f935142c2acc2ee61bb7f65e977d5571c3b22751f0a0bd491
Date: Thu, 13 Feb 2025 16:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739465933
