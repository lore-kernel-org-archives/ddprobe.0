Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA883597E
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740943734; cv=none; b=nlBVh+u3tZ5fI31sEc6rqt5hgm4zaaA2P5mVCBq+dD5O6hoS8AnRcfgYUHdoTMr75Jw4EelKA8LNyXvh7jx00anvX1JH2K84E2gfRM+fXNfueAsVc7aDU2rZBVQHXFfmz6kc2ANVaBpIvJSunXtVGHu0i3YMp/W7gJ40/d2gCpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740943734; c=relaxed/simple;
	bh=KVjh3cTVGH0BtO3ZBooos1CsKIjaR2kuSvSsfMcuOSA=;
	h=To:Subject:From:Message-Id:Date; b=AQT/m38wqd4NsE13ATbK0fbRsApNkSnI7KPJJUWHToRKSePm8hCzxEh7XfmHBbNFGgD0SUw3OnTCxkwW/JfHHyphkLTGRpkxWl3zOfUGdl5xwOmCQxWo5h+zeUeNDKKjn3XN8tj7Nx5yuNUzAEpItBnrY+kVsUNJeQRJEXgA4gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDkN/im6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDkN/im6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF924C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740943733;
	bh=KVjh3cTVGH0BtO3ZBooos1CsKIjaR2kuSvSsfMcuOSA=;
	h=To:Subject:From:Date:From;
	b=XDkN/im6qgeVJ6ZG6h9j3gKCwcI+9xRR53PWSnLjRNhrragL7ibSx9bFaRzipaJHs
	 qb5wihC+t2383ebr6DYKjqCPRmoVDR+xHSBhFaNbQF4edz50y71/sQHv6H9IJRybLR
	 FpdG9RomeH9JLn9TOrDYKJsr0fufmu0tafEpubVxyYo7ragp1xCUudMQS/S4cPu50N
	 90xXRSQa7agcp9TDYISTOJGebPztTEgmKwFpj9SwMUSxjdJ4N5Gnwfmc61nqb1zX4S
	 YhHf4D4OBtQK+dy9fZ3YybzNdBEVWOlKALZqNyAL7n6PnYYo6TBSIrv1Q/NqR+MgZz
	 1JCbIWH+pU/3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3941C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174094373361.14261.1700342647125993683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39baa503cbc1892e01f948a240e81c62929d77d189f69bb1515687025e3b3fa3
Date: Sun, 02 Mar 2025 19:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740943733
