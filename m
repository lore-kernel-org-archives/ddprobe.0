Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12366311592
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756465794; cv=none; b=VoFf1RzZZ9G2hR5XFyzoNZ3Uy7WStla/DZsktycJVjvtXL14f3eX0ZPq+3qkJyLFRY/Bihu68ICGRaQuZjd51zIOzt90X/U3VP0niX/UoiEBWaLlYs9RE+VzJvFYleFtpcwOgj+sdBn9qZTQFEfeRSESlF/TTARRfxYE587gqfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756465794; c=relaxed/simple;
	bh=aXNiXj2xYyK2DZDb15V08Il7Ua01g50Q/jcb2ZchfBs=;
	h=To:Subject:From:Message-Id:Date; b=NJ7FpG0D1CYoqhTjBtUX5ffuNFtOe4nUoOiek4rvO+/qSMuypEvlCFLiPGYkBc8daTpeBfvJwsdZxUGR3OgAA6QhbZrvS5Kl4W56o2Ed4DnmtJiI42eySO/XrxRyyZqUcjDHvE1zlIafSnra0A9S071MJxT7NayeNWMkR7LQKJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOQwowuQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOQwowuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D71FC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756465793;
	bh=aXNiXj2xYyK2DZDb15V08Il7Ua01g50Q/jcb2ZchfBs=;
	h=To:Subject:From:Date:From;
	b=GOQwowuQb7tqVm84rwI9uQOrLgB4trSD8x270MMzfa93B+EtssPdQWFQ8ktluq6Ti
	 ChZRyaNJEhMPyNULJ09hIh3dQ8RpTrq9wj0dq6nGksuEpHlppgIiwGzCL2epsmi0HO
	 7ywZ2r6ZtWQk/iU+WhILTcmQ3hEpjFSpnv1F6eczpwrOOMEBnw7HPKH3BnXaZFyvrR
	 Na4zYdwBHxUjT9lbYoIYvJxzKE/W54vTNXZxvFiQs+r+kZLj++tHizLgG9KiUsXxr7
	 WFwHbmjXJXNTgaQ8O+5bu3+iO6HPlhL0eSvouPxs7oWjeYozf/02odESfH4hkFCLM7
	 z54d9Lc1A90xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E2CA0FF7
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646579357.19290.1227347647828831852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2879e33854487d0889001b345e20355042427df6fb424a8b068336e43f004c
Date: Fri, 29 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756465793
