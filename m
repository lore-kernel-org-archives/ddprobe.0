Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2299C37FF7B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783023514; cv=none; b=WdpsGBE5GZbHyD7uBr6F7MzV35bK67tpJPicJyurVu9Pv/aUAegvYF0YrzXI8ASqzoFbPQhcAo5rnZ/v+xIavDWmRlZaS8Q+s8QEhvgq7ON5cJ+VlFcgHljr7ZEETGwd7o8/qDM1tPvayrWWCZAE51TAt9vWwY5bEbi4TMdjCH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783023514; c=relaxed/simple;
	bh=vQgpFi/vaPOJ++enBXOflKJ1KnQuv3xkTeW2LmYdMGc=;
	h=To:Subject:From:Message-Id:Date; b=Ai3NmxtC5qEwqlc2GZzm4IEr24DRONFIcrrmp1ZCXGVQPmlJnUuzqABclCX79C9y85VJiBmaSMi0M05ALQ3J5r+2TmQa/HQDZca6fHqPtqoWgRWOM9ume6Z2RjLTvSWvB0X8fbi5leM25IL1tzrkta5y+fi/6yZFmd5o4SIL2zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/CHivE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/CHivE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D30C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783023513;
	bh=vQgpFi/vaPOJ++enBXOflKJ1KnQuv3xkTeW2LmYdMGc=;
	h=To:Subject:From:Date:From;
	b=A/CHivE76Nl1r06PcuRRqPt3885D5QL6d9tEqvE93bko331CxlKAlR1Q4zFS2FbNT
	 OA/BXGBXnvdhmR0vm5QhFnxW09TaZl3GJ7M7xXHJK1oSdZ8RHSduWs6JBVUB6+B7/G
	 XSbdxnROyRj3erJ63yG/5LdgdDfuHvL4n0QQJG0mIGoGeg5+wgNWeNkPDa2kja1f5N
	 CJ9ZN42k3vq67x6MFsXvBxd37seLNq2pCw6EDHCw/3aUupPX7MHCdO5Gj61QuOanMS
	 bBnEhckYgj8VfKDPQKWOSnxhBwIKHNE2rAuq9FL9h/79oYpTS5Z3i6JFlvIAYnzExC
	 6YRlimIGzci3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0168C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178302351368.21226.9031489225903836645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d942149ec35add51991d7ea8c9b22f8e7f5e72a817f681adc7aa3175a90dd01
Date: Thu, 02 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783023513
