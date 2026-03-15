Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212C1286A9
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773536094; cv=none; b=ipUf5p6U3fYLI9oSqCGfchHveQvHaJJqRQkQlW9AIq7bjPlnRsuNEgViPNMdHNVlAvzvl1fEJX1abArR0koCesNzNg/BwpE8n7dtwENX0gh8UMXvlOXF3BWPIC0seCLnLZpeSFimvIzsUpwT2vzAj+8Z7YBKbvBgZ08tHAIfRGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773536094; c=relaxed/simple;
	bh=UqCAsV/NQCfCkgflcb38m13/yOTrN2mdud1bQHc8RUg=;
	h=To:Subject:From:Message-Id:Date; b=IkMo1anvQfEyL1L4ki1obN3sPmNfRfHJgq2YHaqNaViLwZe9b9nwYtv0hEbDEY8Bl26iKpiT6GInb15ByTYsTrvvSdjbsY4NpQDt7/kLlKbEnSsplWVaeNXcvGF2r5KrDtgpDt78VZDGcNG22eXuBF9GeB+6EiY4FNve+bhB2ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ru8faotK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ru8faotK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA07EC116C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773536093;
	bh=UqCAsV/NQCfCkgflcb38m13/yOTrN2mdud1bQHc8RUg=;
	h=To:Subject:From:Date:From;
	b=Ru8faotKr08DbsGVnhi3JnPpYQi3nQemIO/4NF3iu7qQ+DmW+AOLFNeO8MGQn5oGk
	 9BKOHKgKLBm37Jx8Sy4BmmiX5MQ4ZfGsuNZZ9TZGMMX7iirsNGX3N1q0CMvobHZkVP
	 dCn+iYnmT8Wmv3WFUAEhoh/MsdU7L/7duf+zW+SQ0N2t4IhItCdQuGq0cDm1WyU7Fm
	 mv0e+LogeeanVZeoX8QH5l64HK3SQ0Y9MO7TJomGNLntCQsBNkKSSVxD2/WMyKd8un
	 Yve2V6ep75u9MJcCvFEV/d7UNp867vUe3lfybIXv7upCRSOsyI32jolzsyALUcyRr8
	 25FoKBZAGGypg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9722510854AA
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353609358.23411.16368937993992109225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 446ca15c55e6c377ac7f08eba9b4bfbfbb0a81522f778288fca29a8cc259d1a8
Date: Sun, 15 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773536093
