Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1BE1D45E8
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771075494; cv=none; b=f0keVK3dJr83qpBOpW9tbc3NGFNEkyRXcbWgbbOUkJXkOYQt/ZZWbxX26/5pRDfPHTRVE6FC6cGihKkh0CFEJGsFcH/LS1xCVR64C2wjIJdg8Il8dkZP8spXJL6FLKSbBcAxPNDb39Xmfcnrb3KwztOFftyqaFMiyb9GoHAKUkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771075494; c=relaxed/simple;
	bh=CzqtKRxTlHNL9QzfQRQS6eFIyB16fvLVqawinDqUq+U=;
	h=To:Subject:From:Message-Id:Date; b=EWpztpqT6dlTIEHRqHCuQQZYrpJrHac1TbQJHK+MKU31w961AdDJFACnAZlsavfnyms1dOOE6ChepAwi4HYy59801O5vl76dXE21GzUv0jDNZhcPT/fMCrAM0ynR2VN5Enwiupo0C3RVAvwAI9L9LCz9Qx5q0FZNWXtOVAuPIV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxzNnw55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxzNnw55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AF2C19423
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771075493;
	bh=CzqtKRxTlHNL9QzfQRQS6eFIyB16fvLVqawinDqUq+U=;
	h=To:Subject:From:Date:From;
	b=UxzNnw55cTAcFxET/kwTsozjXHo/J+RMFfR7JH43pQwviHMLSCq3kcefYQ/v5UK2z
	 ASFmGTPbf/U8iUhV+sUQyNyYXtYcuw2111c6nz/HxbLVsILnVyjT07SoxNsQC7pcns
	 LP2HcIEVBlOq0+NMjjfOeOXc0G4yr/kfo75vylNPANxSNkFwsUvF2RhNoxlLJXKSEc
	 +kd1oD29MpmYfhVJQ0JeTTNIndgo/1vmcnXe0WASOIuBH3qhYLEIVZCbw0cdKtdG3E
	 YKV484JVRh3HEEbPTBt37gg/1uUGuZbxjBSThitVfrx704LjJ0nf2zggnwNdUO4ET/
	 4jd9CRVZBck6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD07EDF15A
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107549359.7652.8150729764743962951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59de6fce288836bccb0086d6636968c438bf1f38fe63b69e0e8b515635ad2363
Date: Sat, 14 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771075493
