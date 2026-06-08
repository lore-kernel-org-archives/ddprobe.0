Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3945233263F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780960474; cv=none; b=rYm25qcL0GRg0NX4FpQJyGBDFfXNotmwcsUA/kPzOFp1WQnFeeOLbmiTq5s9PcO+8ImBX0IXf4W0j4XmiRRSqNos37FazyZFdzbSx3nDArEIprDeyzEX8aeA60/u6NEb0wMphmgLOL8HzDWVqWFNkt+SQ3HJ2fjnDYgxc2rfVQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780960474; c=relaxed/simple;
	bh=xReqQpM/IPvu7X+leQgHxHcgCU+mljzNfHSmFku8wrc=;
	h=To:Subject:From:Message-Id:Date; b=ZmDiBmoyUQG8NWG25yHVqbDHyT7oFuPIEQ09KvGoCMso99V6nnZS+1jXqGL6DVosAObFdnOMftw5pfRDCutCrgr7/oYceSB1UtRnJ00LeDKC5+zDsyf7inldzyn0OkTLoA/d7I0lfHWInmto77MDvyKUnSDUYbbhZ9d9/LVKThc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+pJ/8XV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+pJ/8XV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD807C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780960473;
	bh=xReqQpM/IPvu7X+leQgHxHcgCU+mljzNfHSmFku8wrc=;
	h=To:Subject:From:Date:From;
	b=J+pJ/8XVXJxZ2MbeWSaLYsQV0IyhuH+5Q7XvcoLYwvgkGeGpQNWxsS5ye4cPqM7DN
	 9z5ZNKjDDix1JRtjjSXtbS3EpRJWYbfsU+vZqkdNR/BaBJnTHa2rZ/uWv3aLdNNaOG
	 cbYV2stiEu+TvbQrcxjhKR2XPIH0U7Ef5qfogk16FJ5bbGsSIfiOwLzRJvGF8nTKyt
	 ZZIcpH9f9/CV1+FpPIJ+GtmuP0KPqlTzNfpOtgHydVRrA5myHlkklh4UP9/pgnEjsW
	 kB/wG/tjTA851x4Xmg8usseujLqx98JB+BR6o30X+qNTpHhtQQzgdT1pQE/lk0dxKz
	 sumbnE5GF+U1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D66CD8CA7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178096047369.26471.16509459560354276109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67ba29cf007c96203d5dd9f5485032fddc8d3f2a731e6591407aab021d9281e
Date: Mon, 08 Jun 2026 23:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780960473
