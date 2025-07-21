Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0608121C9E9
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753086594; cv=none; b=rm2K1U08Cpw86xIlVoQgVoBXP68H9r6IuCAOQuteK+tzHyBy9eAGdP8dQF13E1g6onR9PFI3tqwlNqkLDAFgfYwhKDx65CYv90PXX5VKxiqLVWAeySmYtw5TmMwayygzU+I2g6blzTyT9577imLjof8leL7Ne8uXvNUT2YMEnyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753086594; c=relaxed/simple;
	bh=s64i3RE6i9xSDRUuHR4qdzHpCCbHQ//HoP6QSLxSeGQ=;
	h=To:Subject:From:Message-Id:Date; b=kaworXGDLEe+GmpDKIbzj7nj73NM+gB/2EXDSwe/cYvCKQCg0uGl8++2pgBQJnJcYhU4mkrOa/fbQb4CTraXDruebnhd54XDk2CsuvOGRQmsU0RXeobkHYFTGnYMg8YVpkzQFoJM6IfZpmViEks+9E2i8A30Pdm24KWGrrmyvP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEFfGtz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEFfGtz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A024EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753086593;
	bh=s64i3RE6i9xSDRUuHR4qdzHpCCbHQ//HoP6QSLxSeGQ=;
	h=To:Subject:From:Date:From;
	b=ZEFfGtz2FCQJ7XQYTn1jk6f3MUr+nz+RJEFcbV6rZ2nZHKKKtKSWVdCi8KObPv9Al
	 SYUFmZdFBjzQmJ13sJfC0pMinAydKR9dA7m3V+11Rpn7MVVQ+M3UYfKLvhX4OocdOp
	 CB/cBkDghFdtM3ry0anD1ldeBSAEWKZLnUF68MZLLGmH9xDEmFIymhx9wX7Dgifp8U
	 tHScm0nDW/MjDQXzXxbryKbDUIJYI88uZYUKBOBsG8TEr+WFa6nJneJMjuNr3U1DdW
	 pH9I+YPcjH0w8cRGjevs2WX/Pav/hle7CL8bl0fYQG8lT63AU5Hc6W2/lH/h5mGrjL
	 a3mT/jexnBuYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F6C87FC5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175308659358.29614.16410842349524678909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd3302c78df758f33fe171686bb9c156de1135b3b36c8d520f54863a437a798
Date: Mon, 21 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753086593
