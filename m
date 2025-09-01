Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC2D1EE02F
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756763394; cv=none; b=WuhkPw5OthK4VtL72JEUiY7ZZx09w1LGku1Rq1XRXNIDsWXOqeiB0AW+ZNJ4L9Btpk62eLio1zuO3i0TtF7XrKt6tUcx2bDGxH3mZbZSSXUcoS6wjsLymOtglOFJcUfojden4ZVh7O0pPlVkZOlVpI5Vql9OOyZlU4UKO/yd050=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756763394; c=relaxed/simple;
	bh=cnUIVmtSc0Isbpw+d/aEx4hFc6wcCDpUoZUvMC5XDS0=;
	h=To:Subject:From:Message-Id:Date; b=tVU9xMz7nE6BuCXCckYv0OR7Vfdi+JXcgGF0ZkNUM0a3vNhC7rJ8yqvevCj+G7N3DEOOzRrSGYd3lR2lmqgSarZMtWaZBf9ag5vxLK2jYAfDODMBcB1PGNgtlqVtWh2NNRBkhnXttxNw6VJVseGnaMM9r7zyb0EVCtThLYfGYYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfsVTk0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfsVTk0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1655C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756763393;
	bh=cnUIVmtSc0Isbpw+d/aEx4hFc6wcCDpUoZUvMC5XDS0=;
	h=To:Subject:From:Date:From;
	b=lfsVTk0cHyxTofVdTN+kOrS65gfx1Wnd1lAmHHlfzv/crUz39ZKTFNNOiSW20YU8I
	 y/WNCaW4LldaWh1LGce/XuLKVzjq01FLHS4uyONGNwgMaq6zhs7nIeZH99CsaVHwUE
	 yxMbXcpOqQ2QJUh9nP0/4nqYPmUpnk7dhV2G3Sa1+skyhvOnF54CEIZ4LtEEME5/jH
	 vZtqPKzbFCx3K3RCTi8yzK0sJi2FMPTZuvrpGkm1hNOSWleWb8wO4srAbfxMmz7LPj
	 OM2nKrzAhNxYCYjRh2TUIeBj41+DoOxOwc2q2i7MGatS/93AW92+IJQt5yY0Ab69jY
	 kcOD5kM4lOOsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA16CA1002
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676339357.22759.8007199254842806213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f1dd9ea616bd7f41d0862c1bfff3779cfe001f524c9e2ade79e04c74c71c00
Date: Mon, 01 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756763393
