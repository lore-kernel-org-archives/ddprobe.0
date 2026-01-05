Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193C180C02
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767579834; cv=none; b=Hs+qQLzs3qhf9bvPRjxNvobwy/mr0iFk4fgtGTmjqP0//Tk+EnVJ3d8yfO1EjnuHxM4bFDG6y0fOC6x+PPlwzh02uoPbkWiKVdtQcM5kaIamRggfyHpLWZMt1atdXkyyb32r7KLQga2fC/ScoQmQcIUT7SnU3mCTJxiwH2h8dkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767579834; c=relaxed/simple;
	bh=DaLNdMGR4i0HAbHTz/8mw9YCnRaTHKpGzvOUAusdkWc=;
	h=To:Subject:From:Message-Id:Date; b=kkEcMsNZOTLJVGCXWrwIUqVOWNqTSzXy3WqcNmFiTIQsAbzz8G5eLtUT0E1T8yU7J+CTeHFB9pmhib2wht/vkhuoo3NyGgV2X0qdbdapDKumN6qRgvRKgWDR3HKZ374UeUJm9Ko8Zt1L3Nrg7ie7x+yW2lUCEYhzSx43XTZcAPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzzCE55m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzzCE55m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D2FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767579833;
	bh=DaLNdMGR4i0HAbHTz/8mw9YCnRaTHKpGzvOUAusdkWc=;
	h=To:Subject:From:Date:From;
	b=GzzCE55mwm5ON6LKw4jmtb7FMdeirWXszclWrmZnygcD02Gh8Q2Efh6rcKfQcx/Bt
	 MAkAnYmt0oHjAB3urGM+QUmF81DD5Dj5A9Jk+jIpg5tcltnwtRzeVFB24qiBh9orIS
	 21pMxMyJxApwD4/8C9mURJ+U0NeMd7qPC+UqkR8oUPulquIWtoIxCfcbnGhsFK6efP
	 91BW7NJ0eGGsKGl7Boh0UDt+0xRbGNWWqLrrC5Y5rBe0bd7bepe5A1S9Lyf5g5xR32
	 mpxlIKhsTvRwRnhuIZbkkiUa61ogFjyVlCYnUH4oFwe9eQRqB3z7+0shm6LOH1ebtH
	 Gn1VbxW8bOWZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E890C2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757983357.2564.16486959375585210335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ec4550369b10fa1e6a17f94d912d3e7986860da760af5da7c78a56202ea9b1
Date: Mon, 05 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767579833
