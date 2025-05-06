Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FF31DDA34
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746559193; cv=none; b=K1LeWuAKBmGHI4DRVZx+Q1KGekc75ybXjYU8B/mXuvEcOWP3yjIs4kY2tTbpeCxXFFBsSfcilCRJa6XF8edcQ2BrMepTM06XldfjZLig9oIjSrIIlEqgYuYux4nNRJIt6+iznih9afqQvDtFRelXCHd1A3ng5p0lnLS34fUnhbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746559193; c=relaxed/simple;
	bh=kB9kfnfouqradIMHAAQTd+6lsmNkPFOQQ3vSHq+JMLQ=;
	h=To:Subject:From:Message-Id:Date; b=ZM7XAStujcGjKlUAyc1sszhitfV9rOrPVWgNskuw6gEyXn1h5nEb3nEeoc5q1Psl4q3NzKoBLxl8pZREZiphiB2v+ygcsIOZz/3JZEHbjI77ONujhTVvBeQ8xMuj9jNTZ8Sx83NUvQswMmWohw9hBarOsa4MkzpDsnrNHeEd2fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjI3F5NW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjI3F5NW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF41C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746559193;
	bh=kB9kfnfouqradIMHAAQTd+6lsmNkPFOQQ3vSHq+JMLQ=;
	h=To:Subject:From:Date:From;
	b=TjI3F5NWeSgAOOL0huCU8Dsgeog7EkHc3oHgmd8Dr37THch+PhH8m6hUU0fGDgiI4
	 5M47znKhOU1u+eO8lv45se8XMPQeQyVhave4bbwTIw1WixFguuaXHjUUplYKHf7QhA
	 UHzQINZ/VV0re+0yuy9WCYz1xxVjPOljrRIjhTNvRcgFI455M04tPFOMS7sUX6ERsr
	 vHC0311nDwIot/OZ4opVOBYBV4TbfPu4A6t/0kFqgRPyBmyrj9XJcxioVhN+pStEdC
	 Mlf4cQpReI/GmD+xyr1v9schTX0JiA2Xf0LlksgfnILBOE/E2jrGfYb3/gmWKBJt9u
	 m5vSxcsYvAeBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE1C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174655919357.10032.4757511401157991435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bab63a34d0cfa068a28769ef5897232de5b681d7eda6962602f966d41506ea2
Date: Tue, 06 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746559193
