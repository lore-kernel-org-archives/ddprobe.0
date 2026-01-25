Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270D42701C4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769367834; cv=none; b=LiigTEpJKHLjitF5U0SqddaRhZXOSfiEzYg/0ClVVnqkMTOnHRMaTdWsbrjpvtgBI4dQR5vKwIVGx5pTyERKruKTK4iYHQNKqc15J3JItCac7GT4J8+InjjBHoxB/oUljcYh0/rUnZDB0AIQFD0Yq67FNtvdAXinS30T7gtV1+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769367834; c=relaxed/simple;
	bh=6qGalnjUoK1+XDHLlakNcapwO7tSz8Bldjq72wZzcYY=;
	h=To:Subject:From:Message-Id:Date; b=KrPLbs0VJjYD3qyM5DxXxdNZM8N0/nVhQDeySzbwV+rX1mK/sBqoS0DNyvpXp32xjY2tyfia6ymb8eonfXCQ9DEctTzjZjlx/I+rQi0EEl45+aLzBKAalN0aS2vKP6j7UUMnE2JjvPJscVvNgu/LWgbQ4F6qDSHiORKXKmZ1YXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHFKrbVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHFKrbVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CB6C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769367833;
	bh=6qGalnjUoK1+XDHLlakNcapwO7tSz8Bldjq72wZzcYY=;
	h=To:Subject:From:Date:From;
	b=uHFKrbVqkNWHP4nTc2Vu1OGpyCjAEHZTMow4pOlpwkC7aLXId+fpR2sT6/qnRvngZ
	 MKgvNsteO3D6pTgN5PEaPtbGnNiQvjvwf+lFfALuKLXG3aos2gezPerR9MlCe3a4lC
	 aqov1O/Y6h6dbmHvXlAKB1uEHy2lK3RxYOQd0GIZa56Rpnaz2ay6dIFjJYD5eyvfh9
	 NFmhdcllfdv3TSHs2NLFN6CXJlo6+6hjVASPamvUlDvVbuuFbbwp56AvaOxyIySLTP
	 tjQZ17MtkD9Q0I+Ar5P8hms7rWOLXbSc1+bLxXyHyE6cOchzeqWGlx0L0bzIzxoTr5
	 YU07QSmLhyi3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93323E63CBF
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936783358.6425.14247706819355663644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe264517725811c439e2a6a62dbd075cc5cf1859be56519e896920c5641ccf5
Date: Sun, 25 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769367833
