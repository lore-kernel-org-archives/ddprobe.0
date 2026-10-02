Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B00030D3E5
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790908834; cv=none; b=MUuqCYYBWjvzS94HM4JMmY+z3LkNhzyKgpnXyPgdfjLvnq5yJI8aMNfpXAsAD2ry0DScV06NUrzDunGl9bmQjJY7+YeKIpe/LcK0gwphedrm0pagDIiDfRjAcfYcFCdnDWSiQhQJaUZPC3HhS3x4K+GbwjzIYyrKXlViiUcUZ38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790908834; c=relaxed/simple;
	bh=TnLUHvQhSmO5aNKsOPPQ7Wy6KZNHHTo7jaX9FgaZgdk=;
	h=To:Subject:From:Message-Id:Date; b=CleQhpFNEVqEigtqLTMVKgVOph0k5ILHd1TJ6MMx77+5woo5qW7cmciqlWrLRAD6g1cCLeNEUGajpOEhYIfTMkVOYqjrK8Fq/8sx5SLqhHAGy4NTvUV4DzAEHXyTIR4JIGsMlUtMRu/eRyIReVWaGl/S2jpH7MNl+mlo6oXA6dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBVXcF3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBVXcF3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7288C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790908833;
	bh=TnLUHvQhSmO5aNKsOPPQ7Wy6KZNHHTo7jaX9FgaZgdk=;
	h=To:Subject:From:Date:From;
	b=VBVXcF3hC5oEpaGab8vhWs7ZneswNa+NI5+Z3TVCbzqUtfa+/QKOEeEh5+PW6Kx77
	 wWNzV6Hu0ZnrUAHVpKQwuXYS4Gz772weuTL8p9LSVOCmrvUcTWbwgrOjFaFojMueob
	 EtDkER5obW0PsC3aLbLlLGJ23XdkeE0Yi6os5f25S5ZN6DltuZAZ0x6cjxaW+wVavl
	 iYTbZToEuFePEJuH/ffMCwupF2r6TVbaLvNoML06hFclbv5Japfr9XS5ksAv3ORTqT
	 1gl95HUVaGeWn89zG3Ms0edZ431V+6ET5Y3jaDH6IoLCpwYYWAPsDTW04++dOZn5gg
	 nChhxUo9xmG9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98D4CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179090883374.31587.9303555674913470495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a884a65a9540af9746dae49858779ffaad43e691ea162b1a8fa9bfe01d235a1f
Date: Fri, 02 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790908833
