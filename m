Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E96267729
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765497174; cv=none; b=XFUb1TEPizygGEiBEU3BK3RA69ccAk6zG29+eP6Pv/HKtbiP1A3CI5aH7bVGkj/9uAbBGnFdM8Ukge1la+uDhY2FbbK1725gVXBZidVLzUwLRXSPrqrfRNA5pEx8ejAtYTTPoQ6k9Kf27lUtnB39UunjVNwb/zBx7BErszmt3Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765497174; c=relaxed/simple;
	bh=Bfq8tEEbr06cVFQx5aQReQJ1U/nr3XL6uho1cH8Lwhk=;
	h=To:Subject:From:Message-Id:Date; b=tq9l8ODHnd59UiMYJiagEPKED7wu7I3FZ57v6HotLQ8d6HRUKBLCYOUUXZrGeFL62J+BRqUzXSNMgm7C3P4DpYyVQ3h9OA0MUAEt7PVExroxaNAFX+Nqr9gxGAYE7vqgEfjHl5Qf4R+Crd24xh2CriLensAnKwioN1UdVlPIGjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hofRbgZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hofRbgZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F09C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765497173;
	bh=Bfq8tEEbr06cVFQx5aQReQJ1U/nr3XL6uho1cH8Lwhk=;
	h=To:Subject:From:Date:From;
	b=hofRbgZKpKlgo+ZZWR1vj7tfFldS2T9YDeEDNtRtopsthwURfSTpvylXLTQtOdB0s
	 QNMx5qobiTSBk1PhDmi6yZn7W1FMx1PdxrKrVoJf+8n+G9RwtzgP4v4DTVj6qDIqyK
	 HJ3ResXHiV/9hWuaGiQRLPYreMv7ObL5WJvR1xhCFczvMjNIvAIIHiYpe40MGyntvP
	 MWofIj652LuGXnG/VB6G7NG0GsLIxdccEOEI+tfWl8KlP7ktxuiUt+bJFvQpgXf8vn
	 llbGqQ8VoyhsBzqKT6YFYWL0iyjn+UooQY0UvYW2OeJZIUE0QmxgGKjRL5CIUWpVcI
	 TYediF/GS0BgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C88D4335B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176549717364.13293.13443720184084900726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 839a6ffdb14fc4bc94fee6ab039219cd91d694bc264258a1c7e96e98205f9b1a
Date: Thu, 11 Dec 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765497173
