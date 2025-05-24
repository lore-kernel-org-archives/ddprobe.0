Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C10244692
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748123994; cv=none; b=Ie3JV7tqUs3FiDU9fj0PlSWaOfSkEZgCvfGCUWlsJtJa4Xx6TGHbnD6aoPizede3Up2UMnP1wBF8mKbi7P0IZkULLxzpQbTQHvRdPl72Q9LU2/p9kQq4l/2vWacKUB43WmX45pPPJE22Su0v62bjaToChZmZy8bqB1eWpRyRp80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748123994; c=relaxed/simple;
	bh=tpnzQb9FzcROLrQ5OGZCxprUhwtUA25amzp5t/tZeqQ=;
	h=To:Subject:From:Message-Id:Date; b=ae0fNAb+s92zh+yn3hX8XkFl6cAnRuaKv2sFBJQDQ2rlc1SGAJy+MVOu9oiwznRKhKWGcS1uANWoB+8VDsnbYW/RqhTPxlKZFnYcb7QLVRwR4anpoJ7qit0C4HUKw8uJHhp8IOJXCVFvEJ5pdrS+oSl294N3yWvaMibOavpN114=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXH59EHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXH59EHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A520DC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748123993;
	bh=tpnzQb9FzcROLrQ5OGZCxprUhwtUA25amzp5t/tZeqQ=;
	h=To:Subject:From:Date:From;
	b=sXH59EHQug6EVAUSPLFFaYDOJGksYiWhpeLWXaT5j+tM6o4MVPTh0EvACLSb7zJLR
	 7H/xiEXraOqDtLO3V2ERoHhDhDSUXbiMnyKE2JbcvZpdkLkgr4/ax/l5uFA1gCWu0b
	 LTJUpM1xjAMHYAsLIcrcBGi0b1BdybzIgcIE7hyNog6XYwV2WNGXho1x2uZW8+7Rid
	 jgW4xHy6LA4ODh+alzKP/OzlE4AY/AWjoaNSWAO+PZKQZMm3FdL+ew6iVvdbOS04On
	 VjMT5CNmk6ysiiMJxsGEzUf6fnKRfpmEkmjNFSl1q5IkcJY5J6wJuj6oXGK/NDmog8
	 Dsj5tb6WnB9gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91085C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812399358.18119.9462931325496243208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2348b162bb208076cbc4877dfdbfa5e043d8d4f98a2c81da42dad2b479874248
Date: Sat, 24 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748123993
