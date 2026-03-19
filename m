Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F8D3E7163
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773938694; cv=none; b=tXIU0esJU48Adn+aKHhiWt8BnjyR+VmE3LeyqsQjgwDqNc7gsZcz5AY1DxA7tuan1orb6j0wAq28tcIAFuibqIIF/vb9Bk9isi1sc8x83en1b8yGmx4w7/Ajtdg5XMe3R97P8EHxSDrf04kgmW/oxYQuntJGcBsvn9+YtVWsjPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773938694; c=relaxed/simple;
	bh=/9DbXBHBruSX0+vui+5hP7v8h9BmD+7KTSOsH4EIdxY=;
	h=To:Subject:From:Message-Id:Date; b=C7LRFM1v/2B1qXdjwnUaSE7uXxET5STuw0jZ0LRx5RSlIGRVPtjcKJJzYduwA8023RFBdql8ll8hXyXuIo/lqqAneQU+cNSEyz25Mrs7K7h3sNUZIc3sW+LvtRgb256I4rbE16KavOyGIlS/v23RJhhwyFSLNDVXy0di906PAeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRxjGOI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRxjGOI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA54DC19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773938693;
	bh=/9DbXBHBruSX0+vui+5hP7v8h9BmD+7KTSOsH4EIdxY=;
	h=To:Subject:From:Date:From;
	b=ZRxjGOI8LRcibxqb82MT1Ul+Apqq9zpUO0HAh7DiwhXgY0S4tD0th2bzu7dxdopa5
	 RRHbr2ArD7Lcrc6BdVQhl9OZ8XmMek43x3/Kb1icNUGVZvwxOVZPvYVXlx3CgACo6f
	 HEsic0ukKg3G5Y/vm9PGZr6I51bar18G4iYldpTsdPZa8Iw4SmcAMjubRtBKbJzxNc
	 p7n9dCHI4uVetGLXMmO/VMfV3LxodbMQZAgmoaOX4vGIYpduy2/L6Pn7mwbHAQ18Cj
	 YEwVx/388hm/NEATWupT98Z6sLDoPZJlr02MFA5sXBp+2tTxiNV30PQ3WvGHJ8+bJc
	 5i7jAxAY5udeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916091090255
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177393869358.3560.9754392131689792111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9caae1c17dbc35dfae0f13df209b36f524914afb166d314031f13756f4ebefa6
Date: Thu, 19 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773938693
