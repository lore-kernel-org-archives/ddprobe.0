Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41815434402
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783694914; cv=none; b=upRlxWb3+ToEJObbZ0L5u8ThK0XvtyypENjBjJtAN+ezAEkDqo2htO5YLt1C62BgSwuAsfQHxYO7mnzyx4s8cXjX24nE9YYkt0S5RXY+vxXLemQ5Gps1k9AmnJVMfE7MKOHGPmEYDzYePDG6WxhlVIUJninrj754PylMDKa0vAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783694914; c=relaxed/simple;
	bh=Ju4a/Ty3cKcEXkNPN3IADioxeI/NEU3Fgvg8AH/xIY4=;
	h=To:Subject:From:Message-Id:Date; b=e1kKl5shpe1tvU7ilsfUMc8tRaNSmp3GFOvfSlMnc5IQdoyFP1HEVvTl9gqIX3xXkLe45iOyZF1DBMgnlJqiVxFF0Lp0a2tQ8/qAmf7jGllKfoZTZA3OfJdy94b2D39zEyc7s56FtHokhF1yu8vWhgsfeGLvydaX0EFD2oOFi28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMz79WHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMz79WHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9896C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783694913;
	bh=Ju4a/Ty3cKcEXkNPN3IADioxeI/NEU3Fgvg8AH/xIY4=;
	h=To:Subject:From:Date:From;
	b=nMz79WHkXq93wiLJBdsaXbHITtEkHCfoRiYH6TkCTXNmvKzZOYOTfX1VKAnQBn33M
	 fqbmvffVFtbRdI5YnWzKzrAdZz4tnqWTRE+E3pFl2Tg2n9IgxPHnl6tsgM8RFYKw4g
	 aTV2S4Nx7PStQNcjRKA3shjJ9koqjWyFeE0tPmmitRfpGDZU9mymIaIqHW/3tBK/Ns
	 pVYhAvF/SqGEOUx4kYStrBcM5/UShFjEKxafyGnNI0QNeTACymnXkGcdEXEW2Unjts
	 xjGq8TLpBl6rgviUZMwrPzvBXtTOxciSywS7IyyTPpbs5uyhoC7PFmrAfQUwwdUWFU
	 ztaCOPTvdgn5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A935DC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178369491368.8150.4511637448965061281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9ee6e8115ffcdf774000092e8b9d90f084dd76d5b8b94fb8895324d9e14cc52
Date: Fri, 10 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783694913
