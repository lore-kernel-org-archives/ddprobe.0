Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3CB10E3
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 02:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714270343; cv=none; b=RtJGvC2vz4vLmTFGsqqHk+akSTSxMlWR7U6FyFtjIEX+CtzqRMPxy4lWvXirtFDbkMt1kW/PRXRQiT300sK4xIg3q0vD1k5L0OLCfWem4gWpjhfH568WPZX2698C6nkFbMef2+jTd8RDABlR0tUgFC7BBMQO4tYt5M9TAUWjIx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714270343; c=relaxed/simple;
	bh=AKRzhTeQ2Ql5xvGDyvUBsChv3Z1u5NviP+FkhKDDvv0=;
	h=To:Subject:From:Message-Id:Date; b=rWnXVOtbpJLEgEWvRNJXvpiVCqLAx3GM+oXS6iXmBxBpS+syUrsXajrCtAeGer8RRL7y/ddv7jydDEc5q4JVUDuZBpbo0zGUknNf1w1ozmxhDhzDH/BSDSQmBnyAmhVrKjT4SgY9rhiDJgTSU7jtvYJJK7rre+TlnYTebzDeoNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIVOAtr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIVOAtr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6F5C113CE
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714270342;
	bh=AKRzhTeQ2Ql5xvGDyvUBsChv3Z1u5NviP+FkhKDDvv0=;
	h=To:Subject:From:Date:From;
	b=pIVOAtr4ynpBc4Q1TC2tTA8tFl/i27wSAmL5DLGe5nbcY+u2FXm8upxXa9bC4UeIK
	 UnQMM07PlY7dA4qa3PVLppktTuo6DRa39o1Ou2FlYaM1tjEdFFTxjWd98zWKuUzZw+
	 nhLNCTRngtiSsQt3znK/TJ4mpYCTbS9Is54nqs+brO26NkPRZkX4BLSJDrSKCXso2n
	 Su3lBhEb42t8lC0sRgN+GMRPgt+aRnwYPIOhQll3uE2I5ysrtLUCDlESTevYJFE6J7
	 bJ7bbMkV88o3PZKK2rw4hG3RU8IqPQBxvBFLkmy3zYC0IqbxKJm8dnczIO4J3306xW
	 5Vkp1S6O5TgvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C60C0C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171427034280.32348.1568450263236173223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02eed15af3534e18bc54edb4f05751955c05e1d11296a0a305986354d8f9a60e
Date: Sun, 28 Apr 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714270342
