Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8F38BF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714452743; cv=none; b=KTA8DqV5Ok/9Rsa/466M7ZAh5OmVWSs4OOn49IRKrDcFIaRv7Vh3ojcf0HyvdfJTKKOGSsdWjYNwmIPy6Ty9BRbuk+jSczrcs5h88vn9nP0ZegL1lS/T/rxjYY8Q/faouKiPezigr4XNZ/lBeudCo9HNR6bCVKjEDvO4w4zOUCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714452743; c=relaxed/simple;
	bh=qBnQ1vnNZXE/LRdDAPlFk18YIew/yLpEwZFZ7NKfalI=;
	h=To:Subject:From:Message-Id:Date; b=jcPfj6B74d1w1hK0g/begT0UwJ6j5jBQdDueLwtiuufS9R7YqS61J7I3IBCsvqTRvtYanLAMebGhVuS/atErQJrgMkcasJsWA0YiRAGJu6HSnwLmyLmt25ReK/jRUflKaBxdj3sG4wZUvowwis8lpY0EiKOyK1hTtWHE0ZibMN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rw2hizYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rw2hizYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C1CC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714452742;
	bh=qBnQ1vnNZXE/LRdDAPlFk18YIew/yLpEwZFZ7NKfalI=;
	h=To:Subject:From:Date:From;
	b=rw2hizYIZT1Tw9Pz5xlgvVmoPBnPihv+Ac8jwnIP1uZBFVg/QU5XouM87aW8/r/E+
	 wc1s4cnn/E5akytSPcurTO/ZrHqlRlIySH4EKpvVbEem5bsCoDZW+2U2JRfHPxiGbd
	 sfkhqovgljJejqPuFiR6N6rP6iczU6eydn/J2lme6XUiawX/AME1Qn0PYeSLxi0G2n
	 ZCVZQ2yQt/Rw//rlA/i05qa/VXHuOayA6voGd8TpwPpc4wXJPDe9TX33xEqwbdClpi
	 4jfrlHDD8e5h4DZR1mABhtggU9Kl6V5VkzdwWG+G7lXwnxTDtoFvL4aiDkbFhDUVLU
	 LLiqc6oG75rtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE639C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171445274277.19781.13103341328428026003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93de45d75da7a45ca95b10776d96493e787201279e7e8b7d1c16d5bb966a9f9
Date: Tue, 30 Apr 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714452742
