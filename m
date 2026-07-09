Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19ACE258CE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783630114; cv=none; b=FpVD1C1tdudnJZMwNU1uRTdAAWngsIandhM3qFwj5RsQEpcwpPe/X+wx0rBBUCm8dyZnuT2wj1cCj16JygEL2O5WpEfaqj5D2xIy6asqaYcYhGGqP+Yc9HwSH9BfKYEtaD0ZfF7vsZq7HdMpZvZvWRksUfTAKWpxz8C7KVwU8ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783630114; c=relaxed/simple;
	bh=WTBIXGS12fjD/Ac2mk8HXddP1wrvnQO7pHTkc9JXRUg=;
	h=To:Subject:From:Message-Id:Date; b=uAfUtRkKMGqJTnK5FSOW9l5rdcF7j4w6Uq6PLJcR/n5Q6bPdFjk62R3V15XGFl96VTSvbaOSpCXL0ux9XxCyPWz1rHJLN3+y+HFrrWRNlv5ztgAL3a5DKxjQ6aWhM6v/ZiIoGyg4Sev8t762kH+2zsBAhhIYVn2W9ahnAMzj74w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwXpJseD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwXpJseD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D967DC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783630113;
	bh=WTBIXGS12fjD/Ac2mk8HXddP1wrvnQO7pHTkc9JXRUg=;
	h=To:Subject:From:Date:From;
	b=kwXpJseDk3sKQBAz27ZDgB4R3muzqf+S6GRgXaqKgij8BpJ5dD3gj917DbFC6Nbxw
	 8rk10dX2RAjxpfg7EsZSwSIJcDtZTV58776NVb/jMXTqV6Rga1gUYdu+gD1pKWpK+b
	 f2h/6BM4MUqPIBINowfeCtuBbfiCH9WLT/+0CHBT8YRedpICDjjoEr2HKcZ2E2ZzuM
	 GYAncnzg8ac6NZROepAW9NgMayrwg3MLN26ouIz9/e2JC+tM1Oq8i9RhfivyjXWP3g
	 N/F98RY5M/Mzc+2lvtc1WGPBW8vEZ838FDj3PqMbylOlTne3DwJjQKb4Vw2jbb/J5q
	 d3GqHo0S3+acg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7C7C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363011368.8213.6201838276297969503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c84759587669319552aaefd9c7dd67be1b444a6f8ad3eb6942c86b49afb1ec
Date: Thu, 09 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783630113
