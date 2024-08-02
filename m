Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F48F168DA
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722561954; cv=none; b=EAce8BTfLTjpTFR4hSBvCKKlCpDWJLU7KS2GLD5kwt+FqPX92tqoKwQK2uaMXXJhhwkumz7FmQEKEsvHgMpWkYf3rusfMCnzEHySJ4w74JTeUAVdldd0KE9V0VvxhU1Li8AiET/AWUjtnJaOayvpVTqPK8NHIFKOC5eStYKtMZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722561954; c=relaxed/simple;
	bh=eD62dTtbeSIqMSwcP/OcbPV0hwIJewnBak/hAJJrl00=;
	h=To:Subject:From:Message-Id:Date; b=ss8RypmOvyzklA++p9M8phtDTbSLIWZpt1N5/MxMspG/45t1lgfB+OaO/X+jVhYP2Ncbun57X2haLUPbvVOoVPlTY7/JZd4i3vUIHeJOuRf+65dNIVUTdUv8J+jfU1WY0sI0/Q12BQP37WWRBTrZhGCiqhYvqRotYVubMHytd8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVNJgdas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVNJgdas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29F7C32786
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722561953;
	bh=eD62dTtbeSIqMSwcP/OcbPV0hwIJewnBak/hAJJrl00=;
	h=To:Subject:From:Date:From;
	b=mVNJgdas2jIb8HwZqwmKmSlIx/wNp0c6aE1XEK/kG5umvNJjnaVSZ3Bd+bWef1dBG
	 ul6YoaKAw/CRTb4Tnwr7BBsLHaEv0f/oazimTk+xHqaolsNP4TxtdHEWY06Hl3rRZv
	 Wt5uGxlZmSAdmjouZ341c9WglAib3FKd5uRvXUQ8R3psrC4fJ1bQDo4Zp9SOAMkPKV
	 u8SELFyQIkXGX556zNsbsWFyBL7xmAec4+P498W1gucEtNqAv4vSnQ14uFF+0i0pSA
	 FIfcWPqNe3Yc+TV5yxdCkHobh1/qZxAj0jgdPt60MALeEtX9dC6Wpe81LRkUKB07m7
	 Pxa6w2+Y0yK8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C221C3DA64
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172256195362.27783.4305658977441479006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef405a40c5a045708d11d470c85728d90b39fc7520dda55a680cd8bcfc8571f1
Date: Fri, 02 Aug 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722561953
