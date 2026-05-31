Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6C6311C27
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780235674; cv=none; b=jJqXyK3ch6+aNIBo5gKdGOBvRUj/SsGRgT7vMILW2GFk1fco4gdiIv+DNdFr2aNWMzMCltT850iOB1U/1LtraDqxo+e1QN0RpI5vJ7FgOWJJZukx7w07VEwmQSO4qt1ld4+1oe7su5ZKuQiY7VDc6FA43/WS6W2luGWth6MdMLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780235674; c=relaxed/simple;
	bh=XwKRmZ7scpG3l7zEcYhuRiD/i00eFX0BjYdRl1z6Rz8=;
	h=To:Subject:From:Message-Id:Date; b=gIMidl7rLqNh6zoMVDQ+Gsk18ixLlYIBZglR3+FnTNoRuAtDXa9CFsGp6xQ9lALMDWMBLgFl34BFwuXuwLWM+I2MnxJe09UAv26q1yKD9Z4fY21AozadxnBa35uaBMQfTHe8S4ATurD8xjsiMJNhUrXsVp2Wn9Mod/1jKgpk/cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJT0yLnz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJT0yLnz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4171C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780235673;
	bh=XwKRmZ7scpG3l7zEcYhuRiD/i00eFX0BjYdRl1z6Rz8=;
	h=To:Subject:From:Date:From;
	b=JJT0yLnz/D7VTVVpdvOJ7zDZBQ8w6tWWlDs6uztTTeNZQNuKmGurgcEVEkXmMBaZn
	 HF4onAkiZKcIPJeyJhHp9eWj4qTuehe3Ill1vr0Q/tbzkGYHpApO1R6TOZAhrL9vuU
	 zf4/aJl/E8QUZMHwxE7lc9wkC/rnL4Q/ybJWEmSxlQIy/dNNLI/oEPjc4VLhCMKEAn
	 i/6qVJLAmCdvJkx9I6KuJBo7UVixbuJap0FTEFdP/uMC6AGLWg1JoFFS5GaBukXsPh
	 +wXuIwQWj3N5u7iVzvWaB5Q82hskqhdABxu98w1I3tH6cfjxFCIrdFpfW+d0k3KjbS
	 Bm/qTeqWkF+nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBB3CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023567367.4251.16889263335348312831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478da583286f2677845605177f5a96e857bca41be20a7c7e912a1004577468dd
Date: Sun, 31 May 2026 13:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780235673
