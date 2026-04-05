Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB9B32E692
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775417733; cv=none; b=oagd0zbjifqWBBJ0l9Kjg6v1HT8InxageupH0K9Sw7TTZj7sHBM0rqseVKK40pApo00j7Izur9o/CGtN+hDJInREVC26Xx6wc2m/tu3Ik3DPDZt39DPUeDsRp/DTdWPW9iV2f0nmOUMpKJDRkNEi6Tf1Kth+/ZussHJVucPlSxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775417733; c=relaxed/simple;
	bh=HqrLYm12NAAeC+cXVFKjDnX7AouliiptD8PxRoJn8KY=;
	h=To:Subject:From:Message-Id:Date; b=mYc26jGodUasnJN5vP/hEDmp+PsonlczpG1hEemfVoOT/vLXxX2v8yvYLKKlvqIIsgVuPYSmCjeRUjWBj67GvLwtcsFOtwSVjXU9TNveh40mtc83inIJSB2OXToKfy0qfPKU6wyPvluchdIs1JMj3i654gWVMxVxXVSy34uHiQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePdfplVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePdfplVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9AFC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775417733;
	bh=HqrLYm12NAAeC+cXVFKjDnX7AouliiptD8PxRoJn8KY=;
	h=To:Subject:From:Date:From;
	b=ePdfplVKde6d+Vo9SZgy0lwpgEeXkcudmWrrEtYczWSFfa7uGL6EPh2Ze2ozaaWJl
	 dw7zdDFi/BageB3jFxWUjGcUy2K7ZuK+zwMFVZdhNkcmnwA9qduQOQRWRtO1OWY4K8
	 tIatNZ08L2XC/kff/KGBHHJ1WHHpNEUiwuHgu2XPyPMF2j32/czzxowcJnAePWu672
	 qQ7H8oo1ZtOhfH6LWjrsTCCi7WbRM0hl9A9rs+MaZuhr7XHpcOFl1c01pamgUS4eyZ
	 Qh/BK+u6UOgkm5Xdf1IjiGMHFm6l2O8b7nSz0uRhSUVwJvaUTfRXG7bSo/hA+TU5lb
	 GfBxj7TqXK3vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB60AE9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177541773369.9447.18344153451116492914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78de77efe7e45ef066d4e1d4a54d43095e9b3d2d270d1b3ddcdfbe4fb1ffdac8
Date: Sun, 05 Apr 2026 19:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775417733
