Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B4A230997
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752522594; cv=none; b=XkGyJ41vCgg8s41/zX/io8E0Rbc9YyJEA5usqMy4VSI83oxXm+yfLkoYlo0CeXx48F+EwCuZld/wkIngaPbd8Sn/41PQH8eMBB+L0wPJXLWKK/TmJscUYYc4cnnk8vX6Je+DSrBhQOBsl+u4DpOutvGwAOWeJwQHVFH1MZlBeZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752522594; c=relaxed/simple;
	bh=L6A0aMdu/jITu8FDX2g6CCAX4YZULN6SXm18Pd05Sec=;
	h=To:Subject:From:Message-Id:Date; b=AIB5bE6Iw2XUzOrIT6TpSYV83ESqaBREBoW/oYJ505nbtZf+O3jfJaa+DXDe7Ypdda+IIBJh4x+9a2mDzFcWz8cZKRgRQvehaP18ottW2v6kUIdEj+SIsENDYlOz8I4nhlqODnP8gFL78T1pFzz5J04gdnQFW+zok5vtMylRXc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ui8hJ8To; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ui8hJ8To"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14EEC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752522593;
	bh=L6A0aMdu/jITu8FDX2g6CCAX4YZULN6SXm18Pd05Sec=;
	h=To:Subject:From:Date:From;
	b=ui8hJ8ToZDCKVVgjd9gvieWpHnnrvIG9OVI/r1D6L4cFr5j6NuTULtgHxZGudmM+W
	 vb9r/wUVLW3Vlg81cruRdp7qyNpnId/3ZhaHCcXzj6+elWqmlF5AlCf7b1RJEU1mgn
	 t2YzwGlwMMwZDGlITvoyi5hyk3ObuI7S8uLThkEVfQbqwg2YesjRNgz7kgk9REh+kH
	 5AHDPgMxg5seXIUq9zzJoPOnU5z5Tt/AMayjtMI69eBKOF0oSsvhYo1TJocRf0tfes
	 zmG9OV4i6CEWqEKDChBm9Vzgpb7fAyJF2TagKQ6cDqSfYqF5/WZ5WjkkConZFTfxNr
	 ouhxquiYClqYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3F6C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252259363.21442.13639434037273668354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0075d3d814add38956a73b2942a6950cd37e993363b215d09c9daa8a7e3a982
Date: Mon, 14 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752522593
