Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269EF197A7D
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778967034; cv=none; b=uT/O5qRpguTrhFAo39SZLhhX6GNgJwqdVSMs3LzGDIxTcj1uw6LqumsWI92J+Tp4HykLvXzdSfo4Ke3aHKCAKxvOnIDXcxXbYDX7AgK5+Of6QTVV3r6F3DEXSInhQ+nkogy7PaHV9u32lFH+wHrc97Ip8UC+T+WAFadPJY/D0j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778967034; c=relaxed/simple;
	bh=CPkv0BBrWV4+HpXINqrg35gjoLov55/sID96sKJAfDA=;
	h=To:Subject:From:Message-Id:Date; b=YTZy6aVcnkl9JPhjY2hr1oC0SOORSgcFRMTBnlmrAqPr679UsNjL5jzSi0bDD3K2Ge5HHCXU+PXXX17DcEmCP/cAVtiM5WhndKpSzmZsmAEzisGhTxKQllLccUw1yj7E4WrLSkbvkwz0mPc7iTaK602FXbtkAv2KpCzHAr0vmIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhSI5QXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhSI5QXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C7DC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778967033;
	bh=CPkv0BBrWV4+HpXINqrg35gjoLov55/sID96sKJAfDA=;
	h=To:Subject:From:Date:From;
	b=VhSI5QXhEC68TyiYpsDvcUg8CHu7jjF/AU9bqC4wz77oY0FDYUp1icxMV34xzZZRI
	 Vv4Z+L5zOx9NBQo7S0a2WIa9bhFz6vDJjGXDT0Lzoxv2DxN35KfnuGXxFa7sI5B0h9
	 QoU6QoHj3Lsph+1ozv2CZ+ThLG2IWkWb4bKWwso26hBvwE2UQMXpILyjigIYJV9nCR
	 bTxk4PNPwIfSIvwWUOLcC5cvptuCl3KtTQOJ85OcefM8KY0rs3PVJ3JiMFNTyE7JLx
	 PIfuEGp6EuqvDeWkrMmoGWTlPNbxMUdJAj1M2Y9aLlpNoCESRdl/1HFc+QLC+HWFWq
	 qe3eFti3AZt2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1025CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177896703369.28212.10646487531941285748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a71b39862569c88c562c67fabf8c2a2c101ad1c554b67c8919e3c7111b91b5
Date: Sat, 16 May 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778967033
