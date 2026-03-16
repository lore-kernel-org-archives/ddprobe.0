Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202082874FA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773693294; cv=none; b=nPPrubU/cJ2xgLpGtJA3Z/YmeUGO5pKCKKG7+csT3YJ3R+F8M7wKy/JTntwK3tyM16Pw9QsGM/0VrqYwE9ZNXa6nLAkojjTO/ZT8Wzsq+g16JUtcJIUV9Sa1NaIdkRt3ajRWR7hfQK+FtCO6+VAbdNPgE+baApOKpCfw/WW9uiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773693294; c=relaxed/simple;
	bh=bV+2BkjqK+E+4DKnBH4NXpqUqjo5SZT/IlEA/SNhQOo=;
	h=To:Subject:From:Message-Id:Date; b=TIrnIP4bMQvpjcuj2Jj//LTvbLbGnN5CMNhv+20bnWXIYW5pcT8LsStFu1hN2ToUvbEBwyLxKzzfnyYcL9pcltxxNlFPetQAoaLVwbpZEfABmCkYbMg2FfbxBtS6yUey+Q65H2kKog5xbwPaK9c6BG6pxVOp5o5TtBES7aDlEnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+tTGlvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+tTGlvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E540C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773693293;
	bh=bV+2BkjqK+E+4DKnBH4NXpqUqjo5SZT/IlEA/SNhQOo=;
	h=To:Subject:From:Date:From;
	b=Q+tTGlvQ1XRr91Qk7rn0XNCGOR1wqoR50nQ6EInDAaPdcbOm5r7KSmpcU1nwl4ZyY
	 n8JRFLGTnOhfPuW2yF4XtRJlTM3KBD05ymfiEXt8LjVobB2Qr4Uj/fgQ7Aci/7JgzY
	 04/GJFaV2fN8LPeQBSGV4GvYUEhAfJhjAcR2Q87uGrrkK9EDGytq4BC1wYEacLU4/n
	 pCZBAss/YJ6Ue8jtG1swkPUfOMBdsZhkB7wARA4gxx6tST1Jd9uYNO8dj1rQ3yDMi2
	 63FpQP/9lMYu5IgWN+DTjbG3bBT0ZGWle5hCJffxy129H3REs+AVUCSN4HAbkiCjW3
	 XP19ZNok05A6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F316F53D98
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369329357.29525.9432230017299763778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0769a163c8cd511b4fe7c00af63248c055e1afd96f6dedc484186f8642c6c85
Date: Mon, 16 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773693293
