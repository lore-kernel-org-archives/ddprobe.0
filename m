Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A92510942
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749949794; cv=none; b=gP8S0ZFi3z6MoE+bZ9HGDkWVZ4OYMJhwa1kJZVKXubGmsixLtK1ZqeECstzZyUFacf+mVkMyfsI90jk/HqmcKYXX0y313/BM4/DpSwMPFJP6iVPXgp5zAPIJ17CsxmbmW2dQ+z9X/dy6tIn6T26tdLw75P429m6LFQBk4NQ5AnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749949794; c=relaxed/simple;
	bh=mKeaaH+s6AvYdOlntjGi6XbZQ8DxSfWp/UwW3f+0uBA=;
	h=To:Subject:From:Message-Id:Date; b=ZokfRFJHXhIlHRCpUzUJ7DGv/Mr3LH0MQH1WcZTBLWk6LX8anNfTge6/C7pPNDvymfhbttbgin40it9dKW+d2N3+reESeUOzqatdJI5IJlAOUpP+/XUCBBaYRMPuF94Nrs4JRTxHIXINUaVa+JuasLswRgf98HWwk3QikSFO5x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIRpZEzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIRpZEzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCF9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749949793;
	bh=mKeaaH+s6AvYdOlntjGi6XbZQ8DxSfWp/UwW3f+0uBA=;
	h=To:Subject:From:Date:From;
	b=XIRpZEzVsG99lvKiTzoZ0V9/vz+H0jZ2GVSWBDuM5kuG862Ti1Xv9x33IRrdUdxZb
	 EKy8Ii8h+Erz/HTiKq+fUZQf73/rjzfbIUlqMZZqg10PwMAw6D2Vi5eCW3LmQS31yF
	 8plAIjtmC2XolK5JMVoW4NdxcqxUGsaSsjDu0KesK2J3UOu/nxRYpuN3vsAZ5jOESP
	 Lt2w0KkH6M0jLAT+fBCPwXDfixMKfJGf4ITul8aZNtXtB1LpF1nUwQ9Xz0wPg894JE
	 aZWPQvnDxPMPZYY2DBPA3Fs/c4MKLxzASgR5mIZrHeDETaeF0iP+TmLzk5RRd0pWmB
	 7idd56PyB2GaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964B5C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994979358.3365.6940188073371578190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3caaff0574054459cdf2649712cd46c468a8e02f25cfd028af98c74a8f6fe9b0
Date: Sun, 15 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749949793
