Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20772318EC7
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779316834; cv=none; b=lV/E6KBML1kTg/FuGjKrs8fLNVBjjWTwxxGDS/FLZSU9qY+1v2jtPny1aJ751OTSjmsUp1Vvanu0k+4J81EJDdNKLb/XLwl8VUb00G9JtiR1R3UY1966wnmmyy9qFCwNDqEdje7ft7/QbRC3nFW2yhF9TSIDrQzTHfpy73z5sl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779316834; c=relaxed/simple;
	bh=pcxjknqUBGHhX/4IS3B6H84Yrsy6sWdLuL50zQ2/59Y=;
	h=To:Subject:From:Message-Id:Date; b=m68491zhFNcT8a1tJytQxsRrwAlpHV6bU9ZU/062GE1FmG+Wpk/FkBRnNqtIfmYrviRQlajlRnk25b76ptuJu9NRWpWq0dduyGMlHqwPTseO03+p5z4gp9tV/PhynZT26t6wdi9UwkBw2NSfeb5izhSg7+tGEEE3rnupco/ZfqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drb1VioL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drb1VioL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A67C2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779316833;
	bh=pcxjknqUBGHhX/4IS3B6H84Yrsy6sWdLuL50zQ2/59Y=;
	h=To:Subject:From:Date:From;
	b=drb1VioLb6iyTEJ7nuR//tTSrHKcTAYznLfz77L6ZiF3PqyF0FCS2/pw8cYfWcn15
	 zAaBNZaixYdnFHy2PbcFoOr7RjUjoi/pwwGCj1uinI5EA9gA9dWG5jEgzjwCujOLld
	 CTCKcKZl9wg811jval4wSHwbEQMDBIwu+DGGYsL6jCrXTokCOaDAdgQtRGTUs+voEx
	 y24HlX7KCvy1a24jLV4UvJLUWdCKEXnx52XjeoOA3Q8vSY0pl5VXCz6OZCwN0CeyWG
	 MKxCqm8O5Zhg5j8ThonJ8lroDIS38cTQXwkzhvV79u6BR4EtykvCnWTo9YOlmA9iXi
	 brqTXMe79s0jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66A5CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931683373.5294.5489259140679112587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e979c85b8f478c27700293b263f5a85f3be885edd57c25f85c39da72656bb2ba
Date: Wed, 20 May 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779316833
