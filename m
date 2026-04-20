Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191B220468E
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776661654; cv=none; b=drPBXwyhabhW/4xEKwWJewTzMYTsc+Yo8vhhma9Z84+TpdO/gixGJL+m0t7BkfxaawS1xf0vMmWRFMavjhngMk8EZnqPeIPQyxJ7ah44E66phTMgvsZhzihnGLFoblAmuZQUzlKnW7iDD06blizEyzd1zdRMN7ib73tj18atMPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776661654; c=relaxed/simple;
	bh=9BRhPKKnmQjLnqD8I7WMMLr12ejes0IYaMrmfaGq89k=;
	h=To:Subject:From:Message-Id:Date; b=jN2J5D7dlaAPL1oWhAZuW+mEspAxFjnE1m5aIoQdEZHySW0PYHusviXV/ULwD8e7E7TypJDiYwgB2dKIOoOoqtFu/StFp0CpH7CL9Wj/TvcZ940EnRVC9UiBknIL14ir9gp8g5kGLiWE9wOwFn2hwA/zyM7pJfTmJ+G5FNGOhsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyJKIoL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyJKIoL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD599C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776661653;
	bh=9BRhPKKnmQjLnqD8I7WMMLr12ejes0IYaMrmfaGq89k=;
	h=To:Subject:From:Date:From;
	b=uyJKIoL4RRCH/vyAqx6MAVCkla587jSg9wyg1L3aIw2YAd5BDue/wtGs/QPRzLVO0
	 G7F9lQ8fM0hwg7Uf1Xwy++5vN3GajSCjX3jtcFBLdAF8p4Zbb8JedQdi0ew0bh5b47
	 WP63jNx/BB0c0QfwWsteeYpv+kcPntT3Tt2S3lwFWKZuAZD24FpkKRm2FpWew2DXSs
	 parvWFpk5DP2RopXZny0kpAmhV3iwgRP64R0f22z6ZKDCMuQqu+iGdYV9bmU3WFQx5
	 UkwOfN1pgxuFvZUPC+Fr3EFzJlgfJMgLiV3sUVTeKtmU7S1ew4VWTwm4LjkLLq9TrR
	 h9rQn2LDW7THg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7E8F3ED70
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177666165368.22201.10171477826450868026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472635e028aebaa0eb24905ff14614dc7abcbc76d5e9ea1b2175ad80b3ff6dc8
Date: Mon, 20 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776661653
