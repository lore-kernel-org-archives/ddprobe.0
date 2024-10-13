Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC3712C54D
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728813954; cv=none; b=Haw6OpRvgpIfrPQgu7RQI0N0+puiYF0puO5If6h2eUGHtIy1Sr/s7oY15TulUzlY9ij8+ZolOFE6cKnlBVIGA0oAtWdrzBQjtbgo7n1DF84InPHo8HWozVdIjj86hWMt8fRzc7zV0gWDoVLWFqJgW1DDi1WYDU/hLeYvkDpmIPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728813954; c=relaxed/simple;
	bh=qPQRUzWewNsld2nG5hph5LaD0/HXdBdw4txR13Fob2Y=;
	h=To:Subject:From:Message-Id:Date; b=D+Gam85diF4IHB9OlzaMn9GjhoZIyqkwU7VQYCsknYorUHdj/VElvClxM5TCyPBTqPIv5mSMfZoR2GHlkh9g2sxcqUsdGFnl8REH+OXDoiD6FiuP47hwbbjuP65TSCEO6Dlh5pH+oVs5bIrEl6LolKQMX7ooRHeot2M1QZcE2+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3q/a5GH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3q/a5GH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B34C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728813953;
	bh=qPQRUzWewNsld2nG5hph5LaD0/HXdBdw4txR13Fob2Y=;
	h=To:Subject:From:Date:From;
	b=j3q/a5GHefi9py8lxbrjwYJXhXbFzOpryQC59uwVIuJMNFUNBNGjtXjkXziLP1GkT
	 LgPKfhSfrSr2qsiExzUwkW7drPIweIbERxITalgL7UCERfHICBCSKMr5Pwc92W43YD
	 ey3U89Z4UfI/JRJAcd7gddMLDnRH+ZrlnI/QL2HOcYarzG3vZi9dxK3/WPbj+rmq3Z
	 n3bqLmm44EoXlPB6BfVLMt1hgM2AK9aYvSF//gdukwJIAvn6y5afY1VLqiXubi7Fia
	 jY2Df0IY7cSpdrgaYV1bBtMi1ia4urx11/kWteAXjzyKl+J1CPxzME3CxndPfXClkf
	 6Kv8pvlsNwc/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E09DCF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172881395362.6575.17241464876869540217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78941260cfd78d18f404c08b538b5bbbdbf49173f34ce8eab890483ce692af86
Date: Sun, 13 Oct 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728813953
