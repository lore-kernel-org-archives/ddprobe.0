Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C01C219F9
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 03:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720670243; cv=none; b=EpWlekWIgDFgOXcaNkY2NLUq+53LJYGtd+LhjPadOYA4p0XHUzXtPHs5nsNWQcanW9zjqiHY9v6kjjTxbvUQnRnhCxhYbUycbuY4HnJtsJ/XGpeoQJ23ej5MgHP4zv9ntFz5ZrfsarYZxjcM6YWeHwby1OndMlQG2T4BlpUxFes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720670243; c=relaxed/simple;
	bh=6etWYhA4M4bccR+KSmIPUfGUVBlTSJOpO0w0GsPM/g4=;
	h=To:Subject:From:Message-Id:Date; b=AYHWxedYRLBNkmgrypXGPhlzP6QURq+ICLZSHkKfjJ3L1bMpSygeXRvlZDyfSxrz+l+uA2SrA5D6A+emaHM9xmUG0s4goDMa29CQ3pNJ/JRmBmQwYnr5m9FhrQReaBO6tq7kRlvIAuzrZABOl2xyHqUcnBmKx6uuGHrFMXVYfoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jvvb041R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jvvb041R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E19FBC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 03:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720670242;
	bh=6etWYhA4M4bccR+KSmIPUfGUVBlTSJOpO0w0GsPM/g4=;
	h=To:Subject:From:Date:From;
	b=Jvvb041R9HpLGeSKMkOkUTs5hplV3ZnU7d/do3hcYKj3o0rCYcwc4L5PQU0fkc4Nb
	 5RKrlSxu7RIX83XDRbmTCce+JZn8evMrUzHU/Jjff5bzklzoixs1J6BBB6OwEWUIOU
	 33Jg4d5gqVxaGNM7eMR3UKLEBAhrPZH7x+DpTB2RQWiyWjP2R5j61o6VyKoqIOpSnD
	 Imcw6H8S9T/os8LLDnz4F4X5pK0RMbF4WWS94lV4EZlfjPRzIC6B0n1ege9Zxpg0MR
	 A8imfg5Yi3waFG8vNdGoPKyiPuOTDwUzqjc45QmZM10/6wNPDCa+GFh1WvzucOme2G
	 XhBuhyXuusMeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64E1C3271E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 03:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172067024278.15839.2419429090178096526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621edfa8c876a90d661cf7d97f40a1ad2721f3bbccd91fdf0baf6d76de13d3e1
Date: Thu, 11 Jul 2024 03:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720670242
