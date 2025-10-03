Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B30522A807
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759475394; cv=none; b=QolwvshbO9zChWMRSu18uEIdGh2sbu9bY/+U0pZgKhNLOUIs0m6YcZcpZucv5nq5gOPKitlqDfax9rC+yLqfOIwGmhS9r2XJGg7zw3u67DsYLFr4eeXancAFBXG3a4ONrWYPWyynNfILK51Y4IdETU91W///EH6hJFld1GOUZp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759475394; c=relaxed/simple;
	bh=/DeAzPAPdAEZAKwJiV6Kgsqcf+lUXgNA+8QMzL9j+ZI=;
	h=To:Subject:From:Message-Id:Date; b=RloWlqr6UNlIWxYbL9sTOJ/D9JxIGKMmGr5/cjildncv9ro3HpVVLafZWLxEMwvJ+heah/lZSeAmRdQIhmzR7w+/vc+l2nBPwJljUYg3DGlf4WrCo5fry5PkQBAFFZWNvn4UEeM4ncdp8Wiz0wX72jQRvfCFRCrIEAjYQR4dIWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3hj3k5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3hj3k5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21EEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759475393;
	bh=/DeAzPAPdAEZAKwJiV6Kgsqcf+lUXgNA+8QMzL9j+ZI=;
	h=To:Subject:From:Date:From;
	b=J3hj3k5wwXdCvB3Ul0xoKF2XAZWE2eECSIYAgFpTOBqVQy1fu7S13+kkPTq/aMjrh
	 LeeqgDNxrGCqofLCa6sCzfSQRwIjV6brmf3Zj/4U1LHcW4mpZY0nH97F+Iq03NAqfw
	 vXXWfCKZazKBRuX3aU0TzbqGwBn/aSRrPI1mzhW3nDhZiurtt5x6CyEhNJkhe/2xwY
	 I0AeON/HaidbK5lewxwwfC9SbhAd8IddUp4LcURQjxsJ9GiV7TgFr+y66HDbX77rkT
	 p7mCtTEBebPI3yuwZMfauvO39zFwjONWQTp2pEPOco5RTw9NMP6fQhwfxeYzTICySq
	 4SFs0DL2CRoAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A1CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175947539357.20746.9433151448367378984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aab2ea33995ae8b44a004eb929185d763c28b0907e0b7573297568e7b8e2395
Date: Fri, 03 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759475393
