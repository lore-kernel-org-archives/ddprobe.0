Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CAA737FF71
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785653434; cv=none; b=hZZaRBs8SY/j1m88+feJQeDmvQ1HXsrwqyh+ywCRf27FDbix07Z9v3WGTK5owrsBAvqqZ8dzWrShlLUv4oBlcoZTRpY2gXmQWj3eW0Y7hT4biLpdm2Is/IUTKCERI2fAJ0RQQ7joWwTAVBtCTaRU8hsUf2t8uMTGy9Y5zWyzmJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785653434; c=relaxed/simple;
	bh=PmWZ7btG68YRnjByJymDjDnVucAgGZ0rlov+gC8XOCA=;
	h=To:Subject:From:Message-Id:Date; b=RqqbDfZOfndFwtddr5T6KDj5DIuqmTSYBgsM/hrhyOGFrJUubAe3IhVP5MKjPrt2uDkFbirfOTT0Kf1bUK5qeXgfwjCj4eDQ+IXTDWvd0ze8kUOumvKcJ89Nq/VhTww8SoALafqtK6RrNcvYFRkNLYY+zD9FzK0lghH5OsgMxUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/AMxJMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/AMxJMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3DA3C2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785653434;
	bh=PmWZ7btG68YRnjByJymDjDnVucAgGZ0rlov+gC8XOCA=;
	h=To:Subject:From:Date:From;
	b=k/AMxJMfd6E7cKuTnwEUqVZwbYJ3O1D2oWNE9oy6ur2oDBWyzmCK8RcVoutGT7Lqg
	 O5hj7XpI0AGQdd6aS6DXtgkxVcx1HuBTRAjpsJmgAjXIbBPA582ugEUG8tOFIURWLN
	 IlmjCSBfZdOUQBRa/pKvNCgvBoa5P9y2guftfIGLXX5Z5cifbA5fqbOBmCZKMczMeT
	 VK5QGFd3FXA+YK+lD6K4R0iGcnc0bWJfwApbw3bxDuxFgO/p95ZbiwHRxc7iYEftYR
	 ZCqjUm4Emgfr/lskek5HTReObjSXpDSQ0oa4C22kmngdlW6BwvBZCvLuiBKxmpWXaF
	 QRxRTt4waVq9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A17C55173
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178565343368.12049.18271104561508782989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a13bf7a9672cb38f2a8cba33bac39121bff74c621a368b2462a1de1ed9481eca
Date: Sun, 02 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785653433
