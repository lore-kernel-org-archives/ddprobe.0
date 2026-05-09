Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202FD2BDC2A
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778300854; cv=none; b=FDRqRfmJpKOIOGxoJMn7HHm9LXnb/2UbE/n1IEzfwI86Rft6QWAbNqowc6HY8TMVCwzSfNDZcnrocMOghncLasE5ZrfDJbSMYJ/Gyn0Eitfi01x7RnQegGC7TR5dtuo8IMeKNw28Eixr0/7fv6cRR2duTYcApe2CLAlMDG6qy9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778300854; c=relaxed/simple;
	bh=1gpWdpUUHjFpsjxYcdzDeL0mDrgn2VvXlNZ50GosANQ=;
	h=To:Subject:From:Message-Id:Date; b=TB6QMNpZLhCa9YXYNg5GAmsCUYne1PhuggYH50LXcXZsijmNXG39Tyk/Pb21mIghAAoPPKiiMw77mQvYoIEYOcmI2HBTWXVUpL/5Yx/0tFnx3CEZJNiuSP/OcBhuOnvbGIl/s4cXmux3zbjZk73sW1UW4Eg9DtkLnBHokEypyUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlUHF2BV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlUHF2BV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08A0C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778300853;
	bh=1gpWdpUUHjFpsjxYcdzDeL0mDrgn2VvXlNZ50GosANQ=;
	h=To:Subject:From:Date:From;
	b=JlUHF2BVheD7E9TtuKgfSd0yb7Kv5wWHNT5cz5etdkVS5tW0fhr3a2Cu7oTkDL5GN
	 HE3SPGGkGRX3M3yVPiPkinXPgIjz9cF9hnF6HzSbYBEIN9dCA4FWbUef5DOhyq9fOX
	 ruvlgaoPd3iTurl2CQaCBey3xhdkuvyfce8rhScrktGWfcCf0oyBco4x3FLKRDzJcK
	 F69izXYBP+rDkPPWN/9dde9I4RWjjvcBAm9p6ogMc/+VLokmLHtreSElpgDu0CTIba
	 yFvwQViWaEvFUR1xNDT174IABkztmBhgrLq3k8WX9mWJ2M0OPuhyLcKHLiIaC8Ipzs
	 2AwQGaIZTEnSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BBACD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830085369.14657.9460589112202117006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e7f21f4c85980a698c73818c2b7bb0621217cc9d793791c6d57aa126ce3614
Date: Sat, 09 May 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778300853
