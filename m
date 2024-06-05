Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D53152504
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717616243; cv=none; b=m7lmPyTnYSJlxW/2WISYutmf13r03sARGHtrQxJDC3uQkbUBG+V9do9hqktpqr9cbU4TnpTN+ZwCT08xXR3bLHSvtEveVnqtKrTZzzzqo1fDhuqhBosEUivIrnq9G608K1WQ9pkwHTjx46oV0PQdyqRDtfD9Mtoq7q9jpB4h7f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717616243; c=relaxed/simple;
	bh=0ayYTmJbkSUeSft2j5cGT0JBvvBKCfYQ0HOVfFCAAP0=;
	h=To:Subject:From:Message-Id:Date; b=Ug9wa+mHu1TumMMYldRZTsU5ZEmZ5jYbi9XbG1jNKxKA4vxYpKEO4/XdinrQnAsl1XFwa9FSyskllgRG7dbeiXJD/i276fIlLIYKry0yaQfQqwWbTrvntHJge/9T8NQR2H1US72pd+h5PFAwzKozbGi29RLCMGZPTSv0pRVLnfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUloYCdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUloYCdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC52C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717616242;
	bh=0ayYTmJbkSUeSft2j5cGT0JBvvBKCfYQ0HOVfFCAAP0=;
	h=To:Subject:From:Date:From;
	b=XUloYCdG5lNjTawwEMantRAxqdZnXwnOSPoGXObFXQnE2vrn4FlkvPYTM+N6Rbp7C
	 b3A+Zn7K1bbHDXz1ArQJiiN3ON0Ftn/yE5XvXZdylTQctaWbwJN3QEDhwBbYIm9Rya
	 HrRAaTy6E6Ld7IN9QkwgMeJIwjotuKOGaNMNbEsYRltO4SdpJHSRQ6vT9THmGNzf/3
	 eSizpuSlmcfq8Nnpn7lh3KZBPVvZE3VRbL7W2vs6tfY9zjyDzUK9gZAChvljQ4QWgX
	 Js6Ue5rlouPg4oHCC3Ow0JhMLRXRr+lLNafd9JPE6GMr9oHgK4TLHKKLJ9RSDbOFRM
	 y+Gzybc2aYOyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD293C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171761624276.30893.7883166577299144726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0fdd2cdd094c9a16ed4dbc9941391d705b0714771f465ff6f2f5c4b71b6c8f1
Date: Wed, 05 Jun 2024 19:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717616242
