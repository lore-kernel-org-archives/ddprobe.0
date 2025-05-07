Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4FD1F956
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746593394; cv=none; b=Uli/YH3eZ+0YNVE2Ty8lYiMs3bJUftMcNceNvrZ+fbmpdI+U1INvyWnd2YfNqnsOr7f4vP7KqAd9RYYdlDwVRvfLTEwIs0v+S4FC/w8Td8hAAwkHXmyr2YyTe21lnvO8eDKjMu/fjIWqFoFMqQf69oZlLnm4iuiNWCJut/YNO3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746593394; c=relaxed/simple;
	bh=R9np2odFDRK9BaKm5EcRHrldpIzASMxDZzTTGmjynwg=;
	h=To:Subject:From:Message-Id:Date; b=KRdcE9+3/FW2oWxHHj2vgzGNoayqqEml9KaJldzt7QXJQWgnv26e9ivLbORamVcBmgag/+fB9aOHwW0bNmkQE310PAcW7388gGadJuyR+y/nLNCO+RronLivKODbYMna9Q5HDxiGghni9ILuRRW3ZgOKewxCnAQSW6rEz81CS0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8X1VVxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8X1VVxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2637C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746593393;
	bh=R9np2odFDRK9BaKm5EcRHrldpIzASMxDZzTTGmjynwg=;
	h=To:Subject:From:Date:From;
	b=p8X1VVxBrgwrvr/58ZZByZijB6nLZM5vCaJppwc30gHczHZAH1CAfL+wYvT7IjH1W
	 xfK1XqoSLbPwxCe/gfeZVmfhq6ZegqhedVumrqDtESYU2YNlOENoZaLJ46xmecQ5TG
	 4ijZEd5GmBxTpJR8K86MbI0kuS+JdJS8kSTDgucbJHabW5MPvRdCqgHm+DheSOJuC6
	 CqOvk/DX5ql1bltYHpHpVBSywLzScqmIXXr5uwqCeKtCVwqDmtruDh3y4tfjC6d5I3
	 mAnX221cK3TNo1GsCUPpP8DOXihsZXdPa9bpwCQ/9X7ShfLA3Y1DRJX+3IHwGHbhtV
	 NKNDpeGGFSsuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC20C369DC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174659339357.26251.3611265605634324171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4c124dbbf6ff10b32a153213d67017e31f873520657a6b49b63e5dc7774758
Date: Wed, 07 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746593393
