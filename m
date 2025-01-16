Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187AC1DE2D7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737042354; cv=none; b=KAfQIjzhDph2lNpCaitcHHqku6GSQXSghM0N8tWU8LpT2aXd+9u55bJC7tzB8cGajbhw9ij88hu132BAfHy59g8N5IrLQuRLqnDVEmSqWS0t5L2oQ2D1sGlEcuOn7loP0LjurVedclVp6/9WnUpGaSD7SVak/828IdJH7UO4xVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737042354; c=relaxed/simple;
	bh=VXEb8kvdqbDOztMq8LdPO/ZrKqnachKHowlswcmRRAk=;
	h=To:Subject:From:Message-Id:Date; b=JXOXl9fa8azPsHsafW8O2p4WtGYdirlNCUK0WEP8O0MrJU2LVIySV7K7RWo2n0seE8gRr1bwGX14EONfEDo0O0HmoVpIeVbapcbR4MXNbGVGTbmELxEq2bYtIhk0AboxDJOc2EALAbP/98RJY6x3EGFfo8PB7lkMBiLfUV1IUx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhFH0vdR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhFH0vdR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA154C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737042353;
	bh=VXEb8kvdqbDOztMq8LdPO/ZrKqnachKHowlswcmRRAk=;
	h=To:Subject:From:Date:From;
	b=WhFH0vdRtNgWiTyvv6+OaL+fYOMKnNeakkFnrAcEg1bhYehSg/HzxudJeb67sUcx0
	 k/mKny6k1TTv+5EDpWogJua7n9O8fO9PSYzy/ZPeIKeY9M0zLYrgXoZpqTJ0wBEPK5
	 dsw+YgCQ8jAbBqwMOoTErCTdg/ms+xrW8+bIWi+orrYBlAWwMKUZWLL8Jc7KX2Gkbj
	 OmzhiYu2IZLsqyn9sSb3b9p4DsXg60i56SwGQifMKKEp3yFtOe5uLHkTaQ+qio2lYv
	 gaDvyx9y1x136j6IWcKiJRg/N1U7ubiK/zo5+/xck7R8LZ1e4zhY+FUK43Sz1K28z3
	 N16PRW428NU0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9895BC02187
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173704235361.24582.5895995809173019622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d2397ac90e03c46d4f2ca28ca7490bac7e750cf3a8d587fa92ff4f1a94eea5
Date: Thu, 16 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737042353
