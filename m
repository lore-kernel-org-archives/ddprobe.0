Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6F926B2D7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775231134; cv=none; b=JTZNd5ptNGQXPNwCEBAPZ7rlANoSD7mHFZaGhP90TOzezanZ9T4s7AQQQhz0yezb9wlHgivN79casfbQm6q1CmZA2mqPzf89sOJQrLBIYmsIduTrD2AAEO4h/eDQ66fIq5yIjr+1tJYgftczo7EcdzCNK3RL1q4S76HCepj8Oi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775231134; c=relaxed/simple;
	bh=eP3CvLuzJZ9I2GfG8LfsSsnTS8SWIoQE0oRIeBa8ZXk=;
	h=To:Subject:From:Message-Id:Date; b=G55BjrvQFrQddLGh0gQ0DmDRiVM9tdjg5OjMFqIQVSZqqfi4SgTSONXQn0ACnG3z1seYrQb4T3rBIE+w6x9LaizzT/humihx8eisKkeEhOsK/eWngAUeMnv8NZrUhL4xhwcQS6CUUMwWfOG/8MvtO2I3TFy6awTTOupQ0MNSIAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmM2I2XH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmM2I2XH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63A2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775231133;
	bh=eP3CvLuzJZ9I2GfG8LfsSsnTS8SWIoQE0oRIeBa8ZXk=;
	h=To:Subject:From:Date:From;
	b=LmM2I2XHT1X20E0u8yN1Er9WRNxbGuV2LRHbO98RkCJ6iPA6COTNogoCzPYA/8TwN
	 kD6F3u5iTrh+ZVUzNGIjPFrOzQiWrlLQQyh6Kh4ipdWNGS6ID+oaCPfrYyjLflBVvw
	 UULS6FZR02Mf4pVabNGOfmW3PObCrp4nzQYVJu4AYQmLCb7THnIQ1djnitCxksR8TB
	 0Ji8ZjrvdTBivCdzRfmN96nbZ+4gUwbqPmwc6/mpdKc6BhfgfJqedz0ojgjHlBOQW9
	 3yMwv0z7toXUn+Jdb7RPPhaHVEWSt1fT2+qB1Qj6qpsuRBKQuBvWWNjgNOptoZfdc7
	 yH2QvEZCGl0bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5319E8537A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177523113369.25698.5059095206294501796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1e5bb1f8170c62dd9d645362b4a76419a3e4915294ca0ebc1c56b5eab263cb
Date: Fri, 03 Apr 2026 15:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775231133
