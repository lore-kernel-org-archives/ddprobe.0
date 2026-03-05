Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149941FBCA7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772743494; cv=none; b=hBwfBZOvBzRh2Qy4YUl/E9ikNB9UmD3XVb5BM9hWTxSu+I24Ju/v5+DM7XsmXmPt2dryf0tKd1I4irGPTi/4A4wqtvZuBB4q1FitO9cl2WToUU+8D6c2TvRJgYM4VFZ3usugWFSU7ZMtfIRgp7/H1WVYDoA0qYNAdzd43oH5tWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772743494; c=relaxed/simple;
	bh=YetFvO9hyonWiQRt5JTQJjwhD4n8NMPi5S+4hP1AylU=;
	h=To:Subject:From:Message-Id:Date; b=Ci3yAdBZ5UIYRPAosYBMRcxTN3LupjiMw5nGes7Pii4EAwfkZd10YEnMJUM2UXpzQ9JccTZr6Wq4VfjcwNhoo146ldpyPx4LuL0J83lSVx04/SSrvPkYkJGdGuDmeGA8kUfPFSupAS6fK1ZuVRkzTwaCq372qseVQ3mVz3Vnso4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRax7qLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRax7qLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA46C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772743493;
	bh=YetFvO9hyonWiQRt5JTQJjwhD4n8NMPi5S+4hP1AylU=;
	h=To:Subject:From:Date:From;
	b=dRax7qLbuYerqpKw6aw2hy+v8dl5S1NC01jw5D/CthxJj2avc5ZCh+hyTiSjIRA/2
	 gBYXr5BITlqpJgOqyXCz347/uLrtw93JHp34m5v3u3778sCXdCZg61RlwMQXojvi/1
	 N2tkmJfdK2RcyZinhMNdumJI8kiSDOLFu5lmkC3ko+R7z/lJnwTpLhzm4NsRdotEuv
	 A5anE1ZyWB1lYEs+fHTO35VFU44Y+xSHzG+tXcTea9AQV47XASKLJg6UCnIDKotRwJ
	 PVRmaAKuCrHdHFerbSxJImFqUQa6SyCqZEu7S0UnqrrdlhEZulSX7p/7nQtRthIjsd
	 G6umkIHW4kFBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9707DF47CCE
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177274349359.26501.9003642809460071742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb1b0e6d13f147aa35f06a2a75c9c679b3e98b8fe2930d15d049203af565a3e
Date: Thu, 05 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772743493
