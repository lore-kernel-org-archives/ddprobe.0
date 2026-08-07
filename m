Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03873DD502
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786104036; cv=none; b=MXRDbEur25mu528Q4DJVCXc+5Sqkd4/AxzOIJscyv54fO6IqNfz9mSFlHMC25KWFIBRLVDiMl2JZFWKNPTYKTpUptbMheGvYO0NDvewGyoTmLd8KoAv6wgpsRG+TM6d/+N5wJsohCghvbQn2e1I0shyTWBzSxYXazeoWaHONb/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786104036; c=relaxed/simple;
	bh=TjXGMDFlXb3/yNi7w4xnDcJMVJcLMYop9jpmorGHkos=;
	h=To:Subject:From:Message-Id:Date; b=Du3qzLvFd9vhHopB5JE5quzBHnpdn8qxHUQltIqp8SNtdRNmwx7ADubhCFsBXZBDo7guie0brzccdzmPEuEXT9eWUahwAitl0noNZtQCOJavykGMIWsniOCaIPcSXBgu8mo2oo7NTJwlvgQrg2I4NJqMFo9LPabcgHSp+1m/0t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFrZFoRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFrZFoRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E68C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786104033;
	bh=TjXGMDFlXb3/yNi7w4xnDcJMVJcLMYop9jpmorGHkos=;
	h=To:Subject:From:Date:From;
	b=CFrZFoRnWkW/2Z8MBBsI0/wdjzaAzlIQcCFKF/Jt3HL3Yr6Mmnc/O+vXG+v8st8lj
	 iaHDPMGh82vbI5if/I7QJlGqu3uUfc2igk+aKORyimkVTLjoLzMeS7NVlhkBJ1TNYg
	 2M3M4Kv0w9u3TCq3xHVP7f55iLITnq00a6sNHzGKtmdhQQHY3NARMqWBQNcZ5O2oAW
	 GSs06wgv/oIjc5kugG7oWl9/hjKWfkC0Rr2pL6BImqj8ZIq88lG0/YYI7JCOe9GTup
	 STuTSGvAgN5/XNLkjoX8LBjnAPUDOhTktVlnaBAfkqDtOeScRrARf21nQh6yyfYPtL
	 Uypsvc8CLoVdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB588C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178610403369.25006.13513963710968238534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f74a7ed9f7d0674a965ea61bdb8c239755807b6c9662303747ea0975ef4960
Date: Fri, 07 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786104033
