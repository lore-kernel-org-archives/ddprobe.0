Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2654A2571DE
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759421994; cv=none; b=qw7Ej4DhF4JuQh0rHMxereIJtYjc04eFctKIUdRKiHiHcFffUexjgXXmDSFpJGbOsW9e9JDjjDtrGJc7OQcxzTxUkLb40ds3XMufP+bnGZcXfJLvFP6Cp4oVwU3c7J5Hx5b8CV1NIZhHgoMIDYwUF9VK/Achqtg386xtry7KigI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759421994; c=relaxed/simple;
	bh=fvMHa5zKywopIRm+aumEhL+5DzTUvkPWO1FyIxo4xhE=;
	h=To:Subject:From:Message-Id:Date; b=J9qFTtVXtIZ9zGxf2r09OEDNQ4RSyceA7nk3NXW8eui/wrX2Kw9B3uIYgslCODZBonhaekencACi+L3AzcpirF2Dh0Rx3xcfoe9VnG2QspGnx3v2lI5IBpqDtwA49hFYodfDqWOFEbHrKStrCDNkxDiGtTULj8xLCW1pk3rhkak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcQRhpIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcQRhpIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7469C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759421993;
	bh=fvMHa5zKywopIRm+aumEhL+5DzTUvkPWO1FyIxo4xhE=;
	h=To:Subject:From:Date:From;
	b=BcQRhpImbUVBpFFfOYikrDh/kYvjwiWSlAFOwG+AK0Q3f8KVoyf8Q1z5VQbFaQA4I
	 md391pGLzTw+JHb1pULlOkiOiNJt0fRcHEb2HcaWRLpvlsTvA9F104HNsLpihLFFhk
	 5FXnjd0dkINpHcxfKs1pysZjw1iyzDz9rFQzTnPCXjKFwwSmxlyWh9grDpkdxdtgqh
	 w7Fge2GSCeJVNni5MbVZwDxGfYX3F+nC9T3PvnYG1Xb9h4aMVVKxrJZRpUlqM1B56W
	 /i3NkKjYZtMQgI1u4iCtPudrsdQZA+EiBrOhSSUY2wZj7dbo8GZPkYQ6yGJmzGyqHg
	 gJCwra4PvEYQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96512CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942199360.21652.3313190598192023674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20b237a86b69199fdf152d7f26132619f3f3e8042ab847928fd4300fcaac280
Date: Thu, 02 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759421993
