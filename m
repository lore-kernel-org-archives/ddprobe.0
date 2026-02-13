Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFACA2F39C1
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770981894; cv=none; b=SwGvLLy8xGUXHPUx/AslG3qfPKyoVVNgm/ZtFfZfliqBcN4YSvNTdwN7rerhfh0jYx7CmehPRYgF8NK8ckL7h9cRaEzGRZhkygkK2EEMXBw/r0GakIrQgj8V2ByhGddVLAm0XsdDa2WlCV4LCUSUVQq0pzWJn1GouLq9A+QX5p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770981894; c=relaxed/simple;
	bh=R573/Wb8gdXoxDj/91zCx4SwObB+uY1wmzQMPGZrEuA=;
	h=To:Subject:From:Message-Id:Date; b=nfgfOTudPtZbdIk8cKOu40jFa/ATdoyRFYt7zihwq0XfpXwSi0MIKCFAxD/hDISsiqJ8BDG8rJrNjhqKkU9L3HL/ltryss9jIpm70IgKqnvjNQJ/BaLhpsuiE4fq7zVe4Fmu710wcMJPl2sT8hJylw6k3QxlMWjaSljhPfbS0x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0BEHk/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0BEHk/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1D8C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770981893;
	bh=R573/Wb8gdXoxDj/91zCx4SwObB+uY1wmzQMPGZrEuA=;
	h=To:Subject:From:Date:From;
	b=M0BEHk/wnEi+RV++GnKrGvvbfYmBwZHuSFbzrqwLjxqHtV2Xy6S0utS6UHXbL0Dhf
	 r5k63m/OUQDnZ5TiaZRQyFDX1PoMg/miFNEqHN4eoZMzHpiSlXkEkgsnv0oZ5ggegh
	 vKlAqmdnCPBi6jZROcMz22e5c/sitk11uhK83ziaNLcFT3fIWB4C+MsL/7VggMQwfk
	 aSZupHFOQpnnYE9wN8qzBTgaEilVezQdmaVFciiDXn2le6wjBMy6DGu8bVn6RFF/hq
	 j95tslDW61aXZk5DLNSWzOCU8+NQPlR5nbdG2lB5MYMT1DvQb0p/RcELjFMoQl6J8F
	 1dPPE994fmdEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A47C9EDF154
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098189365.9442.1096424134770707371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a4501f0ff6a257e3cb0dc87e4992e37d10946908e43b58f0f7179f5b95f35dc
Date: Fri, 13 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770981893
