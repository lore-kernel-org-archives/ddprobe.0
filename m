Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3943A3BBF2
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763746314; cv=none; b=r6HvK16INqAchote+eKCQNbnK/XFudYIkpXqpdQxMRK8ZsaK/4kzpquIVHBhrKSuYNUS13mfGDb6/iQ0yaUfnI7XsuIY3e5QXxa/FKWmTTEwYHOFY1fIE0TnMHMrlKzT1l5c2D050rFLfewjBCR/QP3FNTSaTvroZiBaafEQnY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763746314; c=relaxed/simple;
	bh=nAt9uSFE9yGDDmLGHh03TiZoplMgSn+IPoVTQLMmxsE=;
	h=To:Subject:From:Message-Id:Date; b=fuPXmScOy2uELl6EFd0F8S3O//IEB+USTfNepObARoCuLNRKWav+2OtBBacPpGEvkTkTGotKoBbbwmkVeSGywiqSCWO+VUdNMdt8hDr3GlZfsS1oiDCO9aV0Wp+cu0Fm4IenKGsEsCzwrpGiBy9iC+khG0Isi/xovp05NRO+vN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cu1ZM4FC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cu1ZM4FC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B5FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763746313;
	bh=nAt9uSFE9yGDDmLGHh03TiZoplMgSn+IPoVTQLMmxsE=;
	h=To:Subject:From:Date:From;
	b=cu1ZM4FCVY5UCKSyuzLWfgl8HWGUCpZqaCYaoTI621ZYQKnqQQQEk7Zi/LjfjYRwJ
	 Uujjlhh7QcHzPrnbekQBBt8xKYZp4AIquwXVC7jGbUxHJNY1nnr1ZF81I3FuS1LUOf
	 /iiRL97c47cvhyuO6p/Nols+TC4yF0V92jm3HFK/EUK//J8KlRL5NY64kLZTH08SBx
	 xSDP2uuPazWmiGYxPlrfwfzGWcPA0u/orMR0Jnr6AumLuvsDYQuNFD/R2qzeOfDkQK
	 xoVN2GqSEq6uAsb73d6BsQMRHLsXft9v1DHiitRFH0ZCoLvUhrPYewCxW1I3Y4qIvw
	 MtmTFlF5B7dFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95434CFC295
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374631359.19391.5185776659574834881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965f5ba9b278bb6f2552dac4ca391f33b30b315f22564ba570069db65cbe17a2
Date: Fri, 21 Nov 2025 17:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763746313
