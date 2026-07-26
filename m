Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53085EADC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785070234; cv=none; b=PxGC1hhc5YLklcauUSSFlaaZHkLrmx1yEyiP00XtCGNNpjQeNAnW7Q59mzOkVI1aa667ARumRoYFrJslBc/34cFyz1lgmvDG8a1Hm6lONQMX0Rtg4VnvPl/3zVpAMsRs6wm5lkIkeW7wqhlwoTYCNwZ5OhDk7rE6B9cNEFVWl+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785070234; c=relaxed/simple;
	bh=Gg4qPeiVfWEh2xuEuHlsA+0Lxmnem1zxi2B9CFvQr3Q=;
	h=To:Subject:From:Message-Id:Date; b=kdNyJhmRys+EKNPpOAs/bvcZjIGLkUkARp/ABDPIGIr8bGn+gHlPbwH6fDernl6D8LPVWwRNfYiT6flG1GfH/Pe2SsTAfr4SL5L+4AoYVoXceW1eeFJWCCwQSIyQQjXCEWdrTtBWmzSYz64vYtk2SShVmd/dkvbAMgsqwVjmjko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4gRcK1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4gRcK1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF349C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785070233;
	bh=Gg4qPeiVfWEh2xuEuHlsA+0Lxmnem1zxi2B9CFvQr3Q=;
	h=To:Subject:From:Date:From;
	b=b4gRcK1xDvLZW+jyLB/6wXH6L0KFrlZMzqNim3oHmqleCA46yj2DdtKNyFLgaRvfo
	 pEZW7Z12nbwTUsfJmh8Nz2B1NEIGAyspi40DnlfGGvF0E6RM/L42fNXRfqkv6ttmyO
	 h/hFE1gYsdiiA5jb2RcGo8aiSMEvXuHp64sEdCenZgoINtPaDCv6zwbxQYux0iMFl5
	 b3cFrzntSmIytlwhB8c9O59dcqXbh9J8Z5cN94ljr74UZsSlA/XHtqZ3Gu9iQ4Qm5w
	 hwnXr83fnuO+gSFBpYEanPR/9fH2og2NJSuppHkfUysPXyFJ1hMRGb3GvTE+GYLk3o
	 jQ2m1hgxxtyfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADB4C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507023368.19544.13528220712673165284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc814ca01f141d4e20992c4c63994ee020be3ad5e2c64a97b0ef5db7a28e9ca
Date: Sun, 26 Jul 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785070233
