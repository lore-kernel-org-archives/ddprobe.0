Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0321726CE2B
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773495894; cv=none; b=FCBpnbyFdAw0YYRhw/baundQ5O+akCqvDnHqADGrLJadzvVbELkIq7bzrdIaJNerTlDfjSfOge5BZ4Fdvn9K92Iqg4THDCklGw0KCEI1Jo0ghucPRaDTxZ6zL5CaqYFHx8vXJKYFiNtW9DRxKbghTCqSez5i2r82zdAJW6Dlt50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773495894; c=relaxed/simple;
	bh=0NVjMHryZwnrRIZ7TwUGsxMCIZen/j5vbMu2RlqCj94=;
	h=To:Subject:From:Message-Id:Date; b=BSe+2k74e5R7LlYk/2m42Ds4DrXovGzf7E4QWtzcWgL2I4rwWDWjBT5QdSUajAK744uWDZMSt3r9OX7PCztgJAswHiUv/Ya6Ts4fLlfCrywd/5+6uq0cMlW0o2XSg6Ks1P25H0n6SpMHBsPRNqPA5rqRVLkkSlYhWTlxxwLSKqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kt34YpB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kt34YpB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC61C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773495893;
	bh=0NVjMHryZwnrRIZ7TwUGsxMCIZen/j5vbMu2RlqCj94=;
	h=To:Subject:From:Date:From;
	b=kt34YpB4BAKWk45ypdLrFTLO1mIII356CjXuIhe3PSjugIUDlAMKxUERvxfb+SFoy
	 xLZUh9QpUh4UbHgrTS7CrJH5riS3bLckS7pzOzjCvJwL+reMuvlY2Gc6/Jemz7R+Hs
	 H8jZ2/07i/+CfnqpJDriNQcpdmYf+5QDdDctdoi10zG6Ic6A2z8bpwfaCCu2N4ffa6
	 E20Ds8Qtb4mmVkBGMTp7K8R3045ilJCn3hM+9g9ubi78W/B9aVemkrkxK2tZj8xgi+
	 fmcenXPkgK0w1VZhh7E6WLWoP/wKeUhMyiNOTFmMuQeRnXZZrLl13gKpJh39s/VjRt
	 Z3nYxbshos9cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC5610706DB
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177349589358.15798.5415938514265739803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257f819b9d31db02e11146a4b821e3fcdb16e5eb7fd0e4e5f782c966a2bf991d
Date: Sat, 14 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773495893
