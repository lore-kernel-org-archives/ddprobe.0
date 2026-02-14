Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FA72E7F38
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771044894; cv=none; b=B7lKu/uKJCTwB/vTC65589/0veJayRZDZBhzU/jWQ+fXLoTgA6SY5GO/DZ1DRhyzDDnpPZp7+ZH0DshlvEV4r+rVyZ3a6AWfs1P8haTzUpxWtNCvDgehWWYpGmcduB8tNWeKf3YnHKlI9Y7YUmLFRfUZRiNje4cjqO8T+jJAeag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771044894; c=relaxed/simple;
	bh=3H/Erb1LsIs8acgj2T9HrjcisfojjziWo5M0PXREIvU=;
	h=To:Subject:From:Message-Id:Date; b=BLcrpXOzTFGjKBEarXI5kTCFtyMIDK9Nu7mLvqz6zsoNi6MHNh73oPETcgaAUHLA2Z1BH3w4VKy4FRH8YH91d10hmJpxYFLQwptbLhyFwLXNZj0x8nVaapki44TZWjOc9ZIJdAIrCDB747MuGT+SALXu+Duqbix8VLkr+lhqEGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rw3ltiOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rw3ltiOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91A5C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771044893;
	bh=3H/Erb1LsIs8acgj2T9HrjcisfojjziWo5M0PXREIvU=;
	h=To:Subject:From:Date:From;
	b=Rw3ltiOVUWtZXbccmO+v8eqrdpdnPu6Y4X7/s0SlLbIAnfHnZ7jJHwZM/38Na2EuC
	 ucsBfoz3D0qSDfNtKAhERCaU6kVbwZRNvEqGveJPoZwrXUm014uU34yNbxHeO9M+4W
	 ud2ltpkRFpTcdGcqjOoOIxurizh0Ok7U6WYhhDgf65Vi6FiJ+VFGXsT9Y2lQAnsr2/
	 Mc2tr5QxlynhLboUGNrmTmuRK77jxzZ13lWzfePnE2roIuM3mc/hvHOZoAJsam0ltv
	 OKHLCYCeH31VOEvYPZB3I7ISORIcGwIcHdQ+N56Z5Hg+sOTEb2UajeBHknD23jglqV
	 gmR02TkNJgOqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946ECEF99E1
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104489359.10570.6560229358133219672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa9280c4c08ef5135ccd67c4652eb419b10e720667da58ceea330b1e4a6c62e0
Date: Sat, 14 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771044893
