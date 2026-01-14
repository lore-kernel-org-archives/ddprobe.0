Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072C936E473
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768373035; cv=none; b=iktISXxSXu2q7iNAl8IUzMDACrtpI0hShIDLwL3J0bIVqvRVlnLGdA2xYUheALW5orH7FRqNH0MgOrtEinPMgyU09AF+9DmfryTp/yWpFHL9iA6NTI1jwntDEepErUrEnRlf+AcmCGAiCpfv7GCVDRi8YrN2CC+xjVaN2aeEf1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768373035; c=relaxed/simple;
	bh=mcZ57oKPhgPI92EYttsqkDAqNgi5m7WNQQ+zGZ/h9Qo=;
	h=To:Subject:From:Message-Id:Date; b=DZdL+TkJKfCcwJ3XOo1iyeV9cPdskljhohaLvggWlreT6ME99WIZj6C6VnD2SRoe9zE9j6MC5HA8IPKOGyKtCU2eQvCMc2itWK6kvyzNdKtnAjgZwb6VRNOXgYa6vzcLbNgFE1bUB8/2dxmWDIYizMyBaPv4MOleIau6V5GwGrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnQt5xwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnQt5xwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46EDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768373033;
	bh=mcZ57oKPhgPI92EYttsqkDAqNgi5m7WNQQ+zGZ/h9Qo=;
	h=To:Subject:From:Date:From;
	b=OnQt5xwQhC3VBd5GWgZdBB6M4J/es0nDgnFFTaLdXPuUprCNXQx22MmeK4CiDzq+r
	 Jj9jFH1u1ZK0L5iydc7gqmU3YJ0X4s1bKjpX2lAzsr9Ub47j90KfGAzw2Kf2+RmKY/
	 X/hKKGcp4mOx3G+qiGn5ErwQnj8Jq8jPrVVoHycPr2UaKTlbSYrL/gOMq2drefepXA
	 u8DRlb//c5lhKIeSsVcYWwYAKNb3PBWh3Qk0WfvqqBhEw6bOd6COZs3TmICPquUSuV
	 qS0RJJJmU78tWO4R1IIg5Hf0y1lyXPRxrWbL3pWDcHvUS5rda0a3DD/uv0gb39LhTo
	 GgVJwYQa0tyYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CBFD31A0F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837303357.24961.4858735205692903902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c808a162f341c901937b83388c11da9e0d73e7896f88b8ebf4bd9d174f05fce
Date: Wed, 14 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768373033
