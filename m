Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F1F64A
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722929154; cv=none; b=bGpe4mm2oFezS/HZzObGvUOCgSbEJxsfrSQ99HnA1Tkb2d73yDwRBfYoNcOszXkzAKX/VUJa9wrVE172fzwE4hbqTzzsAdqrxcFh9Efu4BByCb0AuV+Azrlk4iH43nOYZBE9IoBoLSvxJFMa6vu/1YNUjZsxiS4I7dq7NiD50F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722929154; c=relaxed/simple;
	bh=j6Rs1ZvVFpak6CucMltoaLO7Iij0R8HnvaiqxYOnmMY=;
	h=To:Subject:From:Message-Id:Date; b=AG2+1nL3/kJl7l4Op5HetZQHFOUghlonr8B59joso6+AxAas/R6OrK4xkTtf752jH2jyxsVtgtdg38A8yW8k3NhGzXnRdYZdfaXBn6ccBIj09hr3sl1FaZvMch9pqzOJ6gqtgJSTz0bRKXH4Ei99zqvKmco5j8xzYvWMJXzzs2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRBIfXMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRBIfXMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FC7C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722929153;
	bh=j6Rs1ZvVFpak6CucMltoaLO7Iij0R8HnvaiqxYOnmMY=;
	h=To:Subject:From:Date:From;
	b=qRBIfXMk3BM6UcdJIGQLdBrYMPBdb6xt4GEwiALi6DMwaGBUUcl6jZzhckCwQpRCa
	 xm0K58Uo40iPDhvu6sWA6KsfcQtQNhWd+9qUbQEZRO+URZbPPKdhoPpJiKaZTJgwKk
	 3CBxTJezYLVJ5e+dax/iH7BeSAgIRHUp9EhzYEZe1Y9zNWl0hESWRoBoyL0qRPR7gM
	 wvzAfv5Wpy/C8OFo9t+ea0k9Ml9psCS4rnb3ZS6brJC70VAPq0ToyWMKHT+nMNJJ/w
	 0KicIW8cam+0SWyCqxyEQku+VACN7W2Id0x7ftu3gtwFtfrZUgIvc4BqzZWvQ6CMty
	 BGMdjQBF4UyjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90579C3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172292915358.20397.11147271989485196143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7878e525dc2b4e75fd50c6a5018556d9d6257d86c90ad8f2e167af1a7b332cd
Date: Tue, 06 Aug 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722929153
