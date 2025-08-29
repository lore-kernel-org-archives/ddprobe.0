Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20207221D9E
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756487995; cv=none; b=Ei8l7YnTz3PR3f9/oNtP67Z9HWfvTEy8IPxmfYTjrQjBSXTkPYcL+latxuduJ1RT55qdD8Tad08A+W6LafLcNX1t17f06+I/hChwAzH0ag+XfrqqgFI0M3sNBZ6iyBH5MkU8+M3r3zk6mvI9XQslyloyDEc9qqzTzseTquPb2zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756487995; c=relaxed/simple;
	bh=jjEFa2eh9WmnJ+r2zMx7y7+IBRYc1jzfWSz9l09hGIg=;
	h=To:Subject:From:Message-Id:Date; b=mrDyp0x61N8p4sTk7YQk/e4obUC5Wtd8lo99owpdmTYrKUTx81gpc4XsjcMhB/Xw15q+MADsFhIKx/C7TXtQWiPPzdFVuN2pVpI+bMCO2YopIK6vt/1RqBuxqrtlAut83IzvD+nU+TmUM/BCGvmK8dnPAd38kJ0Z5wRKjTULkZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlWtUnxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlWtUnxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3994C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756487993;
	bh=jjEFa2eh9WmnJ+r2zMx7y7+IBRYc1jzfWSz9l09hGIg=;
	h=To:Subject:From:Date:From;
	b=WlWtUnxSHN5cw7OnAD9k88btaJYdG+5bDffl1nMEqMGemSxbMGlmHvp5kJvkJqN+y
	 HUuYEr4pz6iKaDQHAdg8A/YTmoM8dpMf8b3+PGR+ct6VmUEGz/fQ2zWSFBJGeUlvBG
	 IVwW8Pa3oOttFR8ECR3tHi0FNlh+RsUTBofEGkpelC8Hv3JKJVLpa5XKPC1Q1aAGlJ
	 Rw0LuCMfrEPu3n5QUrmQxPa8Ry6otbSEG6CNYaeM3JMX7cYCZQ4KDEUe+wuanfspR1
	 HwMWc+mjFZV5el6nFAVFDq8jpdyiAwROtG2pd4HQ+NF+gPJ/ywgvSDVhWF128IecQF
	 wOQYlxyTgy9fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9065BCA1001
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648799358.10816.17727244174147163144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b5457b9c0a7f0270ad14366d377428a8a9f6a9af83d9dcbd84551c09a08922f
Date: Fri, 29 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756487993
