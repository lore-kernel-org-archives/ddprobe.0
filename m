Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C3E1A5B8A
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790310034; cv=none; b=UJabwAcJh0QSmZPWpe3os9/FwqJgJSQPK6fVISGR8+ixtdDyq2n2Rmm9vAfufwYpnA2Ste6+w/AuF39rrCtgr6lhqiHJS3ovNM8HzFrTEs+VyeZ8R2txfhl95FMweVVHb70+j32kzVY+8SpgJuqnjRn2yT8ADYY3Ej799EPU9TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790310034; c=relaxed/simple;
	bh=ZWP0EdmghDGzIU0Ia58o9GM3Nqiw3A6i4fevCsjSdow=;
	h=To:Subject:From:Message-Id:Date; b=BjgSCor66ys/ErPjpVVqHEvdXXDb2m8GG0xiD4sdJA8e0/V/Ui2on9gt4/Fq/1MYoekDELcaFrBjxgTy7rNmBFlwrAEH0UJ81W0V3Rhel8X3VBufX62rsSSh1w2reatIw2hatGmuDf/JGTVoZnt5QG3rzFAncciaLieOnLGqwrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoYmGaxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoYmGaxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF0DCC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790310034;
	bh=ZWP0EdmghDGzIU0Ia58o9GM3Nqiw3A6i4fevCsjSdow=;
	h=To:Subject:From:Date:From;
	b=AoYmGaxFULrgaE81x6Fm/GCTJ4WbzyiB2TAn3STEa10DFyaeuF2Zr45/sCiaSFBYT
	 Zjho0D1ylZyQyutPJLYl4xHoPZ8pyJPNVpcRLggcMUXozsA9gTG/l0NnKT7PYlmyUt
	 i4FWEaA1BIz614cDXmfxDDh83p7RZZlN2XbZ6n8L7lct4iyOUrr3dgBYu6/z/ZTSNC
	 GGXoYKEE65e4erCzqmYO9QyRWgUJOHV9QyHmQF7Xx+f0r8dEMlrBqMbLnZ5asUM3Yf
	 t/wfJlzd17ooR4SVK0WWRy5x1p38sbLc1d9lLCtiHm8qUVX/fzUj4tnEG3DNTByyHb
	 MRC9DAd2T+AFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12DAC9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031003375.23895.13046867199696780471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c9e9de92c81bd6524fdc5be94d6beb9056f42d9f258ae32775d83159b3c71d
Date: Fri, 25 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790310033
