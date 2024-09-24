Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366C71B85D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727154954; cv=none; b=C8TdJOqeHGw/eMRaIbgprRN/fwK8K7eQAeZDgo/oLmAUurrGklM/F7PBzrt9LP4kkzGOAHQ1LmPF0QLmOEhnRGxCgph8+e9B0RPLKDumhqzILHqtppvbfz/rdF+4B4FovtIZWrU68DqBly4+xlL2eo5I0V7M3wfRBXCNONI8zh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727154954; c=relaxed/simple;
	bh=RFgf7ndQdiKix5MpVXHSm3Edev75bPw+CZhvZ8Yzpwg=;
	h=To:Subject:From:Message-Id:Date; b=GKEbMBZTVsLO5+Rs+K7DzoKNXAXrA+UYjaVVG0cw5STu7Lz8RhCNtf/0anitqrXfnD1ozFBcejdnyzSAybrcAolhGyPZKPdFngqBHzneN8e8PErjDo1N91GGJ2j+n4i2s+2P3kXadKS+E1MxOsNkPymZAv43MPx5YiNRfr4eUqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtb5QqDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtb5QqDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD77DC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727154953;
	bh=RFgf7ndQdiKix5MpVXHSm3Edev75bPw+CZhvZ8Yzpwg=;
	h=To:Subject:From:Date:From;
	b=rtb5QqDxIh0OEh5cYczqH4CML6oEWm92aVFszdhfrNenmdKSpm4khLcvdEHptXXvF
	 Byp/5nLGtvp0y9V3SacDVRSOjhOqDvDsLxXTFl/NNK31yS1ufzjAtakJuxD7pTVG+u
	 CnDaD5um0j1yOebYKGC0TdbKWHWurNM3SxiMzaV5uzId1g5C+0V8Ec6Xld7cDZNmRc
	 K3nFVJwzwCPAyw5BmoNCLIkkXJ2O+tJo9D3N5tpxGWGvIRAlZ0+quDFFVjgEzrEb5R
	 ofdEjCEvi6RnhBZc6B8Ird/Abdq8KLM2c5XcshhR0GusIKBzSJshVZgzX2gYOoezbi
	 joDQc6sUh00nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977C8CF9C72
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172715495359.32298.914618092712275413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86f399d294f8d078db22b6023522de67e31b6206ca5d3b7bc512c48c9d18c07
Date: Tue, 24 Sep 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727154953
