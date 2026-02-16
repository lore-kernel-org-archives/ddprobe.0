Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBDB92D4B40
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771238093; cv=none; b=Hj4NwU/RcMiK/ofE+tc46cnFJ1CNcU+YeQAg2cNapzo1R566nB74EleEU52aJnTeDtzKtgcNCtgOrSicLBPdH0WKAYqKGBQk9CNJabY8Lp0WmqPARMiybPpBvDkHu3TaDc3FW0S+4gDbs1gDUQZ8tR1nDwsurC4uSZXmg7pL6sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771238093; c=relaxed/simple;
	bh=C+zt1LD+w6sizbaiHQspSDMCW403HSXmPa5Kir9kF7A=;
	h=To:Subject:From:Message-Id:Date; b=CVGjDwjmgc8uWpmNjjgsuD4M+nxix8/jXOuQQQJvdn0a13C3CGx0vnvIduFJ7ixhzUEw+e6b/g0IS8D/aUCbEJ1mONmgtll9L2gpkC7UPzWSHOBeDZv0X+fErJalFIdS0veJn3KKLChbeWz2soX+IsZKSAOYweZF8wxqS3brr9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eu4ZQpNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eu4ZQpNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12FAC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771238093;
	bh=C+zt1LD+w6sizbaiHQspSDMCW403HSXmPa5Kir9kF7A=;
	h=To:Subject:From:Date:From;
	b=eu4ZQpNe7n7QFgKk5wnOetKHLB118/WLxYQjrtfOfaS0brsAre0pBfUPDaPzHFO16
	 AJ4b7IDypMuY7hJBtcSSKx1MLJELMPkaB2/i03f5XBJxzrZubJoTtEY+ukWk6PJfNu
	 Zev+OWahAsfDCO/MdwCmFN6UOITOxs+6kgV/jgGhzTVHs9bUNUXsNSnge11iHqnjHI
	 7jp5nWSreOmB67RxTrrbaWW9XGnAnQPyHHGFPtTqyyuHG5Duq7ff9uSphXGsJ3IfY5
	 Z7pMa4I8R2DQqNtoxAdLx4O9Xnnc3TId2kiWm8UeO393qw6ASKA3q0ddx4OmnmQ4nD
	 MeJ+Q2HZsx4aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C824E7BD88
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123809363.4210.1678023008103371754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 784924605ccb997b94413548f624bac7a2e4cae08946cb146ae19d68ff0cf9d7
Date: Mon, 16 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771238093
