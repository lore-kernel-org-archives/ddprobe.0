Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE95AD4B
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747616994; cv=none; b=aiZX9c2G0hQzM0+jtIvauv04P+UIBzJpBbPQUBDOZIAHBgBoSnecr+kP8K9t9cUqZMVopU1kWtGuutDcEDQ3/nmKUPkCCg/jT8qUYjUb8r/wUxtbfmA/8btgww+lG9hnyXajCeZYyrzJyyaubhf44sSKCdGJgPTbnM0dG6ihApI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747616994; c=relaxed/simple;
	bh=D2ayK5hFboAdKEcHrb+CLe8w1NdSHocjBA/hGMHqKuA=;
	h=To:Subject:From:Message-Id:Date; b=ZbyJ1DaeFShkP9zlmzr3edhgXwwSfhcyPcC2ys5K4rXdqaTOYbr9V4w0QwXhnv0C4Ykj6AJGWaC9tBL/qo8bxfLNACuRFjDu1yWBjGHr1vhzq0qsbfP2+xrYEukA6G7WSpixorip0Hi4fbTYe9ND+RDIV7ikE8XOcg7OPF6B4qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sv9valJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sv9valJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A701EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747616993;
	bh=D2ayK5hFboAdKEcHrb+CLe8w1NdSHocjBA/hGMHqKuA=;
	h=To:Subject:From:Date:From;
	b=sv9valJ4mdYvhlHqyxyPU/in+MVl5+qXXxYKMaqMi9zAWDj+JUw1y4gig5cpg/L4R
	 /9kZ0f616GTMVCZe2xyLYWvVIWrKeRj+Plfgyfj3l0A2WoaacEIp/XIEbLwFZ5JdgD
	 EeIbyEn9ugUmbwwtpAZjT+xPf+up1tk6OafQLzbISkJ8Ywp/7rxmdw8j7YR7M6C4jr
	 S1qyW05zwvkbRRXzfmbfQaa3hkTjOAOCIELrjL/24w6o10rY8MxJsuqtbSuca7huLN
	 6X2FAMljB331PGkAEp9YcObn58XXqDvxCmrLD/tPXe8/pkqMHX/YNLkfs5M9LjiI7w
	 8Dggy7a/bRPOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C35C3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761699357.23645.10457671892455468137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a89b751e288b901ab64e24c94e82d4e76eaa1a36f959a6aa90b05d7014007cce
Date: Mon, 19 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747616993
