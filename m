Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D0F18D
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727138154; cv=none; b=XHuGdk0jwaJ3XydzfVWQALpFk0bcu5Zh803DgJND4r8zwyv5wjJ0g/2XW8KqFRX72lCiHMH72q/BbX593SS7hLrkeHjU2rQRmgB3vCW6OPgxAU5UUntcYaiJanZ4ym1MMtI3l7qb1w4A8VHWcCDiPkfLralPCq8ybZJYJiWN1Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727138154; c=relaxed/simple;
	bh=76DzWBEGi1gJzaU87lL7sXUDisMEVUmf87KpFRuFtPA=;
	h=To:Subject:From:Message-Id:Date; b=tZJu1etTo5k2xLle6CPZ0F3Bk/y36LKaTzTEf5iJFAzZdLWDVS6vNXTaLY4w3WCBvM2s4d/UGedDdO3o6InuzYFifcOmP7h9wTFFQ909fgEQf67Vc6HCwb6dAwEQ4yFTapWYt0fyvlEctnwIcxpVr5kF9pT2BU6H1ot07rEA4nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smX+6uzq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smX+6uzq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF35C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727138153;
	bh=76DzWBEGi1gJzaU87lL7sXUDisMEVUmf87KpFRuFtPA=;
	h=To:Subject:From:Date:From;
	b=smX+6uzqn568n5QsavMVLrnGuNavyJKgjLY9aNUMXQhLmveiw0pKhDQpzkD3CnMZM
	 /S1VTuGHe0zc3Kz/F3uu3or1tUVklvEzAukX1HSUl7LXkgI52Ai0MGyuHp7vNFOy9P
	 59VHHsQuutI1CKjEZwZiqpX1q/Db7uxFOOWznZvcqyaSjvptgIuvICVSI6vXbGLQSt
	 OD8M13eQ5uCSY900tqqoylSbAGincEqkzzsD0331S/0nxSOpVPK9cJYTaJ54KUorIF
	 kywGr7bNRI/fTLBHIEAnlRfiZSYbxyVbCDdxgbNspElCWD48xFboISr4SteGynvjBT
	 7vYVbdFhEnEJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9239CCF9C73
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172713815359.10933.17761002035977797199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3184f02858365826f46bdc9f4cbf66383c9775ea1df2fc9d84bf38992818a06c
Date: Tue, 24 Sep 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727138153
