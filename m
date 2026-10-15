Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAEE49A3A5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792102834; cv=none; b=gFWPqQeBiRWfHRiPAzdEZAcgZT1p3H5+Q/1/qX+bz4k/DCfMgB4wklMbcz5fI3DfYG2xvQTVT9Jp9exbkKQq/n4glLzn+IchkfQRYxZD6pv0ZEfVQNlOQHRpKrvNzR9XEmj0N8rjfykXOSQGo4u/ZTl+51M/aMU8DG/eBU0TtJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792102834; c=relaxed/simple;
	bh=gnORE7Kd7vdSCe9CgNcO4TvNqWEA9VF7Fr393GQb7I8=;
	h=To:Subject:From:Message-Id:Date; b=uNOYwwD/122N9g2/P7C5Fvn0wPRtWs0J/mATmcMB8IcVD/9GntLbTbIgFDt55AwPKgzuSXCW8GTRVBoVjhNekXF2XMn7SgWAc8aWIuBRjWwiJIIyi+NYoeX96f4ylCG7B0CLrdxjmfUidrDozBBRQe4YIOyPj/8g/ngPzuB04o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnMTdqUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnMTdqUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14D4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792102833;
	bh=gnORE7Kd7vdSCe9CgNcO4TvNqWEA9VF7Fr393GQb7I8=;
	h=To:Subject:From:Date:From;
	b=NnMTdqUpoEUoRMpv26Bi5GK4Wmi7zxTwjV49Zr7QfKdeFi7C53y4wDrKB/DIPfUtd
	 poj1y5NO2fjtfYykM+RvSO1eg0S5BI3C5sKfRtV4aiCTXAOztsPpKm0Kyx6acMW2vP
	 kxaSn3V7jUxzVryooP3us3v3IOQFo4IzCMt9QEHr4I4lPMqPZWXGq5ogFCVBfjYMsO
	 IuECkpPNw8xqCtP9e/azYrQIdCnSeSoFlxHTb7OGeCLrxsCAGirMEGMmjy7rUx+FZz
	 pUXvPoKFgbl7Kya4pJyARHG+96kBCD5rcmsue/ydk6bBfnc41GadgGC5UnoxcDMr0Q
	 KVmgLUU0/A7CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC92CCC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179210283368.21465.6880567289491556907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced198ef271d62bab49a49d60e2ed77a1c727cc0af101c55ac84830f14afa603
Date: Thu, 15 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792102833
