Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EBB3F12CC
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783672114; cv=none; b=qhEGQedmlKQYUdEpOWdXZRGpjiNNYX+qY9JfDUmnLTcDfKpa5jRI+WnLspkZD/kJzITHi7SBIKhQXh6pGN4hOnioKDc4CkLeYFHYIGrPkcWe4KCh8c72bSokwcldg2GwoGICdtLm03b6woY66si24N34sXjn6PXXOWmR9TGjR0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783672114; c=relaxed/simple;
	bh=Lhtw7kZx8TDf4RjpqIet77Ahkxdo+UXF3CA77+TUbp4=;
	h=To:Subject:From:Message-Id:Date; b=FDOREbfosxz3QUz/uYQxLNwNqFyjHEyhSXEvkH0YGQcQiJKKd6FYaWC32QgaVazhMxVJh8frwBXkLVcHYpMoUTuZUOvsNWMkqXVvIozlMnEpBwGH0lJ+KF0UL6btn9RuZMCxUaM4w2IZsTEKtpYREMom+EwBDLrhtpH7kiT4oI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ft6VCzPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ft6VCzPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2B5C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783672113;
	bh=Lhtw7kZx8TDf4RjpqIet77Ahkxdo+UXF3CA77+TUbp4=;
	h=To:Subject:From:Date:From;
	b=ft6VCzPdz/1ppP5BbSefCyjPvAMPS5IQtFjvYKym29Qv7DsJa9a4HD4G1fkEM4iUl
	 yOqLe4FeAUgjQYcZWUW2a0PS/KMSwK718R5qZxTxCoaXdYTFf+2KhqutbK5UMYbPzN
	 cgyfKtk5Io61QXSG4boj9fmlyIMXoApUgXjAG++ZDeysLFxN+mn9FFRZEYa38//dPv
	 GMXCjmSaEJFdhDNRcdcxeOTXNnICqQAg2X+CJcXUnoDdqeqb6s6cMdOsdcLAdI33Vb
	 +TBDYB5Cx8DoCmH2rrxWFE1l5jyELp/jPoGCMXXtnDYkxLH3hGmQ/QjjXY5sIiMoUf
	 xf1uBvyyiuc6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA988C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367211368.1095.17319301301502649752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ddc2fed5d6e5ac1aae1f4eb3b4fda07b5bbfa5040c4efcf05c5b56c76bff067
Date: Fri, 10 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783672113
