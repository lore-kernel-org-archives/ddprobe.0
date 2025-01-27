Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA4714B942
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738001154; cv=none; b=NGYLyWkrhPf7ylGwgBJjth31LnalPW+a/35q5HP64mJjEl1ktcUVlGdkV43JCuCMM6OjgzM5GdpLFQQdIV6gxzxA1tRTO0B5Y18MDnIjAutIVHWhuuagSF3qjL51fXumm/o+X7dt5luhVNo09b4tAqyqMEwElXH48kCPtzhWDs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738001154; c=relaxed/simple;
	bh=4iicZskhKWRgmjLi+y7JzjDMfxlZgejSogaLMq0J5cQ=;
	h=To:Subject:From:Message-Id:Date; b=jy5aPXICGtkDoT9yjBhriIHkQZyJ8PNa/S2Jx1+6lWiA8z1J1oZcMOABFsykEV2MJl3rC3rlgH6rC0vbDEnOelT9HB8aF6n398N5eSfE/oyv04FlECTYXpgn931THyISgOPQ0nwUlQeOo7cRAJy8zd/TrrwarlaeT+93ZIEhJ6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiOljbeV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiOljbeV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A685BC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738001153;
	bh=4iicZskhKWRgmjLi+y7JzjDMfxlZgejSogaLMq0J5cQ=;
	h=To:Subject:From:Date:From;
	b=eiOljbeVYdNlVp947dRUyNRq5MzjXSOXNY3bn7QsXoif05b+c3Q2rCw0PxPe5KDP3
	 Ch/xzwGg0gHaUUhtPhbbPnBbOpmPnOASAT5fqUccgpetDtM72Dr6LAoaZAigTrwgCF
	 N1vMm/cet6aq4bHvHpJBas6n6CRtdb0YEJx4Q3ME1NoIVfiYivHjFbveHU3KzZ02lI
	 kjwaAmXuX6yej8F7cKkl9gd/31ks/liqH4vqW73h64dD48fd5iiRY1nJLO9M7htyfq
	 O6Ws14CRmrS9lhSulaaXRtd7DH2aer83FRWEz4BmNv8qQtQ+/JOcJMWat5TtvQkAbe
	 c5AQko2UZ0+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934F0C0218A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173800115359.5108.5594251772203169406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ddf34b0e7f5c62b7f40942e1439d30c3b1d4b1d5645780489b1dfae74098be
Date: Mon, 27 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738001153
