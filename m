Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FABE4C98
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746262794; cv=none; b=bbiYUlMZzchbP50tNtMb0s1DvORUuR3gc/AjmIvofSEKnHr3m+EvmVrIBNWq18AYI9IHAIZuKIVHzR0NNs8S/fQPlgHOzIqTXLhFcrg9t8W7j4sRPlC7o7CPgUiWj7BPoteA+qu4NSXKkj621NQxaNdG+HnBNX7zqWyNNcL9/Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746262794; c=relaxed/simple;
	bh=dxAJe9/GwEeyrXyVKYu5il5Z3mLS4iz7Xj/oYrgOe/g=;
	h=To:Subject:From:Message-Id:Date; b=Hy4gWsizBZ33tkJf67zHEGhD+kTd6lA30EucjxHRl0oBMP6vVjQrwuR7Sds2UgcYunlo6rdzo49DitTAXMJnoZFZwE8RjfkqO82r9iegcuToZ0YpkUNr+TBGvzHVb1xeeT/0pqPeDUXzx+37jj2JkiFEgSR9Dx34HAg4gIe1bic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2GCnW27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2GCnW27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20BAC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746262793;
	bh=dxAJe9/GwEeyrXyVKYu5il5Z3mLS4iz7Xj/oYrgOe/g=;
	h=To:Subject:From:Date:From;
	b=J2GCnW27KfmHsptAnfVdhVrOBJ92r21fM1q9RpKKuwLr3uGbkXlM7+duki3J66zmi
	 QZKnBZcs69ZkxQtexoRz+r6Pw/fteFUjxHGdFOty0DttYlg24DuSqctoYgtICCJtEB
	 gV1oebk9eSvujD1nCvPcXw+IYOgfEehL9eXd6mr/Fd1A6Jy8bahvp1wptN7X8GmfIF
	 DPDN2y2ZfGZzCPl58805JBCMk1kk1Sv3kaI+wwn3DZsUPpyHxvIa93gYypstou8quW
	 y1IBG9kU1c0CUWr/syndWhrJbv6x7sn54ezFPr8MhThnqOEYociIgdndxHVghXj7MB
	 GEKffsL8cLkOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD91C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626279358.6418.10572983734394265428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de5b4dc7f12cab703a6ab4d5959efcc88aa1a39350ec431f7b953b49090f05e8
Date: Sat, 03 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746262793
