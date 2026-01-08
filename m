Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2378E1DF254
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767842634; cv=none; b=d5ivJJZt4LxCke/+Eydve6B6mGvOll+US7VC+jx+YZWw6mmHe45z44J5kUKv/rtfif6EqzBbIrXkYllSmwb5x7F46ZhnrKD9zxPx7oW88mrMeJSpivnytpX+aJ0HEg8sp8v4BKyRUwRmg5S5+8Dm5I3DZ43U7+RtZJMdJOVGYxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767842634; c=relaxed/simple;
	bh=2KbOKpDCXwNWovCYlV0EREGOOwUhbLv7SZT2uGdBUI0=;
	h=To:Subject:From:Message-Id:Date; b=Ea3O5hdfSsk9pWjBXj+bbDQEX2H1Ywa4OWkqpgdArgcGUpKT982SxxQtFXrSSX4WsHUQQ8FYilRDN8Dv+fFZHSRBZ4nhOpTyl+pnOGPTlZ9a6AuktMgiWU2Sf5lJHu9/JBVa5a/R+nIan3n+xoiWEtgUaXOlBhFUTiafNlGIGXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doKp3kjg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doKp3kjg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD8EC116D0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767842633;
	bh=2KbOKpDCXwNWovCYlV0EREGOOwUhbLv7SZT2uGdBUI0=;
	h=To:Subject:From:Date:From;
	b=doKp3kjgfbrVIhHxcSQ3YQ4mBOPGle/9M4Q57jxpTIuAqVUWNQvBmhNBONZG3F5Xs
	 uUFtBvng/Ea3TD7QIEDtufUxkES34kGjrAKzuSYjaej79xaAnPs6PSat/gbcWjIdy2
	 cAuG/1lgFsiQ341uPcGKV721aG3NG7TbqxKO1j2fYFOaJ2diRQgT+nPQzyVjkSBb7a
	 dnzbAOurPCbtEJCfT8ePBpbVpXiOpM71qtKAnmy7BZ7a58kQpoccpt55ShqCSd37lh
	 n7weocMjSp4TuUMvHIY+BkN2Vas0BfFxRwQbBk4LMgvKav/EPsEqFd6bysae5WrLEY
	 5ejChFHCLvYow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F470D1489A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784263357.26982.11903377411086428170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f6a2b4ea6cb3dd2036416fc8f591de9463d64ab45aa5fcba05388b91cd9a1a
Date: Thu, 08 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767842633
