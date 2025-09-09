Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DA52571A5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757452794; cv=none; b=udtvHU3X9u7LJSJ5bLodfX4Au9ZlEMl5Mtk9Ms0Blb4v+Rsyk1gwQ1mmVhWZSiw6RThmuwG8ItOjFleuNvranIf49JhwHw111cpsYLrRlPnD6iFIkIsiFDBVMNhQ/N8FvvaVhX9u0oIcBLrWFtqugX1Lw36QawTNMUSzdHudGkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757452794; c=relaxed/simple;
	bh=b6aRRAkOdExok9IJMxhSkaZg36LjtCz48YohcKNjk1I=;
	h=To:Subject:From:Message-Id:Date; b=C3euIrKVR9/SmincJ5pip6T6UKBK6ww/V+UvlHQ5gEuKv0xIzQ/APEkveNCrDwFbVuwo3HjH7GH2eyiTUYckbucB6IUb46V9AOWEDxyP/k8PmbxUvJ6BLsbi445YUXsAHAs2KPf0DOzRGw2ihB72h9HyAGrl4iicPJUfigv0hAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbM8rDZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbM8rDZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E617C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757452793;
	bh=b6aRRAkOdExok9IJMxhSkaZg36LjtCz48YohcKNjk1I=;
	h=To:Subject:From:Date:From;
	b=tbM8rDZ+HUsJTGIU6f51z/oGKQDR6mFH40cfXscClsPCC6yO9HZQ7nubRR+/+3/Y0
	 AnlN/MuRxbAiEl9kJF01bBZGkheGIN+KazaiD+ljFXj2ktoQte38P9NBaC7ocEe5LM
	 CIug9avUscUuEHdp4M3mUpAhHFlFDmCkdTUUuBMr409F4272i6Wl2bIX3F9Kx//kIw
	 v8KBw/XaOLNsWAO5E2e23U+K4/T6fdA8dEHNwztIIKFh/P4NkIiip0qYUCxHA1ehqa
	 cXAa1AlnnOdkPOtRbHQ8UMMn9uxPgiDJcCVGAOiqJHSKLg+fTn0sUaBn9yqfzB8RIJ
	 VIRWxG0v820bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B5CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745279357.1451.1716105413858244783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c8dcd63ee4325336202fda046b6ea28f1940d14dc833bc284df034aa13c7e2a
Date: Tue, 09 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757452793
