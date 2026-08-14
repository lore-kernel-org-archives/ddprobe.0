Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C0E1B4F0A
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786723234; cv=none; b=XRCm7Q5nJjTqyKM4thziKjsO/yHa1D7CJWBgi2wrEp1cRkwrQwYDggoWxIQ6nQMibJ6eprXzj2iCCupkU/UTEzw/Xnsi9p2hTq/l6MizodCKK+HgOuIGEwURJLQ+CusbmagrjKoMAXPyP+QEnNt5u8Ur4IN+v1sNW+Ew6DW+ePg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786723234; c=relaxed/simple;
	bh=zkVq9spPsXgIQWnME8IimaOpy9qNMwh/eOblhkSSy0k=;
	h=To:Subject:From:Message-Id:Date; b=roBS0t3Lxk53Y9i37E9j3eAdswU2aOG8sxXU+uvbVjypAeeRSKK3icZKjDuULGZWBkDmIu5uX9JNVaNI/A4KLFLDIux/f6DANkhB6Tw/cQbLTEajUqhhPtyK1AcFGjhU+ZvKMrcox25iKCwW9SwF5VLKm85bacaa3UZRpin2NY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5ZJRijT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5ZJRijT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1716C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786723233;
	bh=zkVq9spPsXgIQWnME8IimaOpy9qNMwh/eOblhkSSy0k=;
	h=To:Subject:From:Date:From;
	b=e5ZJRijTGWAPiVSYg3fsfK0PvEfDH1KXkco5xtMUEaQaxa+Qwm3RNrt8VA0HAJuTq
	 9lw25gzA0rjUyD94bWiNI5my1Ng4ghPOiriKkjFjObJkU2yfmw8GDQfmOgqSFkFGmz
	 3wn/cH+qascu5NiJPSL+gS3Z9SKxrA1GvZkTQi5DFk95JFzO6/Cr0u59B7YN4ynrfN
	 bBr+YuACiPAUAE/nQPeBJyW+Qqgyg8y0f0aKENgt1fnXIzWEwXToWfgdJOZg07quKj
	 cElMQaDYF2LCLzuIMAPw5PDmgeLQET/d9Xk85Z/SxBn2KrirSiSdioVMAp13CKILog
	 sfZ0ELHV5z4EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB07CC5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672323368.18036.12512988277636155884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d6cc53b0fd6a91aab150e08f52f23fd38d6dded9d0f7aaf290e225bcc59760
Date: Fri, 14 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786723233
