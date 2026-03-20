Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313D6375F7D
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773997494; cv=none; b=iU5ZPDV7PuqKHtw/mwvh+ayJH7a5NP0vqToo+Thf117tTg+SpomIqYEnDue7jP+LwlJOUs+Fb6obLtCifZ1UX5pAkt3uSoNFEaPnEFyuKA6pWJnPavkNI67RrzgkVz6J20eLuF32+B3tk8Cc+NkuKpqzoAN+4IJ8EF16rbciJTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773997494; c=relaxed/simple;
	bh=uMEXPLU3kp8P4oSW/fwETC23uPveWfIcX+mJFMZhWxo=;
	h=To:Subject:From:Message-Id:Date; b=d+bHs1ecPn8qvtV3UNOWJCvi9SGXASTx8eRiSV/U4TNmDUoolcHikc+Ju8zJwQt4VxmuXX1/z6naUz/vSkrsNoo53/0kvP3H0TLF17540UsaCGQxqRi0OX52ozs/Km8PAzWwepYfrWbu7nT8p1+MMpQWbMt/5OwmvnIz44M/qHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqUV8vwo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqUV8vwo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A447CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773997493;
	bh=uMEXPLU3kp8P4oSW/fwETC23uPveWfIcX+mJFMZhWxo=;
	h=To:Subject:From:Date:From;
	b=eqUV8vwonTD992SEFjiD4c2yUhxZ2uYpPPdwewb+6RIAYKA4ohmPp0zhIGNKyUBRE
	 QUUR7M7Ix3P3fN53mqfMksIG4QhV3R8X30zE4NWGqi5UuBr6VTxdrOrVnkqdfHWTew
	 Gf1QpMDbIBMBId8jhTIl3Wq7E2qyWuIeDVIn5hMfuiklCB8r7SVL4URbP7XJBowg6L
	 ZcPZY/+zODU3vvxi8+ZenrlbqF28Hfj2BohrnY9978+kMCPcOTVeQ8fT0PT5MPHyCY
	 f9CETErtR0N2XP+/inxwo00nfcvmWVYti020KJKdcjXrdM/0Pm8fmfybtdD7vlfKXx
	 Ej9dKTAz8qVDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9508D1093191
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399749360.3344.3521853256835213564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 518d25785f2cc9a99cd839554b8a17b6920ba473fb04199f17aba91b7317ab29
Date: Fri, 20 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773997493
