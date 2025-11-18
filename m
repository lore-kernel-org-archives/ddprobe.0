Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A7E034EF1E
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763464915; cv=none; b=ubC8hce605ZmoUzvyrv1mKTEVScj+oEZKK/zAdAx0bufSwp2H+MTTN6Tb6Q7F7dvx43ul0sFR5vrHxmpOkAxXNgf3zz/w/vhmglYf6b5MWBTdqdGbBa1MfTafrlhkW9HvPvvB9l6GckmL70VGm1htEUGigKCNz0LWAwDyR17ZEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763464915; c=relaxed/simple;
	bh=rQXVTPoKewbM7bWq8u1vVaT/rq1qxx+QE147Uw04su8=;
	h=To:Subject:From:Message-Id:Date; b=RFMPJqWngNbDzOnf6dR/HO56Pep95MoHqmNxeumFsQrf6ewACaRJB2XSYF5lLKMvvVgNyiNhsTWxaFSUCqpwlljUoA3w+n4fEiQ0I5byd1btOil8NalSmERfqvvCjXD0/moyUTnwS2k2+aNpds/rI9Mw6PxGwcPmU75UYGyD9qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnvC0CRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnvC0CRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08BBAC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763464914;
	bh=rQXVTPoKewbM7bWq8u1vVaT/rq1qxx+QE147Uw04su8=;
	h=To:Subject:From:Date:From;
	b=dnvC0CRiHL0ESxYKMqPJ05GEhMp37v1MBjnIeDA9wAo3BmsbnSBpgjEpiilv6dhT+
	 iqg9G+Y+apSe+Bti6VKwd5inzmxb//fp+ZtPNHG35W9mLzu++H1ullyw9CRhRAwSSb
	 AltjqXgvW0fOkXAKrfhu5MSTt51xdjf8BSXfpk2SLiQDwikdyU+cyGgOEUDoXwJsb5
	 IOZ/vhjmmJbJk4jL7d8QsO8DG/Txo0c0ghgUN5q2suU1mqEjhtS0PetegjPcULl43/
	 4HbwXe4AmAYDlTPm6d2+d0gFijg/MgUDWclhTOhcx381/ykx8InlwKkES8T3E5CVS1
	 mPI8ciFmgor1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFB0CED606
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346491358.20244.9733429429585857685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b244d7aab2a89db72e78aa1177f6edf9185ed158eb5b4a53e7113529d96ae08
Date: Tue, 18 Nov 2025 11:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763464913
