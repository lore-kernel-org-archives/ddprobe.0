Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A653D47CD
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773330294; cv=none; b=mVj5MkqTURp+J7/pLNG0SgvWfvA1OoC2s/CCBEf76QIm0Rvmt0ly34O6ENlcz1T9STy8XuIcu5TZx//sWcQutt6WqcP6JB7TM0c1Uz4VWBCNtxVzRCluetEx/FUEaC2qVXuaH2s/g72hyvWp6jtiNXdOZzmbyG7no0JthbFXWJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773330294; c=relaxed/simple;
	bh=YWiJ5YrHH5DaDe7xqVC4QcePx/8U1cm9C3AoKpppSlQ=;
	h=To:Subject:From:Message-Id:Date; b=eN5f8GWcbCCutaBu8yJS0hFO46NJoyVKh1NUS8IKqb+VS8NZ1zNRWm5t+Ifusq/7VivH0M6WZ5QJLKw4AQx8YffVJmo0xqI2ATDI+sqR2KKLGgVGsBHQZJ6/j0yCK23/dCQJyLMJfw7mL5/fgxEb24YHuKroT//aPgTIPw+/meU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7U2kZo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7U2kZo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC44C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773330293;
	bh=YWiJ5YrHH5DaDe7xqVC4QcePx/8U1cm9C3AoKpppSlQ=;
	h=To:Subject:From:Date:From;
	b=B7U2kZo83Xx9TIxqRHjbsqCXsVzEvdw123PCY8fmMeEAqdY4oRds00GUqac+88CZD
	 Q2pCFKxa02uDsahTHaX5fkIkxPu8d6Q4TMyX2JDGNOOABMGkvAUpl6n2BUTGXPAKb0
	 LGn4bBDMxMHDC9hZ6i9Mj/McrNpm4bfeSaeIgkBeiL0z4G283IAeLB/+5nW+kxiXf5
	 1Df8F81l4s/OmV/Tae6TvZsOScDjT/OofrSjUZqtJNVWF7KztAFHFETPbYDfFnUefy
	 DqHqqvKfOSBvaA/MStBoQ2K/UnXe0b9F3M18IYe6qztBXA6SeAmw0BvHaDWdIVImcm
	 B7kNLyPOwCkTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB6D106705C
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333029359.18124.13334625146215321693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa101dd6ae876d80e11d2ed648c7bbb05332a4c29df95db401c3bf8a163fec11
Date: Thu, 12 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773330293
