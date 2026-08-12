Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3040A30567C
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786494034; cv=none; b=iRTMJvokvkMwsBWR6086c0QfAgClulJRsXh1o55JxTi4hei/EIj87x1ZIQC0SlxqCkJTj1NMkaFqVR3LdPQLQIHI7MCeKRtsRABcVLDxnWTeY31Prrd6UOY+o/A2VWI86FZicWL3osZ5LYoxJtMM5JW3Sz0DF6YjH1chyiTgxp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786494034; c=relaxed/simple;
	bh=89iLoPHDJ+cWhJdNEQHUxrCGpKYHn7F0eiZlH6bqpBI=;
	h=To:Subject:From:Message-Id:Date; b=IYqSZGuEK04i6a18uLGXHfQqxgIJrHTOJkjzlVCYTOvyBM8N1ZgMCYcqlFrBhXBPC+ihMqNydLP3BQkBZLvJKl40Q38UK74R6U8cKFsWoRL2zzlBKAK8cHq59bGRH5wM+QXDSJDsi6y6ybgZVAE853/cf5q1+YL4cygqbn4ne5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJOYRBcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJOYRBcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B29C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786494033;
	bh=89iLoPHDJ+cWhJdNEQHUxrCGpKYHn7F0eiZlH6bqpBI=;
	h=To:Subject:From:Date:From;
	b=YJOYRBcH268q4EnLUnD20Ap8HOfFpJZB791X1w6U68R8iu/SL0u2XjJfNrIJciobK
	 sSH/t5ZLHebFYXVexLH/VsQL0JCJ12Wn1eeoTsFpods353TTLf0Y81Z1gYiWlvhEiY
	 jxNwjbhSx206CP77WyCieG5VQPx4eqOT+rb2jz40kc0KJfioeCAu+B16QETPgIqfEV
	 Yxtv8d5sz0U2AsqghpFpT7LyAOzqtMWAyc0nNJ8oH2q6KB6V4k1IRaQ206u8PigsIU
	 83t1wZhobXN2+Mgx0JxQSy3OkcMeg9V1HNvbmLGZ+TOAY7ceBysa2z0ZLZlY0flhGd
	 46U+GZi61OhnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBAFC5AC67
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178649403368.22535.3486776442236782417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbfeaf010f29f1219e1ba39ede51d140abeb39ef1574abfd3ad235a1963e8890
Date: Wed, 12 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786494033
