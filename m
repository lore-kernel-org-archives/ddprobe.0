Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4DE34EEE5
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791051634; cv=none; b=q+yQm6WVMo87OVj88hFB8kj3Mfm7wb8o1U+PqYSpdi1W9Goy13TbXchKePYL4M/OQuncfRsW5mAuEdkFeAmxwy9wHjB9KezXeHGcOFxCTaDsg8TrLkS/F6xSZaEZL42oZ/+I6FNBKvPti4QP9AivZCEbm3YbNRgFMIDpXIUI7mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791051634; c=relaxed/simple;
	bh=aC8kwbWYArqI+9slCUmjkrhf+L6La+H8t1zA2ywDLdU=;
	h=To:Subject:From:Message-Id:Date; b=cTSCl3zQClujFcpZ9oZVYuvy/mPou+9h0+OO21W82CHiIxkQT0ntC6MEPXn6PmmpJH/PaNeCWCjE+HOohSXOk+2Fs4JDXvAOHyw6k0z7hmpLEvlbLqUT0icxa78eNMRAza8nAINC2YNx0DhMHB2MB11buKS0tCun5PU0GVA/AWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4yMxRvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4yMxRvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55BDC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791051633;
	bh=aC8kwbWYArqI+9slCUmjkrhf+L6La+H8t1zA2ywDLdU=;
	h=To:Subject:From:Date:From;
	b=X4yMxRvYcAjFBeAcjJVrqZWFZ0HUcnLQuMVpQDJP8msQNhUnnbpPlZIFV/TNcqQVL
	 kK9tDVwB/m0JRq5w/wEmXOTqlRnWoYVRKGw9KnKFxJ1CX1ZNh8J1SZnOgdrgKkMYIv
	 RRk8XglpHvkKkGeJoQQQlPJSoSf8TZqoGmbR2F/lihlSqGl/ipVD/NrkVERVUFUdOu
	 +EO8kK25WywjnIrBM6v1Hn45UuQ+sEp/bI07VYc7XSDK0lzPlYHwoFr5JYSyg6chFI
	 vM+MnJDPPla9fjdJgJrv1Yf/cOeEJQP1SmPFGuSbkC/uWidqdYWrKWbb76Gncr7dn+
	 DhIrT8SpYya6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D97CA5FEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179105163369.5865.3600444929456724800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5bb90145847a5714a6eaa861c9fb62fdffb200a34c1c38f77b5306601222507
Date: Sat, 03 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791051633
