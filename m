Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B55426AF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783256314; cv=none; b=uRzgq2cmM1YT90gYCfnH5g6m/hhbm7vdFq84+62zeC3DjY5ivCf8QrBHS3P1RzN57a/rMo7zdbft/6wqpM4q+ymEahXZJ+6ePw5QImpB8pAQAmzNc82x3WBm4g0vo+lE7Gf3mvvTUUaVhtDxgf+QwuJYx2Qb82xJoqVR9UEMHe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783256314; c=relaxed/simple;
	bh=EQamTUQP7FYG5KAFwQk6Ol9miHpT5cR1XZMDAVJmuFM=;
	h=To:Subject:From:Message-Id:Date; b=b/gVi65f3SKldUAUE6DYEk8cWVxIwf3/cR02ErYcM3sZNEmh8I46hdqGNhttUfxucDleVX/eE8idlwg4tsNZRgwJxmvEPAw7OOS9LJBZJXsF5sS+wGvHUWiIWPvr4A3/ZwDDg8TrsC5420H9hxFuW2odMVZWmYdfVg7284tGGiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLQyNig1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLQyNig1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9786C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783256313;
	bh=EQamTUQP7FYG5KAFwQk6Ol9miHpT5cR1XZMDAVJmuFM=;
	h=To:Subject:From:Date:From;
	b=RLQyNig1+YwAP2jZyhq1FhP+WJHiPdStSZ9Zw2Dz3QmOklQgX3MsKnAbVojGlTrdc
	 bzlEhk8AJyTLNEmyXGgfnxWZEaOgFgUfhbQc4B9s1Hwa2db68Ir5Hhm7vhCJpTmCxZ
	 fXFqhZRbtOeHyw9ZYQG5IAZTxAgm4Sa2HZ8FrvUeORsoOREo/1sfBeglVXxO17PUjx
	 tkmAUWZTASjLiuYWWOkEJRABamrnuQs7Sa/8TZpk9/g4NPbuNDJmTus2g7SRMs+mU6
	 JEtdKStfcAG3yO/lJVbNu9X+QyXPyg2kyy7xP8LcmwMza3Di9D+hOusLo8680FjarT
	 YXC2o4Q8DbU1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FBAC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325631368.27562.3944635736710276530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f376743efb839002b3d7b66b9e77703aec44ce563e6daa684d2c2f8cdbcd7715
Date: Sun, 05 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783256313
