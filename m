Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3BD2FE566
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761506994; cv=none; b=T1zpCKavUmROtcwucoXPZmgey4UrvNz7hQkwIQ8sh7GSUGHWNUXjJo/UfFk1mxcIA2g4V1D/xr0mSXoa8wY2EwyNNJNEMK7lvlJUdNzXCoBQy1s7Lqb5JfPycJL1rJ809q9U7YL8NIH/oL5J0F/dQRSNgjO3VaEftGbDAO1wS8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761506994; c=relaxed/simple;
	bh=TRxrEDzWsbN3+aJVx12jP7MNnI+IU9rmxYtAJAzXdzQ=;
	h=To:Subject:From:Message-Id:Date; b=WKRGcl4uOnTheTP4isY0KGQF+RjB4Ka2jjw+m9jxOIsZKBp13sDLr8V1EqWdAtsRNWM71U5piH5XjZnx0EfuMy9JmyVohVqtPPPdqyd9IxiktOOe+/iVLSS1HfohcLJskUydQH+pbaKjKmCEv1KdNLz1eUB5eXGjhos+LLiu9PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKtSq7ZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKtSq7ZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EFBC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761506993;
	bh=TRxrEDzWsbN3+aJVx12jP7MNnI+IU9rmxYtAJAzXdzQ=;
	h=To:Subject:From:Date:From;
	b=lKtSq7ZH7rgrBrJ2OxLntKHAHd4iSuzxsDrXvp22yBW3XfyNfMsqFd/uby5vQ+IUa
	 iP6VvuhSyDAwd4yqQZoq0IbAtGmUYxyfuGZDhFiGJNjeT32U8a7C3wqNRDn4ZlhyAu
	 c1WN5bGuiskzTGTv/xNheF5IHVmSHJgvqUsQHHHnCCmWa5/f1Bgl7VGejpUlCp17CD
	 C311NgU4fLf6H3sUaEk2fY6rXEn5D9aYtK+OGH4HSDWPi1c5H3zvOqrmKPZwN6n0IB
	 Kj6LAmV986CT3JMaV0ebBHUAq/Fstj9aFE6J1KW8DRG8G5BMsVs454vlHE062jYapc
	 zv19pj5KTfhJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9584FCCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150699358.8693.17901806715860344433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6415d9ad93662b3b2bd5625a5d02b35c43ac435eb1e276368f61a8a6f6696a3
Date: Sun, 26 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761506993
