Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBA13E1D04
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782795514; cv=none; b=PC6jG95kse7+hKaPj7HF532KGgzJpSyHcGyKA+00KwXPqIQeuge0DqRxssAsy4bJg6ffr1jmXrywPc23wJL1QuwEm/hvNdSMWUio5qOCRulqZg4kxZCqC6RM0vfFxpuk5BwO9apqs0mGh5yQcYP85Vij2RD8A8Y1tbfpkmJdfI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782795514; c=relaxed/simple;
	bh=9OSl4YOuRbTXW8RTG8xhekC4c3gPBKb+WlEB7dIDRLg=;
	h=To:Subject:From:Message-Id:Date; b=Z8EIeAnTtjfABnXnXp0uLBVrIozNxHb9GIoHR5LyKSBZu3zlio/oI+MEsmE6Z2pFceegqAmj5xLfeI5Njd4/aNrXKXcv6KbmxvBn+gBGRoF4u72kMevJe6OFvpTL8IsFcuXn2nMQKEgS5tUWi9Yb94VdIh8FBrjiN/gqtUQaA1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuh05vpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuh05vpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83E2C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782795513;
	bh=9OSl4YOuRbTXW8RTG8xhekC4c3gPBKb+WlEB7dIDRLg=;
	h=To:Subject:From:Date:From;
	b=tuh05vpqrXgyYvUvPnTlR/9TWxhNcDWp15X9eo6R1JZevJipaZNJMJQ4l/FFx6aKi
	 jL9kTTQIM5Uxb/w7dR3Qqvj9B4aeb/qTyAkn75sgbdEhw3d8RDeHQF0HkQwIygUV1j
	 8cuY9N2hj3O1ZPi5bu0TMK6OWkPUN8CfDAfGCi7Vc0kYfdTSa0VCLaV+YGV+CC5NT0
	 Tuvzgp9ba+fRL5nekmi0lUeqAnr8Id/QHCIn0B6/0S5gDGXHIckSO77L+C017a/3mH
	 AfUm3oeWvHiaOS/ZIRtCXIZlpFC/mov6WzLUQBsUYsspn5+ToQcAzLbykE1fPv9bl5
	 nyqlZisraDxlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB93C43602
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279551369.26468.10258265486459570710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747a2e80d89473d8a018fba1c7a052e64554d44edb5aa771effc017a1cf46eed
Date: Tue, 30 Jun 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782795513
