Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755451A6834
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777595854; cv=none; b=ir74i+I7c7kDJXw/nvoUe1waueKQVYHfC1UUSLcimMXBra1W3IuEo5F3AOJWrvmwJHkqwAO/Gt5PKWdXof2DGof83vOERXO0nA2KcWb/MYAimwKIHCsfcGMq2RejuH53RwA2ULK+E+kXjoYafuV27XX13INfdzF+AT1acMIe7uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777595854; c=relaxed/simple;
	bh=JkERCSfFgAmttv/AVayevyOMUnimeOiXvotGAfGnTMI=;
	h=To:Subject:From:Message-Id:Date; b=fjGPzw5GdY55AWzfO3znGDpfZ9k3QpX7/tOpJEU5Dw7CQ1DwDMYMPaH3N18+LG7GsGylvtHlQyi5t/InQuJDOFAEr9fqm1k913AkO5iD2uIsJK9Eh5yMFBBXpAvsaTgp81vBbixPGSpxCYr7OTRpCG6/ibe0e79JcRYxDjYEzvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmp2NXnU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmp2NXnU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2390C2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777595853;
	bh=JkERCSfFgAmttv/AVayevyOMUnimeOiXvotGAfGnTMI=;
	h=To:Subject:From:Date:From;
	b=lmp2NXnUcIB2tqvZSd0joR+QcZDbjvqx3vfxCAqLiBWn0gim5thKOjel0nLaTgdTR
	 /ogDf/lAUFk6SnMUVRqW6fd9sJrpuy5HBlL6pDykj0IWZt+4tTjRbREgbqjjZKEwql
	 0TiPK2F/vZj91KXIeCSoq8tKVtVjqJ8Lfz/FVDP1xSr5ZcUtXkNf4wjlpOrfb5DKrf
	 WkIvDIXwe7QnDlw1y7e6AkuycrYtRIXu9yaEiSVDFwJlDylnMu36zg1vQzh++rF/sf
	 cdXHVgCY/q3vLb8AwVKRvfqvY+YdPwkYAR6grFYpnywqvW5fUeMhtmtkSQ5YlSW4C3
	 NIwXKGhSesd4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA50FF886F
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177759585368.27417.1821605823066201113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43655f8ee08b894f4fbdaac877ec56fa1ddf0eacb17315ef7350a3a0e6a9691a
Date: Fri, 01 May 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777595853
