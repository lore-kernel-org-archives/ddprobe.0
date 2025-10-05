Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246DA33F6
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759670394; cv=none; b=eRs4i7DktG3SNgN9hSsgBiwgKYqnDCycJrpRUj/ybybn4em5+mEb+i4eniRpcD6dW8c9QhSWcrc84aR2s3ZhPdK72sILg1gshs/1hSjbI1dNYPmUfHQjYPHpoAJ0UTjYUFfVfRaUgk4InaoIEMw8llQoN+Z7yh4oZPA/C64GhAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759670394; c=relaxed/simple;
	bh=hLHIMhfXLzP06duN/mFpil9U0gFWVAQDoCbptizi1eo=;
	h=To:Subject:From:Message-Id:Date; b=GbXJNTcvqlab/btniJwuZwLovj/xhA7pwXL7wiqPY+cZfxy6+N85Mejr9bsDfxCQbcPAaSUJsH33cTd9yzw9Z6E5Q0jSxQ9B/YDMTVBORFctKP/iIB64edNJNKOo4z/u9JCpcPc638R45EAtlg/w4kGRXSR7WSzhSRJxnRMO474=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okB9Ep36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okB9Ep36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E5CC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759670393;
	bh=hLHIMhfXLzP06duN/mFpil9U0gFWVAQDoCbptizi1eo=;
	h=To:Subject:From:Date:From;
	b=okB9Ep36DwVn1FFl1vomFegCHI1/R3hbxPbzhcVGJ2kMWcJ7vMMkt9jN1D2t5BeZ/
	 0JwCeDALLsIO57gkrVGQqrBq3baYurA2b8i8Qne+EUvqpZ0pQ92wqcguAu0v1Zx1g9
	 nY6m0lIsIYUiP/tGTsaKme+bstzofST+YkOkOcWcXjdI2eLHfTu+zTgW3cu6II0+Ri
	 QVjqR1PTKIGje9Fw8YJShR/y3rn4n/cJIVRDWDkL6j5t/9G3fQrjZK4Wh+g2dNXtSD
	 7SFofAXcXfUGoCBvF106ov6gTaBfhYFELIS84S1fBVVGxhWWXT3TCgBEiMTlkW15p3
	 9R5ACoa0JtIiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A8DCAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967039357.635.3433793582508500522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b86fe2b27d05ab51feb6c51bc6e127fd079f5a35c051be10fa78435d46ffe1b1
Date: Sun, 05 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759670393
