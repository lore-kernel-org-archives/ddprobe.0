Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F06F2BD036
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761923994; cv=none; b=UkwBGitXdqwVxp5gF2V4McSpBo2WmcKbHQoLgcn3j2FGDwbTx6Q6FoMNHbvg5ggCKWmoYHpjiROrvuwZjOBl/rFbkQh3aU2lh+BQgqjI3rpJdw+3hGIwbLl3R+FOnr9Ky5VKwllQq2pmGEJZJ2XubmX/7mb2NzUG/KOs+pyOIP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761923994; c=relaxed/simple;
	bh=PjVRb0J7Udu3euOsDO36pRy9P37GOXHieo/hNcyYszU=;
	h=To:Subject:From:Message-Id:Date; b=ZjAGQNZlA/o1Fm3dPfYFFwfTECwcoRD1voqElq+ULRkFQuNOzmt96EElRZr/TCf2uDGqwusdL+ohBk8c3VlrFz67V5LVLaEp8A9Las6Vzkg7Sk/xtt2DiGLc+Vn8MApt7zSKjuH1qBPJb+40wbhdE3iJeeuh9wfJIxvobCQbpJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKpob3gW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKpob3gW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0531C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761923993;
	bh=PjVRb0J7Udu3euOsDO36pRy9P37GOXHieo/hNcyYszU=;
	h=To:Subject:From:Date:From;
	b=HKpob3gWuxAwtDhVJQqhn08KDIrF813MvgIg4t8tIKlNcNAvhD1Oae51CcaW7UKnF
	 xSdEsmDL+XfqvN1/OFFU9elUXcSVq2BHNy2dF/3/UT+xYZGkDGnQxhYlaXxxZSuVtI
	 QmmgKaM0x00UFlA6pl9wOVLjti8GqyoOUYZ9gBx9QA9MbyrY9A9Owfyn4rUQl9rBKD
	 XHUi+8rZob7Kuaz3UEypZ2ksr0lvKqr+cnj6EANlZzR42ca8S9StgA+Cvkr2Rdvxim
	 cpX16PPgPfHFEHZNBDJn4CMBmCh1WTfdSi45jedvVxeUshOy3+RzzRYJcp/9041sMu
	 +zm63OAMMi5xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90792CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192399358.6962.1801236966647237128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b0a979388d157739a86c53a2ca4515fddb57a0a9cf2c09a39846f8a52ef4e1
Date: Fri, 31 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761923993
