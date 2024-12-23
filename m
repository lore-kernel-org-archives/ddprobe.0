Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3403E19048A
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734990354; cv=none; b=LncSlMHM4V1BA/LLyYxpFP05kQqTqUrCpUvK4qtXgFHMYSo50/mngPURe6QncE2rcX1BEOBDS6m8V8i1polWCDZ6WyRlPTaka8jz3JoZ44krs06l/iUJCClkTkBrodbCiABgnpV7aFPV3QXfwsjsy9x4FP1GlaWCqvUB9SIsLio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734990354; c=relaxed/simple;
	bh=heQfIXCH+gspzEJffUUhic6/xyofXeEz91iTvPyoiWo=;
	h=To:Subject:From:Message-Id:Date; b=lqhHIfnWaEab9IVwvisY//A80KJhkfJ28Le+aQ2s4tzch+miqSfcCWMj8kVLArnmh0LuiaaW8CKaTpt3MSGN45dzLC8Yoj/mXftA9E/vhErj8Xu0t+h3u3mD1Yv+5D3J8EKK8iEwc5q5vCoxVOUW2QXtPxvnnuWw7/U6zMZnR3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnn6h/sM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnn6h/sM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34BCC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734990353;
	bh=heQfIXCH+gspzEJffUUhic6/xyofXeEz91iTvPyoiWo=;
	h=To:Subject:From:Date:From;
	b=bnn6h/sM1tz8c0DD0Jj0elUydDkX2fPcItPGzVrkkeezA2rkx22YPKZbR7iVKcVQR
	 hglPLA0g7V44ZFnwFCiZtiv0MS7dePFqkwyrJDOS64yB9TmylcM8r9tuszwDkaE8eF
	 ypVXpLqkSV9V/Xehbl+fhluPBtreG45Sp9gDi4NYx0OcHMtveByVHhTr/k5g8VfyZT
	 158mWseWal38oRKSdMvINsK/St29EnIiRqGf01BeSH5HRc9PYExt9cs6LZy5aLjuPU
	 fJN2reLOHe1AnFL1ihJG8pKWzg3hQq5gpXtX6DwB4/PuLDCi+bxW70GlWJxANCu/yd
	 PgAmyR3b9OYdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CFDE7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173499035359.30152.8983632924721088779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 233e177409f8a4afe3d5132e2dd10c7080b2e29af1f97ea539280c78ec61478f
Date: Mon, 23 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734990353
