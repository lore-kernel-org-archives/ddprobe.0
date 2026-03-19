Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207E23803F0
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773917694; cv=none; b=C/XYlOM8DHDtxo693K12YO7znY/IUUQz4mIHnGNh29nIAcMUheqmsr1ZJF8AN1FhCo0yOPKFmJeFjY2Q9kA5ZHVRFFrF9mxQdOAkzrnGaoxFvymALGkyKy36aT5xkVmuHMjX1bC74rwxxPMLQRrP+O+8/ubSSdZYYRzc33BZezo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773917694; c=relaxed/simple;
	bh=q1L7rWL5+12XYPPOZ62PD9+bKRANbrZwTT6m7XnqJ9M=;
	h=To:Subject:From:Message-Id:Date; b=JLDQwG9oMY15IENVO2qBKX3OVTvApWJOg/oDJZUq2ycsKH+G6GpZyfNRx4hZvlc+Ofsprw7l+qd11PcLT9vjv4cR/nh3xo1FBPeif35IzR01SnaucQDTcojvd4CdZHVYB0GRj9c3xKkHgUt1fayStEXSYwCXB3RPVQdxeLzq2ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYcotMMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYcotMMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00BAC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773917693;
	bh=q1L7rWL5+12XYPPOZ62PD9+bKRANbrZwTT6m7XnqJ9M=;
	h=To:Subject:From:Date:From;
	b=bYcotMMNAat0dcZ6HM7AqzSRHQpMsa9IQWeVTwZ4ULH21OnW8Fuz6xK9MOocLrpes
	 oCv92Lo3Sc+4O06+alJ/miyvN+r0qU3KcWSmQ5GniPvcOBFpT+/OasEHkByFRS6Hxh
	 n71RirSDJonwh0rIFJB+1npl1Q8x3HaOaS+vmULSQgxf6jjtBCbkd9Q9bSDtoJjF7C
	 hGE2Yr73Z2DFQNzB4LINS1+S6ahrBdJI1gDx09fAhyXED/IzAwh1JRNvq7MU/rYYih
	 KO9vwzaCHH0FvL5pz4AUC736ut4HBkjwKormhKOnu59Nf21zmZgugmXxHkEm0RjFZn
	 gnN9/eycPnFZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC6108E1E6
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177391769358.6973.4823204852713071677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd9d30a983ab26afee28600acbac64664dd5e835876c6012c413c4c2e95ba2ec
Date: Thu, 19 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773917693
