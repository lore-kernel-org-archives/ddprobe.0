Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5114BEE52
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789173634; cv=none; b=p1S5WBoXGNUrh7g+8Zv6cl+T3rxVecuAT7U7zCsd4wpkIh+qomRsXJaw7HM8Z01z34aGBHo7SDhXZFSM/tEpqVZvjcLAKnHHue5ngBdJkyrK1Qi29NEFjJ0yUqtEOR+TVya8qJMEP7MqwtkQtcUGn23w1KGcvZyC2w0eim2SMFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789173634; c=relaxed/simple;
	bh=avVngNbRp4WmrSdssXqsMrWd8eBqNbZE65MPPnn4lo8=;
	h=To:Subject:From:Message-Id:Date; b=Yvx1rm1abyC5oLIG59HcbaWducXge6frTwC1vgOzUjI5KIa9AwJcp/wY7xe454WMMvNa1hyk2q/89hVA7MYNQU4vRucZK6kCaDoRmGkrmBY1zasMBm2sAjetItv/52R57Aivk8vJupk2YRyOIoaulRlQFd25iPM5vFXERiXodmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgQrFRfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgQrFRfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58E3C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789173633;
	bh=avVngNbRp4WmrSdssXqsMrWd8eBqNbZE65MPPnn4lo8=;
	h=To:Subject:From:Date:From;
	b=lgQrFRfbUZdU5b0eMSWqPjjt2dNw+LBZLaNgVGOI+4VL62+/i9J6jvvclwOvk3O2Q
	 csMDI6NTD7Bew16AJXgdP7OF5zzUPJILhbFK+UuGNtZQ/95qGudgsLReDCNuFPMRmw
	 4jmNaA1mFcJTsHNiv3tmSeu9twcc+t3/38D+zJXPdR1Oa8nBXecwdRVNWqyDVyLko5
	 4B4yWVlkiMaiBvkeM+EdCW9LwqR0a9x3dZjxtUGPm8uTPt2T0rDuWMHej6ReLP0xbY
	 UM5cFIALKD2/yLw/hYgrH37Ym2xLYkZVs+bpD2XkITSW46X5an59SRqI7LmchJGAb1
	 +s/tPY6h6U1Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21B0C88E50
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917363369.30256.15861982802825308132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01625c160adf9305162cefa19338a3868825e1cf7395ee0b63f9489877ba4814
Date: Sat, 12 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789173633
