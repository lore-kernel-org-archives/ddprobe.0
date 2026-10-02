Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD2336A03F
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790934634; cv=none; b=jy+ozXrdbHtDQZ+av6wHVWD8z6JIaKeScbtDHqVbVhFYosxbaN3IqeydSeripn9KWByp0VJSVjjUtHKQlMtuLbixz18KpDgIEolnpN7z+GnvwLV7/lbCx3DbZlMu2isxdn9wJiXnVUXQWzWsZKiTx+lItZKB/bcykcSHaV6cU2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790934634; c=relaxed/simple;
	bh=AecWTKRXl87BFPF/qhYvFeQ3t+RIB9xqu50sxYz7Vpo=;
	h=To:Subject:From:Message-Id:Date; b=EtTkvXhFARwRnYbgWjhSRU5dSo/g44Ahw/u1Bavs8JCWydJVQ7CvjWnL3X7P8ZvNliy+WqCTdRkUjqub+w6ULGMnnZeZowTM2uBxv4Ma9zR5Mstc3eVv2WS6MIl+fmiQ+bnHt4YzEKLAi5foaRGntEvwVZnbmWhRVMOJIAfiJXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8p17j0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8p17j0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCABFC4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790934633;
	bh=AecWTKRXl87BFPF/qhYvFeQ3t+RIB9xqu50sxYz7Vpo=;
	h=To:Subject:From:Date:From;
	b=D8p17j0GPLg85p2QObOsWUQ4cPHrFCeqSPJKcG1FQiN9W2CzJ2QPAZY11mCsm+FUi
	 1OEV7l1/84EykB7mA2TUR8wCJMQ9GlrX4hOXjFEluiRokAVsRJXzBGFXhnwFw7uPHM
	 K/ZRRXM1IXw39uMPt4PAf1F5fFdknfuaLWhQCRu595nhcu6oIOjxYi+7utGa1u2105
	 YYyIUbukCT5+iLMAhoXhj9Da/TJ1/ZSwMQwZvcteTMXJcvPe+jeaoqaJ6Zv7bYAJa1
	 PX0N3Ri8TQeGQOZLCLAhRoNojmD+gNTtMlSg7/KCwh4w3bdqaMOt491UEC2mZ1oUsp
	 wbW/UUEcFUAOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2A4CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179093463368.341.7283709208694720103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8838f1fb39baf0a9c7e818241857880ecb5ce19db29d75ad5992b719e4553fe
Date: Fri, 02 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790934633
