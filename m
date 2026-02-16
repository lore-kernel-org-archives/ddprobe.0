Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6372A26ED33
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771209294; cv=none; b=d0vMMNETZyhY4PenqFTVexwsFFGMcb20t0v/wXNsUPmwLeGgBLWCZyxsBOR9u8WvVobuJJzSqdT8jj0SSUfSVPYCThPMUAsYxFtbOugULr2fB2FHZpYeGgV/lkR1JwhNZi2Ln6dmXT0Yj6Xz7lSmF/Fopu7AabQahkr+b0h+2I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771209294; c=relaxed/simple;
	bh=FYn+WDjOLinIcPYHGqRRjbpACmp0mqu90WuFY4ipQ7I=;
	h=To:Subject:From:Message-Id:Date; b=l7oEUzDZDzr6sbv1aJ2u/NJF7B51lf6/yZQWWHDbw/f6HkpZabWzPc37MtnU06gNp5Kf4B+Hy/aH3DS3SVOiTBOjIfWJpUqivSi6Xt/77xITCKOd/iQ9SDUzcYfx8gTfrMxn3CAmI5Wfto/vDHtYiQpvtINXD8iI4CxIlEAYWKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKX2Y5MY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKX2Y5MY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3CAC19422
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771209293;
	bh=FYn+WDjOLinIcPYHGqRRjbpACmp0mqu90WuFY4ipQ7I=;
	h=To:Subject:From:Date:From;
	b=CKX2Y5MY9h5pTkT19tz3soFpWeX+yEL//hgL72nQbZQ9Stqq5A40oNpJhl1ri94iJ
	 rI0ZZsuch1E+chi1lduKorzg9ih5426DYTy4EhXMSLKt+XnTZIE1Emv2xvLIKixjD/
	 7WHG44aPMqwBlEUlqr58uy1aC9j7/tK7c9PWY4aELeWV/Va9IkkU/o06bIJDI/StJb
	 1ZvXflsz88wX4eGQKbOyCD0aVv6+jHa+tStnNwOayrgJOGVmbvetCwfF+XEtVXIChA
	 gnDV3cyM/OfQCYQQTMvkB51OE+Kd5j76EtGxegDHXjSFCdTcjbAJuluy/fBnDdl1ci
	 YtBnoCS2Zmh9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A37B7E63F27
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120929363.3415.5865055433001953175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98badb7090b7f906f6d5ba80b04a6cf1666972c87d39691083a8eda0445ada51
Date: Mon, 16 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771209293
