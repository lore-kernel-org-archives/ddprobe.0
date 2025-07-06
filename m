Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F38535972
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751781594; cv=none; b=ZepMIXITL8JKN1rqWSLPLg2k0cYB1VO6Pf9iVsc/SzzqpML5BF1Qw7z+5B/RTFjrnbC9hkh/8rADfmvP9HHDQBTef0HrWKotnlGZCQIPh47DtRj43GpkZvffBDmL81A2TIYydse/WPcKwIEM9ZALmmd95VNz2SNmuDuD+CrFsHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751781594; c=relaxed/simple;
	bh=WolIVIKIv6Z5l6SZEyJgU0atRx/5ByRnzgQgJrTafJ0=;
	h=To:Subject:From:Message-Id:Date; b=kiCkCbUm/R9pdkE8EALUgxb8DWduG6wYuZuW1ekpVmsq59EpqPJ5W7EJyL5rwRfFfeg1k2DhPYPxP/imAKECpk3clM6g4q3Uvpb6tzedwgLNjOo7Mqg6QO1VF6R2jvm0Y93StkhEKpNfJHgKPRbvI3o1vIqiK4Cj2p5h8sysWs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EM0yENeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EM0yENeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A10C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751781593;
	bh=WolIVIKIv6Z5l6SZEyJgU0atRx/5ByRnzgQgJrTafJ0=;
	h=To:Subject:From:Date:From;
	b=EM0yENeXWDAEUvFe4O/woqpGm+f7l8W/zhgSFJ+I9M3d1R7Wkn/6ptzaFOEfMa03B
	 y+RvJKWwvcBBHCmbiXb2cclQ+NHzpUIL7m0vtmjX+m0VzlQvgMsdRt+tHa/YDQRENx
	 nSQgUjmmEu6QP1++Pz4UtGIEMS1b9mdR3mXZCXGXmvBkriSAAVsnY+SpgamFBbdDDJ
	 IH9zHyKreVYj+Wjedha3R1k/N/kaWcpP03PWNf9kaln5ZG2rh0itzJUG76AxJY1+y1
	 8efYVV8VvAhKSQooKR7W78Mly7QL+nA8SiJjPLuppP+AdSoTwJahzfelJs3PMGfbya
	 SNNg4XvzIEWQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8BCC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178159357.29784.12278414957403768090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb19e9ed9dd088f3ae9d58ae4ef7f08189042516d3a90d6a0b3b8c4118b5865
Date: Sun, 06 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751781593
