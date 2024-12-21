Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9CCA32
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734822354; cv=none; b=s7N/cn2Wegdd0nJBIDVV1tjmkjOaRL50ngM+0BciVBjkcCZef3sl5qUxCkhZJITPOV1M9k/BjembTkCziB705FK2XCymIa/DB90v24PdL+BKI7vJ1v9zQ/jPtPRVdgmODm7Y0ZYSAbXWTmIw8bPLuE0BsNhuo03og6apzmU2pak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734822354; c=relaxed/simple;
	bh=sH1A78Yq3IwgwDKFaKU+hYVhPyaUeBEKQOxxeNRS5zA=;
	h=To:Subject:From:Message-Id:Date; b=LD7QLwsgFPft15JUkscWa0R/HtkSpBk68aLdiFBni4of+Thmq/Tc3TjYL1jUpeBEfzSFNfY2lyAmY0CzCLVX6uDBdLzi2CrztSG7FWD7LR1hhrvfJxpupZaYi6Q4KV/E+CoNnu0RZkwK4UKz+fXj0Dm0Oau9fEgSTkyAB7o4pjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqF/sOma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqF/sOma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A23C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734822353;
	bh=sH1A78Yq3IwgwDKFaKU+hYVhPyaUeBEKQOxxeNRS5zA=;
	h=To:Subject:From:Date:From;
	b=TqF/sOmaf6VVWlaqONkfHzw1f0wayAfZ3EJ/1CrviT7/n8Ohtj72P6a864fDTN8yA
	 pxKqRHqQjOcd8vAQnh2JDKdXdeRsrlOTSjjtLBRDVo9ssHmWdQYaGqhpEvWLOEe0Ud
	 DEvi0UF/sW7QPm7wsyfc1u5C2l5dz9GRXK0HDVjhwj4LCZ1pBSy4eRTIDv3ZCzOqRu
	 xd2QC1lN6zV+ivWN6vzo2DxPAeu9dk1989Vr5/QQQ2w7GO8Zm6LKLvw7b3VOBF1MfX
	 4cbwg08aJUIeEneU3QjvKpPGrf5YDxe3OK8gq1oFOvSv3fu5COp14GJmUBqEzX+Hjw
	 FDxzPMUNOZjHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F95FE7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173482235361.6010.7549980447897924310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d792b11f405bf71ff433eff851aacebc077c0cd492f21fbe2f5474cbf1b49edf
Date: Sat, 21 Dec 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734822353
