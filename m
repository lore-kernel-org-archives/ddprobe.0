Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E291F1304
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775206534; cv=none; b=gguFye/jHhDJpozbgLBxbc3OVG0w4LwTxwQPigJlribzo5iAS8kXMcs9VspFStS0+wvUuXU2HgPSgJQqqm7nJw0Vlwp4LKZgttYYXEeQazpvaywBevZPNEgOVDTtn8Q17bULGlE5G3yPywsOBTvI+WygCP7dBIheIo3bzP3j3F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775206534; c=relaxed/simple;
	bh=mCjknZOegq8vwLNRa8v3XJp8aupVwWrjQ4hb9tbNLCQ=;
	h=To:Subject:From:Message-Id:Date; b=TOjQQgBl+ZvzNSEpiCQA0t/DPgRLRjZnY+YpygOt7TEm0PGVTKet/F+iODaoTFKwoTtdA6QwbMUZdBuciZqljIrI139fd+yDKZnMH7YA4O2xyVTrBnIlkm80l8hI+cYCh+cIRARc1LojyYveNhxrBRWZmciEJr8tUBnzpv6xxE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0zPyJ5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0zPyJ5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE132C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775206533;
	bh=mCjknZOegq8vwLNRa8v3XJp8aupVwWrjQ4hb9tbNLCQ=;
	h=To:Subject:From:Date:From;
	b=B0zPyJ5Dmnwz31X70ggUQrhZ85szccUOz9KxMzpyXE+olQxIa8x6cGo1CeX337Sce
	 8vl/l76RZ2SRjSGYJlUOCBnyfzCSZyngRigt51wVNUZUOTbhjmJx3PocMUypC839j6
	 4796hBXMqhg9tR12XhRQOb3vHWpt2jPgPASz0i8L+0as7+mdTT6up+eig/uW7z0/oF
	 gC/KASQt8vOSxFQOe4LovVfa6bnHf024Am7aB+WoBJuwKr8fxayghIuxzOwDZIEGtX
	 5n4t4iG9c25dp7Oin5Miw2Hv0a6rOqcQPBIW/dmpbVpmtL895mOFalpBcnvWjXGy5g
	 Msoz+8tvCxxzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4E0E7E34E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177520653369.1778.7140033786788883677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55afee336311dae8bdc3474ad2e13ebabb6983a8d09753d1e0bbe2a1fd775a85
Date: Fri, 03 Apr 2026 08:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775206533
