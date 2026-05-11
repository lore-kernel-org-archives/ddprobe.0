Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB7D339B3D
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778493034; cv=none; b=r8sd5E6NoMrMrpg6YrWVQqt79D6NZL2KWXGmytVfFiX0lhv4dGU+IHcIhrXmhp2TPYsbW2bJPbYh+ILzTXvoi8NbC1OeNJWRTRMM86Xfxu33ueytewvAwsu/3Kg82FOe5yTKErvwY3sfxzOY5zVHfnF0ga0b2hP1Nlv5KpOzKKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778493034; c=relaxed/simple;
	bh=rQwxrBCjuHKsh8fG7XFTiGiNKZ1xP0VQdmDpmzKFZBY=;
	h=To:Subject:From:Message-Id:Date; b=aUko2yRlRLWwzR8PFOoxaXRzYYsJtgq0BVFMjSbQssL3F9Llrtj1HT9ezjz+illJV0leFDqpQevDGYQTxfFV6Mwb2fgEoEclaIDGOkjlNS7Qmz4jCvD1XEcvnFXzFURl2al/Mbb/gvpAJDxqQ/WTJ9b6iAyeNe1aAzkK5uEqgQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxNfy5mU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxNfy5mU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B941FC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778493033;
	bh=rQwxrBCjuHKsh8fG7XFTiGiNKZ1xP0VQdmDpmzKFZBY=;
	h=To:Subject:From:Date:From;
	b=RxNfy5mU3ZLqDiDiwLhGJ5zr/dVj4g1x/ljFMC0vLEBTnXhQsa2x2s7uCeMiK/9Rx
	 IQMsVPXf8gnQPf8uyhRyZLcp3KOlmyA32erRmzJQoV9gjHFsigBtH0JaF6VaX9W9vN
	 mE5c23zns4knu1CLR/+uGV1Kt69SwzEaOYLi/AC42IKfhBDGYHPU6QqzZChwybD9az
	 bQGBuuNpxdFLmczVtOrdqgeUzvqFc+LqaDrEeN0k0QmZNR8TwG8VF32MYmwgDhPsFV
	 XjRN4qILNlDFwDgiivI9LXEO4g/FJ3Dn9Hr59jLMreItLzHH3GVhEU8HvvN6vfPfN+
	 TMmwObRrgT+2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB188CD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849303369.29972.6565613631355797847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acaf8a362ae94bda291a0037af3ac83addbcaf454b24eb695b9a628d2736f3b9
Date: Mon, 11 May 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778493033
