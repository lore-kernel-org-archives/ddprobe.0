Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C897228C86
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753171194; cv=none; b=ADOKSfurxBZXTHo1w/Q48WY+dvn9J7wfI21rjKYpnbzXmLVsbe4kIxv9WZRElsMdRHVG/QhdKCchOsVPXA7IOfA8wmnKrDuAQGON0+r944x9LfewIW3rWGbNxDLqVhEXYmE6NvnqJv7qFjb9hQ9ZHuelk3pjQL5sHEl88FD1AGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753171194; c=relaxed/simple;
	bh=lR+4xx7wd9IkvOPrVP1B6G2iK04mcuQ81HX75QY5naU=;
	h=To:Subject:From:Message-Id:Date; b=uuDTG9DmpI5BpGLi8NqpBrF42VVxrPAZnyNwGrCWiOFYJZoJjWEl1BmPvjMuRuwBVlvplO91cIBeEwMwBpjoE9RtAiFLysyHpVKzxUUjfdWb2/Q0pOV2KfGo6JoqwfsjOvM8Yh1ufZ2PHE7ibP7FWEXgYvVSGtAKrjRrQpvwNrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akulmvrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akulmvrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B66C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753171193;
	bh=lR+4xx7wd9IkvOPrVP1B6G2iK04mcuQ81HX75QY5naU=;
	h=To:Subject:From:Date:From;
	b=akulmvrswvpnxnyaHzHqlRlsIFdPCTNd/83CxxYBI7RUNg1p6yx4ZQ6IZu+3F6NoC
	 9Rnhh/VVG+Kv2PVP6n07oXEa8VaNY+2YxjthiGUWw4rvhrtjNYfEBLHS+FNNbgfzDG
	 1Q57jzPpS1GaABE46bTFY7sEeWDYLl0Ew8fj9kEJ07cy+ku/BJBRGbz1t7ceRrpGAQ
	 qdFrXmTSeuEl3vH2KZQzIYQo15OiIGObJMc6W+/fB/vnr/KajWHs3Pu4++zaTKLl0f
	 GVj91lb9LFt9hjjMv2BTMhDT/5r4RDYkl/80PkG2Shd6B7U1RWVVz2bW+Lrz8ejfm6
	 J+5s2a1ovFakA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91309C83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175317119358.21732.11907639264096302602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c4663bf8baed5d38db3347e892ce1e9e4388bf24dcf0a952c7e5db989ff7b0
Date: Tue, 22 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753171193
