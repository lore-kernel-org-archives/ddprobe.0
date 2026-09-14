Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD8E33998
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789348834; cv=none; b=dhOAyF2a9gyAa8q8gNOH5aIr8thcPp6ozKq9xzzvEHzQWiBDbnF0Ql8FcmkuGnu1axGiKdj+hkmuWHR6Ce/ZNSkIAiOSfzCXd7TkJuyb6pItEVoSLu3NbXVKVinALt1TDMIuwY6qlxyb8j+sgIFcYcppx5vYCjPZ+pCXEnWit6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789348834; c=relaxed/simple;
	bh=y0McHn63ZnkqdXQ5tI6eY60+6UwjAoZI8bqyy4W6vUU=;
	h=To:Subject:From:Message-Id:Date; b=uxcPIQJtRIs+77ggs+Pw4csbsLHU604c3wpMTUE5mJGwxEy3QFk/QXJyS0xaDJAAwfLmz9lp5RxxKUpUoqE4f0jFBlOPATrru8q23MzLkmWs8dxRftncZotUi+NtQv20L8qJvROEXxLDwDtA0Z2l07OG+TEXYgk8aQdgv+/OC6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kcrk9uyh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kcrk9uyh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21EAC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789348833;
	bh=y0McHn63ZnkqdXQ5tI6eY60+6UwjAoZI8bqyy4W6vUU=;
	h=To:Subject:From:Date:From;
	b=Kcrk9uyhJG0Ay7HQ3/H7tCS9FfR6sEWA7cGTyZVhar7Jv4pxQuk6E160x3HIz46dr
	 0kbJYpl8zE7KydzfNYhJpKVt5Zy2FvNfzDaIOF/GKAB1Y4GA57S9nKK3RrcDSZIeVM
	 Yf3FuvU15xoZ0DdPHOQnXAiPGMvriffrbUEcIW3yn6qYufo2TRIWavHVnquY6AZhZD
	 2wECzHjLR/wMZ5CPwX8WfEUSuMeWJ3S62xsS8td+BHRSXv25XSadOdWi5o+CNoo+Dt
	 33H2EDNDF8WR9EcUN1xzGrxv8x0Fte70+7LTR/o2w5JC1Wr+SkLvBKvg4+EB3PRM85
	 6NSedEXcJzBnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD69C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178934883368.7120.11936991080263843801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc5e67352c652c45cd0ebe757ce488e0ca9f68fd819ade1bea7728e765820d6b
Date: Mon, 14 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789348833
