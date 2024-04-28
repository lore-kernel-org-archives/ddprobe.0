Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5791210A28
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714343543; cv=none; b=VgAfqXr5ARsvgaZBy9J7uxgcN4b+nLJyobpJHSq5um5DdJP7H4BPh2fIDALXAAB5biJCSSZgvluCyx9qAjGSWLS9UI5k+NC8F71l8MQ4RklUMt/RFy5mHMPUkc/AE76rFgyFDgyVUCVi4rSsoXD06nr5yra9QE5esdoMbMYLe2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714343543; c=relaxed/simple;
	bh=Nb0vfnG3uqDKrF3PfjbN3JQv4M7EQyZvGygbsgLhoQg=;
	h=To:Subject:From:Message-Id:Date; b=U+shUiciEMYAu1pkPaIkXqbvRlMu5HCZH/75CL5rPLdQ7G3SVg6Rb04sRxd0i3/zFbAipF5jxKrqoPRtn3YZtSQStfhHql82oEU8+m2W3vG33XpBT29wCcxTDpAoKiUUTVwpB6bGjb+hHY5MhAMlR5fcqEa6ONXd9QOYCSDzWSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYM7qKnD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYM7qKnD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89C8C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714343542;
	bh=Nb0vfnG3uqDKrF3PfjbN3JQv4M7EQyZvGygbsgLhoQg=;
	h=To:Subject:From:Date:From;
	b=TYM7qKnDqXz4uMkfB0FSu4wkGLWBUoRfPPaO018KQoFuR91ltsj7/0HGhkeVnWIod
	 YebQakz9sJJ7OiD6RpwoHuw80ZbwNyeSoRw8XIYqtqAUG0E4RR6KDPmFiF0YbkcS1L
	 LO2E2ZBKJz2iJlxePShd1Xln8fOYs/Tv5UfdexAJy/EgCVAhPrdjNWJJ0YSbUpYAeH
	 uHBu0ZJQtacIiZJyhCgUw4rP+rY40kbIxeL/oAlZIgCXxITCwg2mf3OqSkGRIeoRSA
	 xT4fFBKfhOdKXSZmPSPPSBDBvn07o9n7FEoRr9O2QC3N5ur3cHg8jSgDHoxnvjg0Yo
	 pVH9pX4RBvSAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C594AC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171434354277.9102.13038756706427249004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8165ab3e0772b456708ce6e64876b4cfc3e01bf61730e02ea24379bdef37a17
Date: Sun, 28 Apr 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714343542
