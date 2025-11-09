Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198C24C81
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762715994; cv=none; b=dTx/LjG7vxN8l/iTUtGJrlItc1VdsJptjES0nkoCEUBGhmsnXHDt+yLfA5O2x6tyDh169FrXXjtVml1nHdRsuoIWsnmp3lZsdk6gOYVjPdysK/SJKklX83WEvZE+DwoMEJMl+ugFbZBlZUz7pBNdZpR7GlCxAwDiiUowY3pKXZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762715994; c=relaxed/simple;
	bh=y5FaTIWyPViuTIunV03+z6VwHb7qMYK3TuTH7RN1TIA=;
	h=To:Subject:From:Message-Id:Date; b=rne5Ty0XFT7T2fr4o94+SwynsSPCbEFMQrLFVLRySFShfeGEnmOZhukQh8fyjC250430I5WFNlCiSczrf3Jq3LhcoLXU9ac5b0qwWYnTtq9RSKH+3oDXFXt7uUDkeFculc2tSBJclI1pbTlV7s0EH2J1kg86foVeD+zz3x46nPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUGOQA3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUGOQA3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3BAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762715993;
	bh=y5FaTIWyPViuTIunV03+z6VwHb7qMYK3TuTH7RN1TIA=;
	h=To:Subject:From:Date:From;
	b=gUGOQA3YToPxLQo/sLK9OsIx+SVhHftj5I0ctwOMiMEhy4Drz6JLenmsYmCD93iMR
	 HTSuiq1glDWlLWqNOYA7EfQLa1ynEGQK4i1XmggUAIRDJKy0d1tuaSEWJXmdL7jY8n
	 copZFssk3/c0AJD5cweOUG6jn+bwDmrep+zODFwu4WyCuVa3nwgHcUIrN+iWr8ceB5
	 /Pm2z8EZtSp7T4xSlJ65DPICd1Zm9zm0qhBzWQvMEt39lkfk2jorwAxVwQZ9SQvBgg
	 wc6C5Pyu6gEmC8/F7U+PynfroYFnolQBQyc1/fZT3GsJkw+7TnMhUxf3SHdsvgpsjJ
	 hnU/dps7mpNCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E50CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176271599359.26382.9396114300227459383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55707bb8108df881639a81a3a469b0bf3c83f4ab71eba8bde3d36cb526a1623a
Date: Sun, 09 Nov 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762715993
