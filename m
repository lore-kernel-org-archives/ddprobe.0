Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B85427144B
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771598094; cv=none; b=GOgVPooVV12aH+xSMwgGDCCK1sPrMR1poI365c54vxX4YPbGszoFsRvt3m80LZfbzNlY48Msiy0rxTFfdDjk9uDlYvOW5jIndvdUNzae4c/Ey/1eTD4RiG3nNltVOn5XcA3azryJILpBAM2cRDZjOTZC+ILYOsEc+yxbg8sNOss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771598094; c=relaxed/simple;
	bh=WVP1ykLeYlsgR71vhraNDz157rq53ns5lvr5y1Zr+ic=;
	h=To:Subject:From:Message-Id:Date; b=qGJKf2rPQzkVx4wcy4YvmunNef9XSOarrUQuDS/jtv7s+cuPZmO4pz/Q21ezjwgW/gV/XxsID0GqsibgDiDyqRgJ0QXSeJQUtTzJz8BGGctPKNd4C0ul5cPJMojyACt1hrHKRthC6MDikSxJb7XLfvSjcVGIrbjNYV25L7Bqx+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlTrdVtt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlTrdVtt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACB0C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771598093;
	bh=WVP1ykLeYlsgR71vhraNDz157rq53ns5lvr5y1Zr+ic=;
	h=To:Subject:From:Date:From;
	b=jlTrdVtt3u/486hz7AxsblP7KuG8fYeeRcF1YRlUgeFqJ0cjtcztiw/GHXnakFc5v
	 rh4TG88TOTx0Txda0NTPaUF3Xd+GhDMgukUwpOw9xXGEc5vTaTsFyBgmzvHjDMV/ZI
	 LN9kg2cwVsqb/NVJHD9Vzoy0ySCXVxBl3GdMIjzIGndE7PXiAWG1B2+2gvWoatwhec
	 oks6jcNr1fQTXtvZKGwr0OzLcgoBohBjApUUV1qS2gX41L9AjW4QRvUKPc/hN2RSY/
	 Oz3M9N43Vib0QjguZq6HL4RXjjut319UkLjE7Nk50AOcohi3PqE/Ewb2v9aCwGrOd/
	 p+bMoWizNbyLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A575C56203
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159809362.3080.5095902146851860197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a979954e7c1a5c312557e8c95419de02b962f619f10cad401e00ac065efdf3d5
Date: Fri, 20 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771598093
