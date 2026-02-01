Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DFF1A08A3
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769961234; cv=none; b=c0O/sbMVD2RSHL1cLvLZbHUgu06sCQwOeQYbrBnP0d5TH+jhAMVGUTSw+6DkKtKGXEUo2kPXtaryzKtbV9UCN5knAdy/Hq+6Ta/84Vc+jDVPZEwdhks35/XFI9+xC6xI9IR3jwCosqPi+r7HM9hsjkJQgXDi/lMGA6Cd/j9Gj7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769961234; c=relaxed/simple;
	bh=DGfIGmBFcoGEoPEcCR1JbjZS9sk67KDU5lAlOnqSQSI=;
	h=To:Subject:From:Message-Id:Date; b=MhxNAmKHoTlx9NdDoWqo8GfvWukm45RRRsPzn0NqEHJuTjGiJk04TqGLOtqsYKjuSXrtojX1vg2vr1tMWgfzDChO07vVd1+IQ2owrXRCVZ5E/Ec4rw4CSKa8rxdbEzIgFVAjumoSJoT/CrkzHZkJdC6M8Bko3GTKhCO6KgkHMKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdkEgIdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdkEgIdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17A3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769961233;
	bh=DGfIGmBFcoGEoPEcCR1JbjZS9sk67KDU5lAlOnqSQSI=;
	h=To:Subject:From:Date:From;
	b=YdkEgIdPaNt9uMp9TN5+mb6SO2L6kxuXEys7K9q9vI55vbKLmS0c4jo4pq78dRrQZ
	 LPGQ/HnY+CP+Fe588O44bwoUw8tKAQQ2Q/DqSBY/SZ7SBKkJtHx928dF58CWatZaXE
	 +BqW+brqclwYuXJpv1SH8LT2MsUlZNNKVy5RYa2VokaO2xPVyRvrrxgjLPDxlHocYO
	 Ys2jwxKMQvkilayLwJEWaCQ18qDSjb5oH7k+5GfNqqWJXcZkC3Nlu9Lgok6HsssapP
	 jJrqeZmrZZQgYhZU9HUcU19ZSNDkaD1zh5oXuaJeiEz9h41MfuMcFGldF4ekGNMYFw
	 OqkKAl/BmC/fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A73CE6528A
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996123360.5689.18104327030708280216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c58f40ebd11085d74609ced5c50a7b13f9099b95ca8a4e005bdb7882ddb783
Date: Sun, 01 Feb 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769961233
