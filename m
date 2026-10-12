Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9F14B8288
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791825034; cv=none; b=M+SqPKaXEvTyM6OSFqhVeOcAD5mrSPPAt/u26Zy0MFuhbkfKUVY9jCP+Wjl/qertJv/WREIgJ5wEYEeJXACgt7oKinxbPgOeQjIEOhoxAJN1pfKN7Ay3aVSezxUzO5vtQDBn8ErimRxreFBPUaYDhJjxJciUL8GxnqH4Qfiqbbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791825034; c=relaxed/simple;
	bh=4mhb6Z+51DksrndLQ/c7gKPGo4nWPjYbz0SbtHjAYuc=;
	h=To:Subject:From:Message-Id:Date; b=bg7SE1IGapX6HwifAYKyQmIGohjLINYA95Ir/Dt/4ay4KFFxfzADZ2oKkJEoBRBIYVWvj/oOzill4oKX6pWbGPGI6wOoPGWuaU2prixtOgiC3dAiwkNjJbpt2W+PS2+c7PP+nkktQRayo+yDfGo2+tFI+9JiTrslrxZ+D2Xmmwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu4Zle+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu4Zle+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7231C2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791825033;
	bh=4mhb6Z+51DksrndLQ/c7gKPGo4nWPjYbz0SbtHjAYuc=;
	h=To:Subject:From:Date:From;
	b=Pu4Zle+082hcT/pCBybwyZGAOaCkFHQxfZcEYXO7f2TensCGg8/Olmpm+eX9PRfrY
	 VXRI0NrHUogGf16h5aY9kK4sPiNrDGaq96FFvYASJkOvnu7xivtAcSvzBlCvP55cCa
	 6bHWj+BbiXCPFKwtFyx6JZK3cO94950gUH4bnt7ZT6iSW1xDHG7duXzIwjsHwBtWr9
	 MJRtyupWzCbvAsIqhdH9q+0PgW264fwX4DOufy17VB+hziamv2FuvoqN33/D14SOtx
	 89ZSyAkncFlRUXjUO595NWOnPhgx4rtzPWt7RDN1TvYr3SrC3YW/u8om8gbZ/NWyKb
	 R/52GqkekMs9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEACDCA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182503370.15388.1386261857076557629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2927d35f60f98c8827285116744d13cef55f64101084d0c74a211f9be55f1ab4
Date: Mon, 12 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791825033
