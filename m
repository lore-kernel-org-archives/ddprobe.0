Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271CF2D05D
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758949194; cv=none; b=meFSRRJtlUxEO5QF5H8vITD04ooEIA3q4E2pzB2OEFMoF3H9+FMf1KYOIRJH0l4Sfhn4zIH07B++fxmHdUiaqO3bdKRaSWlVTMICn1bc2l+Az5W7e/RhAvTeffAxxHm1NiyiQ0QJb72lj7oXtpqVEfZHewd6/yUKSIR1lFrcroA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758949194; c=relaxed/simple;
	bh=LvOaYKtnOT5fR0bgHv2sVRhrWRotvJKWyCUvD/+QsIk=;
	h=To:Subject:From:Message-Id:Date; b=EdzfDGE9oIXLUIxJnSXU2gseohy8Jxy89L2pj7GywSJtGPCn0dFiSQy2lqpCcjI8Zxvy4++O+eR0M/sp2AGcXS2H1f8pBPJG1pTnEVoxVNZ1mdLLj87AMZKwBSnC85WRTssKruYXU/xPYLqhiCscVZM9BC4lXOZeL80A3cD2FCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oW0SSG5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oW0SSG5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A449AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758949193;
	bh=LvOaYKtnOT5fR0bgHv2sVRhrWRotvJKWyCUvD/+QsIk=;
	h=To:Subject:From:Date:From;
	b=oW0SSG5Y65uEgp2JoOmMdhQPyfD8I//vWNdOjMljAprb8SY7yKMfWmLtJG5l+/jLW
	 9Kpbsw82I9NIFYy8opcjz9tNUWrzbNf4UAh3CdMInXpAiToMhXETpGOiciNF1QQ8dR
	 l2KT5Giioa/5/ml+0J9rggW2BvSRH9hVojLUSkuxLX4/V1/Z1dGFiBx+Crgvdin+wh
	 l9x94Zy8ils3+ChBwvk9dKbYtHsDX+1f2ZjX6lngFtBYNylCg8JU5TGip45YhgTT/B
	 jQtxs1o5qdV+g+8dg6N9uMT0q2R3v4QzTx3q5ExBpk/Cyi/M7bY5D+i32MPW2nSwc5
	 lIZJnogB3EIzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94804CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894919357.30136.15209363744261661467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e51667ca4ae7a8f6f6afdf593f9ea5e2b98809b0214404d3a113ef724dce1c
Date: Sat, 27 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758949193
