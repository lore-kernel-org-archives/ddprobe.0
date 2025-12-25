Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61532D543E
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766645033; cv=none; b=WtCj2EWLm39qELEKKA0jx+35s8o5MpOVjntbG//X9IC2PAp2MQvVPpgo8hTZxgB1dDB0owuHTc1xSgr7GxD7h7h31H8AGtgZ0njfoiGmBNJODzK+R/TpRx2cALXXeH+BzH2/86RCRj3/uTw1sKv43LnojibeUtM53bWg5mHwmi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766645033; c=relaxed/simple;
	bh=eaav+x7SDfyuOL00JaBFlh1k/SqeXx4+obzymwZrhRI=;
	h=To:Subject:From:Message-Id:Date; b=EkBhY2U9y0gZSKx4uBQs/D9idDRA1xzK941kfKp/vM5saG2H6gVcCQKZXJ9MiHGisRMhWzeWklKvMoI3+yqRAttuHP4ExMdMgD8O80c7ubSr7I+HqvW1v+prfo0Sc+kjEY+WCYLLTeXTsMRzs9BLgVuUPqa2uFt0vXYtOQVEnTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmV6leXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmV6leXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B38C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766645033;
	bh=eaav+x7SDfyuOL00JaBFlh1k/SqeXx4+obzymwZrhRI=;
	h=To:Subject:From:Date:From;
	b=rmV6leXyxZkh8ZKGqfdj58gGBdfUp2cjewDlMiOVg9zm1blKfnJzSMRWO+TlxnZID
	 JtX28F2uEW6o+8zIkINf8rJGqw8O6lh2ivAgGrDoK/p1kxpBdLlkVPSqOqJprHBIzM
	 xk6wp74UFlSnGTTYMmQ4smhpy+z9l9OCStyzTcwIxNDXfhH8TpqvtmXNhQvb+8omcF
	 /bfcUVSei2vCWHb7HvenKlFjFg5Yy2GTnBRxoohHf9GclmcTwH76jrnYxQd+U4I48N
	 jkouFUwDPfaie/D4+OVs+xq5G0bCqOpFeoMhA4ynshz+tKjXiifjY0lKp8Zfldvtwd
	 wcjqB5NHH9MgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924B7E784A4
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664503357.12616.11432144553501415624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1487023cb008123af69bbbfbe7e144971ebc6d4b9008fccd7657c85410d95264
Date: Thu, 25 Dec 2025 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766645033
