Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D511C2336
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719591863; cv=none; b=bw431vaXMF/gYrfSAdR4M8EuqutNQz0EDku1zGkb/ciFoK4ECzyBJR1xUvDTkVHeAlxvpU3B7MOMNESvv5EU/FBe1A5GkxzpWHIbS9bVouL/j1bDfKnwJV+SiR+J3V9K008AdvMpUlRrbRLO4a1F/GUJBGoCioka3ryK22vKmFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719591863; c=relaxed/simple;
	bh=RdotL+e7ooi3QhODcaeuWcAcnq67CacCANAts/0WAEU=;
	h=To:Subject:From:Message-Id:Date; b=JWjPQtqbjqFbCj7lD1dIIm9IqDX3PoTKBKh0efZj/nfjSuAsGyfi4G4uIonaKANsGFSfXOu6Zz/NueSqX2y3GWoowl+V5G+0h9vf1H6635kFkE2gJy+Da6vRJR+URL40AuuAxfHxzz3sV80SKN8dYx8c7D+38gzdw/zrnYjXJos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvQzLVyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvQzLVyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBF50C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719591863;
	bh=RdotL+e7ooi3QhODcaeuWcAcnq67CacCANAts/0WAEU=;
	h=To:Subject:From:Date:From;
	b=rvQzLVyAWZyW9OIt4MBqbFBV62qDDqVvrJhbxqbwaYsVqvgDI3eE90xS7I539MBCj
	 AXqVFRjtFAjs5l2kUoZV/Yjp9xvygFgvzlu92mCTgh+5uaGmO+guk3GcTVhkvbp1Oj
	 DPkqvThfpmlRA2PGc14zJ0TBCFFXHMG+1lT0Gs3ZoAPetC0u5rxCLRT/7dJVClDamW
	 vuYvuStkr9cIOgiXth7/TglG3dwLJtBbW/wEmTSU1t7gXZ+AxYPf30/gb4QNnXB9gd
	 TRccq+mXzjN8csJJV9xCyPUGbNa3RgdlTiOdo8xUqEGpTBmErpgxDlRA//5FNdGluF
	 oj1IoVR83g/gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D614EC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959186286.12531.7771243043234511770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b36f170d224cc93f025f7e81f3ae091c9d11aa65c7a4af6384d143641c5663
Date: Fri, 28 Jun 2024 16:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719591862
