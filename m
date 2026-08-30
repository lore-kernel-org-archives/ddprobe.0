Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A660202F70
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788081634; cv=none; b=o+qhy4gdM/XKdMG41dYH+XrbY6CC/A3VCoImjKhNmiDlnaEm2Z7UXgb7SNVu2ppHgm0OsVtl2uiA5Oji5kqD2bitzIc3jMruo0NHT2Oemg0J/W6t0ZIdeV0hWlHaxgit86TGVyTSSKZ2IDgI+sz1ZT/STrcVzIpeIcsYHU9V2pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788081634; c=relaxed/simple;
	bh=08YEYubMCj+Yz3mgvZLsDAc8BYSb8YB5dj6KNckChEc=;
	h=To:Subject:From:Message-Id:Date; b=QdWWIkXp8Ewxs/wQcZy8DV01gG9aYDjCb6niA2KFAHPpT7agJuJp3bIlZOzp8X3abgl5Qlwo55AXPcnH94kOIukwWFT1b4KW9pjuzjv+BYFxaJtyBK1yV05Ai2n7l9rimpukHa2/i/EuJNFv7Co8VzXSNpG7tUbZNg772T2f2CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXcXJ18/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXcXJ18/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AAEC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788081633;
	bh=08YEYubMCj+Yz3mgvZLsDAc8BYSb8YB5dj6KNckChEc=;
	h=To:Subject:From:Date:From;
	b=EXcXJ18/qlglikB6G/FapYTFi58b1pWquJDW4QVzB1AQlSkCgb9F5sGowIQH6JLt2
	 2nsphIrwijQ7Wit9YQommSJKHKdw6sTFz5zrecxUIS+AQLDzoTePRhueKLmeQV4GS/
	 o8RDNmSmFOHCs4pTMu0bLTJBFzTXRbnQzKj/dktxoq62H/9z1O3Ix2RJwmEJG5+EUD
	 G0+H/nnLwLeZ0rKstQiPF9p4UDcay347ABP7DpU6BQynqd8UWV8WzMoHWQuX1sS+oE
	 dsciCzmGHH8zENfBn0laBRIXCvx9bgA2R4MWFv5bJO4MsWkmnQsy2aoFt7/9gThiXT
	 PJvJApXCYx3+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4FDC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178808163368.9704.8966048986197744903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4db522bbb8eca7aa2c4c2ea300c933f815ccd23433ffabb234b0167512951f
Date: Sun, 30 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788081633
