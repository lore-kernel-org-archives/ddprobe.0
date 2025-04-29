Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BB02FB2
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745890794; cv=none; b=lb3pNf3vXxgz14CZxRV4aDgo+y0Eh3JdDWxjg0j8FqT0J9V+9/1yYxPkUY321VI+gDnwKzTf50zeTKswgHyKG1fjxnn2OOBou59PyXzfRNQAH7Jmt99KJ6brtIsafgpicTZIpDnoT25oiIiy/8YmpBop3j3Y648xQJUXWSE12FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745890794; c=relaxed/simple;
	bh=WnMtL+7uJwQF36WeQ6N4RdckWfw83DMHvqyeeRINb+0=;
	h=To:Subject:From:Message-Id:Date; b=VDmt6t2fM01k4SyQJ5apM/tVwEcan0ujOHOvu8WgJe2cj2iSeTPiC4lM/5hJJoH1xxvvi2I6qaao4NwPyV+GG+HwZ1fM5Sse+rYZoOR2g3MeIpUAAFlXkEtTdBebT81rREXOm5TvRFZ69m3mR1RnYkABViS+TjVdHRe0itqPso8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7+18KdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7+18KdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B7B4C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745890793;
	bh=WnMtL+7uJwQF36WeQ6N4RdckWfw83DMHvqyeeRINb+0=;
	h=To:Subject:From:Date:From;
	b=a7+18KdQqwcMzqQ1m34SICmWxb596Rjo1YqBiDmiVsw4p5EGECILGIs9mltBqjHtF
	 38y0oyq78LW2gRDI+eFDLapm/7Hud1x4KqFZE/pbYHG1bCU5GPNZdCDsT6yXvWeB51
	 up9tr86WvY+U/+toTziBeEE2BvkK0LEzIZqy2+3RTM6vqzQPm5RHcSFj4velmbXdXl
	 aQk/Kyfu3IQxt8odGMEWBFDLkkUWdAO8aPZ1Bg5pdKFKpmhkZNoQ6D9oHuS04RAHm1
	 /upq3amrwoWjw8KYyhl8VLPu4ITMaFkVwmv9ayJiIfUclxYRHhBjIXUWbVzUDAwOdA
	 Ft0C3Nj2ejx/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F046C369D5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174589079357.5381.17703851690111510643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99a6c820b39a4c09dd52da3b12bfca65c0673eca788dfc7f9cacfd91f833fc98
Date: Tue, 29 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745890793
