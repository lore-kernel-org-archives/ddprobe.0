Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D23BF4ED
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748363394; cv=none; b=VumcaHhr8a2FX8TWsWgEpJTnNrwhFMmaa9CUzENcxtz16oLVBAhqviM9NOxUWLQs3cxqf+9dnBanUvFNiC9QCjHektcvnmV8kwZWBJzFOeW6MJf0kXD/dbA1Wt15W6xGbX1tJC4lu5E1aOre/+NkyqVLVamQIbq8+fQTWVSCSjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748363394; c=relaxed/simple;
	bh=SoESu+FZHkcv0WqQ2hPWzpTv3ffslSEp2pWAybB+JIY=;
	h=To:Subject:From:Message-Id:Date; b=YtsfChoneUGIGHXW4LtoO4XjYzA5JjokTY3G59DicsErfnoYFZP20Q1BkHc/Ydoi9cCKDJzT+Kqevp38HK/Z3dZG8kFwnltChbShZvGHX/CYePT29h7lwzXIEjcQW7G4he+MyNGqZTwAG1Cw2P4gT72nuUqTiNyDDZz6j9wbxJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gS6oQBVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gS6oQBVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F54AC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748363393;
	bh=SoESu+FZHkcv0WqQ2hPWzpTv3ffslSEp2pWAybB+JIY=;
	h=To:Subject:From:Date:From;
	b=gS6oQBVlnCSHCbDT9w74XNjWV4f6vACh63xLKe+1jvicWwq4TKRWXe0GOeCja0c+i
	 emZy2dXwKEM4MmIiUaIbzW7xB1m+uYbRWHqB/IpWYQToOJJfZahXnFWEBNSjzhPAe6
	 unSixDVPaZLANYNJTRk2vZF110OKx2GeI3iahm/AHIyqh1NlYc4sUbPLOwt2hG8gQ9
	 Fy3yDIQnIiSMYajQO7gn2yyKByBoNue7QO3MnxfOqjcTq+FMq+8pwQg6FPJNzgu3GI
	 EzaxI7zuooP1g2ejMEh4zqjxHlN75vOPx4ohmEd3c6p+WdTFAyx9IQVqGlBQTwQWFR
	 A4rrABEqHoRpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91095C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836339358.2129.5220720305170923990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4077657a7f4c489f00d0c80157e7f2bb422555b84e7ef7b7de7a3e9e4965f74
Date: Tue, 27 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748363393
