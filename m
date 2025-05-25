Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FA828EB
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748152194; cv=none; b=q3x90pwJ7jfdldlSt9gc82iE4Ol+jW5EFA//nO7DPDCdKGQN8od/Hss2uZoz0Rdvx8Tbe8qXkOEg5yxgI71Bd9lLlaJP25KF0P3cTeY/3DEuUJZn32KFiqD2CWC9HGh/YXe7KKzomwsG/QcdFIt8fGzdQVRehtpAKmEBrbEkkvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748152194; c=relaxed/simple;
	bh=/I+Zgs9tVtBiw+5YnrjZa4rj5UR0LrElj8wr+6Rro5A=;
	h=To:Subject:From:Message-Id:Date; b=tEZn3Jh9MA/aiAahkgY624yr34jGprZtHgCWgEaNNTDjz/5qIljZiOU4aPxyg8aXJqXBTu0lqgt+irZi81kaq2CI4V3E+kDwzDhcilDz3YE7iQZde6kzNz/xG+HFPCqzYhr5SSI40EOhH02ZM8xjnjKgTi21Cc+pVM3cyMhczvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnYYaoPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnYYaoPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8683C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748152193;
	bh=/I+Zgs9tVtBiw+5YnrjZa4rj5UR0LrElj8wr+6Rro5A=;
	h=To:Subject:From:Date:From;
	b=BnYYaoPHtpEi5GbubA36GkxwAMLU+I5itx749483AughJhFgKnOQEnxEnpCVLjp1k
	 C0B3miO8nkWpADwGvAZHMgkJDCPcR7vIkTnTrpadRHWP748yhuoVaYk8wvdlGFX6KY
	 wLo666KJkoaaYUhUJvjrq8Smg2HXHBo/2934kxm+levnGZA2dZOgm3egSW9mrqYrYt
	 QAYBwbyGgiN6mVivifnzID3FbQBvE4n/dx/w9nyF1y9aK2ivUT2NyY+3I25ipdmcuH
	 +kPQgIjLDPlWB5QLi42OHNmhM9Iheje4Yl2w4MnWE3Lnko7DVrYg8pLHOwwBB9z/MC
	 5XJY9naoZUBgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959CDC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174815219357.30553.4255490072922271258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3313f440fe5bd4f229032a8ce24b12d82b8f858cd811cc4d2eddf1f558ad00b
Date: Sun, 25 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748152193
