Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131E12206A8
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736437554; cv=none; b=t2zS7zWz8vtJV2Z5Jsenz2yhmMJLRlHDYJk+zMUwBqtgH4McNh0JIt4MzVUxGIy93bWyRbeMq5vpXKhRyLZ89vWPeQ+N3kTK7cajYktxTv3um0IIJIJWeNm0m1lfT4ZHuZ/MRZIGuZBwEnCtswj7dW2pbn/xlGNlA1Vt5SzsPTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736437554; c=relaxed/simple;
	bh=/dUIjZ4yH07zvRgjcExGjoljCNd28nZzJ+Ouz4wazA4=;
	h=To:Subject:From:Message-Id:Date; b=YnDlMuMm5kQqG121pnE1sHTIU1KOcUhDivDze5gCYUeO/T6PKv0UqQtguobgUEHxgCN2JbKmUEpB47WxaUY2JW+m+IR+EqiUUQxyhdA0i10mltJyiOR5+FGXSYDAEL1etPOTbEitE5pBb8zGfw4tCy9KZ8liIkcbqYhNjOs1WSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbdVtdyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbdVtdyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26FBC4CED6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736437553;
	bh=/dUIjZ4yH07zvRgjcExGjoljCNd28nZzJ+Ouz4wazA4=;
	h=To:Subject:From:Date:From;
	b=UbdVtdyqjonrSSGiz8xUr3Q3LwLr1Vnt/nJg3R4q6dWLH5AeYik8WRo1OcG7h3iaC
	 LrUgjc6jieh5HCgjx/m77ASSOBKpjIoxT6xY+aFoY4IVdQ+5fhYxRQoVBguPnPKQ7F
	 Havj3bQo3hucz9hjEFfTkdw/bmGiKzQ4KA29WuB8V1MHU8MdOsz3rhkBMh65aqWKPh
	 jDvZdrW6mm748onNqvj0gtHQGkdw98+irQN0xFs1XjB0mLEUzBjFMZ3uaqJzoWHGY7
	 o7sUFxRsSOxAxm1aSl6CvW97rCWCRFOcq72V4CSRHuY5CG5LS4pfGKxeqIfiTEcATC
	 6DepdlBrp8Y+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9470FE77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173643755359.22131.335643583495865859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8540c69be5e263bf6dadcb70bcb1d315e51bf81e4173ece1c35653a951d0782c
Date: Thu, 09 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736437553
