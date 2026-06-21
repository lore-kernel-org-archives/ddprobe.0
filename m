Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F1F19E97B
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782023194; cv=none; b=EnMbIptw7G/7O/vFH2vNlFuhF3xyh5Jznso9SfAsBXwWvHpX/4nyIjB7fyJhRBHOKb+OcON2P+VReRAMgB84pRpw6kR2KlUno1g3mhjr7Qhf7JXgSiuKoN58dhf4+U3vO4QBQq24yHKTtSlnQ+44OR5gPOOtLAn3Tc3p4eFW+Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782023194; c=relaxed/simple;
	bh=KVZykxj7s9yCD4kdq6bOkV3A/XKEYH6+AUnrMoV1A0U=;
	h=To:Subject:From:Message-Id:Date; b=kQNTrfqAU0xCc8U12Y+NmA2UFClLDEH3vWIS8YxU+mNQt2balNx7Nj22UGO+C9/Q0BUVh2dfMMU+hw8StLNirvc7CMR2cU3gWKwTU2pcZE7VmdnYo5kNJe1bCRFvkiCzuCQSfE3rgw3YmBbiAYyeXoE+BMlFGw9l/N94eEYjy7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjAlMzCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjAlMzCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A0EC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782023193;
	bh=KVZykxj7s9yCD4kdq6bOkV3A/XKEYH6+AUnrMoV1A0U=;
	h=To:Subject:From:Date:From;
	b=FjAlMzCq7ABXgKOtcCzuWU8MfmXbsdshCn0WlNYN8yQ/vhaeUj9eN13mLvfumVWCd
	 9hv1bK0EYMo3cEQgpgM2L6XYfwujJx/A1M1xiiX1B9l7aBf0lqUIHnbS18cSpG6Qhh
	 IL3F07gKiY56jLGhVjTX0KhDCnWzNF005YBzavYp5F8DBRYn+Abq+06HwDsMy4iKPT
	 EnkXN23SHY8mK0YbLqV3Yjt2C2OrtUMApZsNmlUHY9tOtW4FzqacYBddhfudFMR5xx
	 9fiiWUgxIi84TbmzCW7fp7KdLAxiXDHQJT5XrRdC9xCX5OUfVjQwEnGlqIfCGqOOoG
	 6X/2dk7xLIvHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA641CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202319368.29789.3875564001941170024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc61dd3b45eff7a6d4bfbaf72482b76eb4669755c8a0dd827c97f1341b8ff32b
Date: Sun, 21 Jun 2026 06:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782023193
