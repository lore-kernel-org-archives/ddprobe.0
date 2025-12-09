Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C47C3328EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765287774; cv=none; b=jR2+RxzUbcttzhqzrFajrp1lbcKZn5k4BNvIudt4JPXrwa7PV97ylshsMKk91CGY/YKpu6jZkBK0iyTo75ZaiEO0QKvp4Ejr81JLyIJPzMeoCJb5Pggx3aTPUJXZDHND4n5mV/mrqFL+ITSpC4mPVEiT7w+4QtYs9QMthXLIw9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765287774; c=relaxed/simple;
	bh=ESPLcc7VWeqLRHVq3AcFsNWgjG2vy1ctoVyEuOe8nvI=;
	h=To:Subject:From:Message-Id:Date; b=g3IWQ/zx7U94x7S6FfP7GaBJr+rueeJ8cglM4VOLCL/hXLqnlGoYvbwBOi2y5fHNNB76nR6SJ6GlSJW3EE6klbtZbtdOLvzRa6nakhzwlG2RLociLsSc9kqMcPd3IZylpyODo5/oLS99fSSK0z5MbO+gUhRvZkd86C4jQ3E7zQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApV4hONg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApV4hONg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A103EC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765287773;
	bh=ESPLcc7VWeqLRHVq3AcFsNWgjG2vy1ctoVyEuOe8nvI=;
	h=To:Subject:From:Date:From;
	b=ApV4hONgnTnhVvuE4fR+O5E/+lzX02JzIxjgRvwaP93cGlHOPVewYmhBJifiwDmFS
	 1jkPWgx5FqmnVwvRL0+p6/4ygJTR8PAyPCVxx9uDTrKlb2fcn8H7GKicysYqjPyNW4
	 6iqcMAKvqo7/3LkKhVzJONkB2V72OehmMejkGOapL1HyNXG79N7WT2W51OAipVLWcC
	 JFnFbISYoRjhR3X6VDg7wa0AW/MUkOhxBJw8slon37QyJaYs9gaAW8zv/C7+kQoQ2Z
	 eYKcdSvSK6JEjqs9fL3UiPeNDVN8YyjEdnzL78ulmQXviJh3LNcVflzYpVupoRLJQo
	 +m7CczRbdPzww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914C8D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176528777358.23108.14650059164143150503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1565bd2d45e53e0c4d47ff3a3719d3fb989ebc64d13dd9a07709f2f24feb41d3
Date: Tue, 09 Dec 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765287773
