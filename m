Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9451E009A
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736192154; cv=none; b=cqcT1ClxgHvlr5Yd7kezwdsiqnsk/6e8Tn025gPD4CVzPn9osuaVXXEl2V0KMpeMOv3gTjUvF7m3uYoj3MpE7Jj/43otgT8pCj8nwXQl1UE4ZVoEc7t7eVBycrjVjmbNdh+ZeFIs8RH6PsNhrkJZm8QxcNjll+cosdS/q7ZH/RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736192154; c=relaxed/simple;
	bh=VQtIb8FLXhRFh2T710JPFDjgBCxkSd8vR3FlVL9uAAo=;
	h=To:Subject:From:Message-Id:Date; b=o4HTp1B4FbIEZx6Q2un8s1Nk/JFzGS2+vVdXgKcYRsHUwL4GJ4D87Gx36Sd0gBmhhb7KstLIbHN8F6prnXUTaIl67HJbnWhabxudDbnV7IlTV7xtBK/nEMsH7zX6MKLMn8J6tRCdeVKwyYe+QSUL72LTHm2+NqWyMe2zYdnI+ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzklNQiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzklNQiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14E7C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736192153;
	bh=VQtIb8FLXhRFh2T710JPFDjgBCxkSd8vR3FlVL9uAAo=;
	h=To:Subject:From:Date:From;
	b=bzklNQiwb6VBbGfTBJhl84wuFyoFnFGIdoRuZB4MQLUKmGpZhKFOUN9UEtzf1Ll3S
	 UrmjG/BJDrw5RzSQcb9ZWVQKD4icLwles2qebt5Wn35wTkTkXKvqsV5H/R0yPWO0Yw
	 YZ6mrLRx63U7d5lNhR6N61ffBh76d0Wv1wSvHU7QxiJQu86GMgq8sI/9kWPWcZ4utW
	 fNI2u2UWLFbqayPHa5R7J9ptKxHyGk1OK0o31RGfi4hzCgTWk4E7tdntjCALsmVeiA
	 BUO+rYDwpy5cHQatTFGbrLTqemMLwPWyO6ztvQbuge2m4HrVRGBLrsNObHFgkCJybO
	 eX8vUHK2zyzQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C090E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173619215362.22674.16278525432156261169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: becfef62ceb2931b73d4ae03475b7d03f0b7bf4462b5b1b7bfa336a2ab637111
Date: Mon, 06 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736192153
