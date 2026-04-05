Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461D8282F3C
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775374534; cv=none; b=gyhAqdjWLbFumYiKaQvcBheXzY/auFMVs8FPSCPOez/wo7HqC4pVbjEJ09DCio5N7vfz/llsoIza5xRUvESMsjynSE23EBjEzGEjoH2HQGzyQyt5W6IpjDw5u7qDxJtAsHQKsLQ05v2FPaio0bAXrKL/ouDSQPv/Et1XepPiCBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775374534; c=relaxed/simple;
	bh=dMiq8qyT21te4NrrHezgAH13qIxL4AEPyyf9npmjey0=;
	h=To:Subject:From:Message-Id:Date; b=Q8vGKXrJh8ZPOdfR9xuWrEtnVwUIr88lPCtzd6JW2dLzXL1LrCiGaeRJIw7Ah4QZ37+g5HJkbw/k6NmImwqo1qyqOKBmNLDV7LXeQHxckxHuI2UWCkw+i+zt/pm0jK26AL5RaGaFWKLXS18EFTTH2kk+LsI8xA0bK4BRORX3+tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVoCMjWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVoCMjWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD30C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775374533;
	bh=dMiq8qyT21te4NrrHezgAH13qIxL4AEPyyf9npmjey0=;
	h=To:Subject:From:Date:From;
	b=CVoCMjWL+Z+oN2j0eymOwDQVF2ai+53w0fdWuIVcT0LQlVRBUN9ieo1RhAvSOUMzD
	 0dHb+JPmp4NQIleMbgTusc7ES1D2LS2Iyb0H8Qbrs4+L9UDT6qBYXsahQzw2SFPmvV
	 wkquGr5piOMiog+lJ+ss/OZ9BrSds7U+WDBaWLM7bptOKay2RXdDvJ5vzNej2Vg7uv
	 GoMngErUFQZks+HDvEvEBDNg4Ssny9mnZcZbVdjAvX2sE7qpVBaMEBmbWE2VNyAWTo
	 fOVcu3xdWWRIOHUSjzi1SKwZYRR5AT74dEEBjK5BhFPrC7dLv/NOGVNZUtTaAjp0j6
	 GprXQBtQRtdpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CFEE64014
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537453373.23723.4447157085662412840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbcbc43d775fc9d8bb2a9750dad0727121f2711abea2e6949bda5100dcb1a900
Date: Sun, 05 Apr 2026 07:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775374533
