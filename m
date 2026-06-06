Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBAD2882C5
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780747474; cv=none; b=fdwMRsZaNtgmUj6U9EsyZtzVVWh3tUBEOsZXHyKOANIKy6+CRLsG0bQw9sYB6ypqqa3uHVimU7h1+ZPAWzIIBjQqtlnHfQjkPHKY0uwtaQcjdrKN2Nf0xwqWHWnVKLe20eHxUdqQyv2QCwKpnJt9DhtmBk7Dkrc2S8XcWalEJhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780747474; c=relaxed/simple;
	bh=deT8YfQ3FzaqnxrEVYzP+boYUV2NpeTNIv8Lelh0S3A=;
	h=To:Subject:From:Message-Id:Date; b=EP19PeeDFDLxGzzfAn2M3tBvsbaR5kqwIyJtgesKMgusxLmgGKWbdteYTtVMiv77r6BmMCMaO15q0fiUE6xB6O6DQGFLHXevrqzbbrWd80ycO1j1kPKvoab9ZW4k3XyEyBHGdRrmughGTcy1N9mi+m7BTLfGgp/pRXqr6brbmOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWJZSYnj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWJZSYnj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF13EC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780747473;
	bh=deT8YfQ3FzaqnxrEVYzP+boYUV2NpeTNIv8Lelh0S3A=;
	h=To:Subject:From:Date:From;
	b=jWJZSYnjhUrq9Yi+KLgbjHxl7LUyiQ4lJ5T0WD9zve3AgLzMJd5S8mX3bJL6IHXYr
	 Z05YswaMkj45q+xA7kdn79C72/Cbo/j5bXS260aG9tCCdwVOsq+/VWikQzHxQxob/6
	 hInKA8TL+wxOfQEWtPxa/VOiu7AoeAZGjXCV8RLopIvtHytiGNJC6y1Kp/fACn3a78
	 0rQ35ONJA+ltj40VnSfcPqWfQmHjPqHkEK4moYaa0HXIGfvAwxpcYJ5ooLJzYvAlUF
	 ZNEKl79cFPW6jP2uR1hS+RZWcbPQcwcRrs5yXVP9FOo1tyvdjzVb6dxakePbqBlqb/
	 pE6Xs+qoKvvag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE862CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074747370.32487.16160427957578187227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d04fcda668410447a9a3898731d54150aa146732f3fb8c5c28d3144b16aac6e1
Date: Sat, 06 Jun 2026 12:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780747473
