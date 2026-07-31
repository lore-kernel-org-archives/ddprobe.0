Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E87613A258
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785488434; cv=none; b=VavUvQo6FTpwstLmtRtPkZBse7aPwXECzQuN9YnOpu0UAWqmbkwQMcFy3srVNMYG9hgiKZYC3d81TstrBjJGzb+/4XOetlaU1efVvW9xmehXn4KvsmdLXFkcb6G5JTmm2EQnrfZCY27eUv1MaolQycy9OoHW1DJdGLfJft0NqAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785488434; c=relaxed/simple;
	bh=X+XFy2TPNQMdP0SbS9jSIJqWIianb15pf7znWQ9lN/s=;
	h=To:Subject:From:Message-Id:Date; b=cFBymy2g72ZVARgshRv+zLeLX5LjvH5KBpUph+bg+CABzcvG/SKQylH+cDaRpaDuTRSLHpJBXdO8jNi/dCgJH2yl8ihhSRL/D0W8+Tu+m1TdTNggleyk0/fG2OL9ZAqYUB8wdajJXsHjKb2YO5Y8yLegp1MOjIwyu64eFqMxjRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvWn9lNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvWn9lNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA075C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785488433;
	bh=X+XFy2TPNQMdP0SbS9jSIJqWIianb15pf7znWQ9lN/s=;
	h=To:Subject:From:Date:From;
	b=hvWn9lNxs5LG4RhPzovBbecQJ0LGxhetA6NZ15hssmRn3Azu4QJfYAXTM1TZ2J+pW
	 oHMdhBo6i56NfIHcmPBvnWJmDBz3Wc7TJmJTdo31tjiiPfDPOsMv4y82Sx7+Gv3JmU
	 KU6/7EGyQylHMLeCTUobDS2WNIPpZAHUUi2lhg58cuDGF2LCt1V9PzIHpWMTEn2BAD
	 jM9TvD0eEs7fX1pXolKzru9rvIOpqTLCeE2e68Q14NsnZQLKc+FvJUjye2R9ybpExt
	 NBATnP+TjZDszT1mm1hLUmagaOKfIH1ykO6BU7oV8zLCYSjAXkDKL93NWd803sXiIY
	 1MmIFG2C4Zjow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF860C5516D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548843370.1317.594058084136368102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d5c19b591c4af06f7d1264072f763214bb3409d35baa4ee58d3d2378f4728d
Date: Fri, 31 Jul 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785488433
