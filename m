Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FA831F98B
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777302454; cv=none; b=C4xgvgt47oat1Gnq3ROi8XTZL2H1YIhx/QgCT2tVGffj1eUJrz41lnc4kBUGg5wmnvV5mTY/isjL8T2zrTsIayqalXTByMCtp4S+zn0i8kNmlV1bOvd0dcMoWUdb2bpSSIhhsfFh9sf6UxVAaOO6C421dBLQe49LudRBrPTS1cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777302454; c=relaxed/simple;
	bh=wFxUmA4q7Fi9LIVHzkiMBRtoPixwGmxSNXA4r7Q9JbI=;
	h=To:Subject:From:Message-Id:Date; b=a1H1XP2AMxCHD1/2BXbqcnVzyQWQ9yuY24uMiWsySZg4eZlBqWK/r7TC5e4yW7oeqP7lr64bxF06jV67s4LHTk6NP5DvL+6W5BrSVOCProCp2h6Tytzgf4SLzMM1cp+4ZOb/rSP4Jnl7yXIp22vZlfbwrdSuAtWEK6/JsUXHxTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMPAcveV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMPAcveV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFB3C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777302453;
	bh=wFxUmA4q7Fi9LIVHzkiMBRtoPixwGmxSNXA4r7Q9JbI=;
	h=To:Subject:From:Date:From;
	b=PMPAcveVQtU4kNoMvfp8UZxeGXtZT7kSfnWxu0AkBU8E7/43yyyVLLNkZr79ZFGNJ
	 Po18R3uBcewL7FbOwZAfBUjK6Q95pWbj8WxMFPSjgm3oMpOvwfbP9XIp39UZU40ZUd
	 XR6VXmjqBUBu1k881IRcBQQGuwt2xxnccvYEOYLD86vEWGeUK2z0+Zy3PGzgphovj2
	 OC35DxOWMNojVVp9kp1dZE7++UqxqPfO0IsU1uHTn2kMliktArx3ToEOECieqNvtAF
	 qDnJeUme1CqLCYDc+UEDQbjA3AumP/0T6MSnxC5DEOBnPtfu5WnzG3IYJZ3AFhM9IU
	 Q518eV27RYXYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B8DFF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730245368.24759.8523672878932124939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4791070b1330ceac3a7842845d988ffe2ad4b489ec845dee64023637d974e912
Date: Mon, 27 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777302453
