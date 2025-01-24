Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54118282F5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737699354; cv=none; b=IG6w6IwKstHVZD/kLRCPSLsjEFirzSDmI35cDeKZPH7b7tgrMsXnCpNPdzXQY1c0F8dVMcVLOp2I4/H0vea6MoBJfGWmSQue42ovSkcbqLqjHGuQtjXRvnFD1F1k/aQyaAQF+4Yf5czSilG6Ux0PdO/PZT4R1C3DbXhSka03Wrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737699354; c=relaxed/simple;
	bh=h8N3OBn335o+KevSavLURVjQa0iCZJhMVpVL4QarONg=;
	h=To:Subject:From:Message-Id:Date; b=QMya6kb5IQgrCI1rbef5XHldyfSdjiP8q9mGXcKOg4ZiPxL/5P16GOHb3m3uJQpwY8cwCsy+kF/TOLBSO65ZY3x0KQ9nts0MYZAWQs4hticf34MxLLE8kocW+CesjnvZcApuLvGJe/rUC+wOxEiM3Yyjb47P3Qp/Hf4Y1UVBCN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRTBVg9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRTBVg9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64CBC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737699353;
	bh=h8N3OBn335o+KevSavLURVjQa0iCZJhMVpVL4QarONg=;
	h=To:Subject:From:Date:From;
	b=SRTBVg9RdcGCOV+6D5s/kavUsO7MHtfA9rbboQLW0+UFAozPjFXNewa12EVytNOvN
	 h9X0Zx3+EGs5mS1swIZFPTksfey2xCyMM8FURG4J21xRzrUyPrjCKB+8Fefn3mCVlM
	 eM9aR2Z9q6zDzFOOZz9lKDaqtk/w8xk43z80+SYAvozjqj0E0HtfFy37n4fcHSJB6P
	 OZfdS7VWD/IxKPd15NUAZXc9ulLRz/A5zU0Wch0JrZZ67MEBZmYZ4VT2mru64ho8sI
	 YaoGtC6MQ4hiCgrkaay2kurVqbdE+9aHCwTg1dZy8IWNbA0IqP/lnWjTV6BZl0HynQ
	 2eq1oLSVr6XdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99956C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173769935359.14000.6858564717635854363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29e4d8b1da942fedea998815a9f4bdf6269e8d8abe33dba629bb8c95e953768
Date: Fri, 24 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737699353
