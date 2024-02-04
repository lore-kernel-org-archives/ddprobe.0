Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB6F24B23
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707066497; cv=none; b=pNetb3up3/D92jE0njNRzIhZ5wmXYcYa7a+TPhubDqNn/wj10OgvpRhcH1VtaUS1sstgXgMTb1lEAGollbr9HMVkB5RKTnmgRZKVrnq73GcyZfsMkmymzg1c8/YGo9Ea+YT9YgWhnIvJ1Gc6lKU62vwNXeETpgZUgSOYSN9XzX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707066497; c=relaxed/simple;
	bh=tkVQAwUmgJjY5+pKpI/NeEb8g569Uu2RHyuZQp0wgPM=;
	h=To:Subject:From:Message-Id:Date; b=QR1p6OrebVbCh0YqVjpEgC3x9hxkktW3hscJDWt0FWSQ7LQHRPVJ/q5kGkTYn2f8DyUpmTSJ9kn4u3O0rqHYyPKVo7d62x+1GWJeTeRvBtx1GVoMmoa3Yans3W217vvBDlSZ3umolLALvBP65ThLxBLrRqKOriXzWksPBOsyJso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbqXOKSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbqXOKSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89362C433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707066496;
	bh=tkVQAwUmgJjY5+pKpI/NeEb8g569Uu2RHyuZQp0wgPM=;
	h=To:Subject:From:Date:From;
	b=tbqXOKSYmMp8ABiPu+S2GnBnesCWxLC090VPQ5R/QvZTCG/kq9vjTjwhp6xKMId9G
	 5+dtqR3nqwxm0M6RJKrPJbRst77vf916CZWyBWzwazhyh1fsk0wlRVvZvFPKk2vCkr
	 1O5Ican3XziWXsOUeMjrSSwiljiGo4btBM0znJM34l04HffLTAl6EsThKOdmLH+X2v
	 /yqRlWrjVqnwa2aTu3Q9rcBGD6FcCMCNc2VYY148j0bl4PFo+Vtqa2ksr29AhSanXz
	 f3s/1YIKJIl1wmuyiTiHuIfMDNQ8GKcylGjRS5HX9ARSBFIoVoN/zMHLMOoPkv9cXY
	 HZKArcZmOti4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E6B2C4828F
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170706649644.11617.10594930069469310367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba5bdf3481bce94c88667111e062c22cef9e4c405129f989c932bdb7a9e09ade
Date: Sun, 04 Feb 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707066496
