Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8441E7C03
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765672974; cv=none; b=dPif//OzqJyAFFurZGjHH+GgWfM3YDffrTuHNilw4Pwy9CdSQOY0ylGvqlyZ53VjmnqzL8o9X1qsysHpIsuNszdh6NWLlo9sUAzbUB2m/VmiknBFztLHqq5o755kJAt9vYT1UXkFdxVpvlKYS9hjKu3EIN/eGXNrkKczNiE2vgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765672974; c=relaxed/simple;
	bh=kLHG6cMgbOFvvUdHBW3xLpQCX3TJ5kArXIm70TT6Dw8=;
	h=To:Subject:From:Message-Id:Date; b=FlgOtIzHe8iUFt4rcEq3RpG7JlcAizBTrQwthFlRqMU2IymNVL0AeN8ILlZ8HMZOuwZJlvLm3tE9RTLg3DGD4E/j/cJi2XUG3p9ZrAIZWuXZ9jwogAN8XyLn0cWWKoZ0xAMEliIVDTeLkoDVwD3f3X0XjsXHlwf3x+rj7WZklz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0A50Ahg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0A50Ahg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9E7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765672973;
	bh=kLHG6cMgbOFvvUdHBW3xLpQCX3TJ5kArXIm70TT6Dw8=;
	h=To:Subject:From:Date:From;
	b=b0A50AhgKxEBIA//xyoTu7rtarlS8+yp4f9I8NYxJ4joUjMlN7NrpDTnlHRRH+9Kx
	 5APiqcSGI4nxaqYoVHRX1LjrjKCQ7YeAJxEPPFew6TvZufBtBXIt68K9vEJabR8gqb
	 DPuf3dFZte6aA4jP/Ty/Tb0IXjRP9OkT6GvyxohDT+VIBTPGXo+Y4uiDbXIvHDNSrX
	 VlAmZSA2c1S+Ba3j+0ODTdUqUxLqyOHYTde+8t8IBpyqTzzstmgqZtq7HPhv0JRnCU
	 //r3MWPQwzV6Uqc2w4yD6IxCYTs3Reoow02FWbTCu6B8YqmNSxo9x4lFgb0I+9A0uz
	 Ta++Y5XyPV4iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D8FD5B16D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176567297359.1386.9130810697510550484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c0de6ddbd3724ed191b0682943da120930d2eccfb58e2a0bba3cac4c08bdca
Date: Sun, 14 Dec 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765672973
