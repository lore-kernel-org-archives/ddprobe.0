Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B2626B756
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773085494; cv=none; b=LEEHcuKNgNKwjmzgl0hlroQaNJ+GdiTGyvThDn4l1TbQydh2q0eYe4ChYV0ClA58DT5pCew9xiLeVNRnB4XS8a83pasMInyYZ2rEWVjarXlXy8NMXx2YEmayRrays9/FPDnMpFPobZD5zNPTXwjnaoH/IuQSW4pXz2r6neGgkno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773085494; c=relaxed/simple;
	bh=Encvb9nN2fBRsRN4CzQKTSWUpasqCwJCs9pgem0lhBo=;
	h=To:Subject:From:Message-Id:Date; b=QkI2k6ahtoTAjjVG//SxqUgqLFZbeRPaksTrBmYtycLhQOlJJQ4JgpNYJq1p+ADOEUwJzdfaSi7hSGT7ehMStcpS2XM1stYWLW1DCKQBBJyS8RMq0ikKnP28bFZ9X9x5vcaRe8fq+/z/CNXafUaBehTuNttRW+NeZHCRBAF8ZQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0MTOzsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0MTOzsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B54C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773085493;
	bh=Encvb9nN2fBRsRN4CzQKTSWUpasqCwJCs9pgem0lhBo=;
	h=To:Subject:From:Date:From;
	b=I0MTOzsAzdsUhp+6qKnaSo/8XVnm6CD99PM1GV2CS5eypoPcBRitcYiZr4FX3OrJn
	 DpcIyYMwuqD1SndGSmPNgyM9QZNQs+ghCu0RD8pHsf0z0EM8mtvONgTwXa1nT01Xp1
	 DV4EnHYo9poKdsQWHsMUghoMsz6vvz2AeqeJDeRXHd/O8sCfRD8IAoN3rvNgcNkMC7
	 1/dd54Oy/koB+OesjWaRCrt+KTg2ZrWAu//pjKxe0jdMpTIdiQWIqc603cn382Ppr2
	 CjLRbI551MOhlMTJ081bwlDH4V2sDvO6dMPnKlc2ZAHtwOccyX+cqE2dumfRHiPKAB
	 /KwxoG2C0Fm9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECEBFCA17E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308549357.2016.942831622441696347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2d15d0e77be84f2d841a0ad2db62294f2f92484be52283907682be913996b1
Date: Mon, 09 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773085493
