Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416186DCE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743337794; cv=none; b=amMIvr3DfIAxD+JipRWsfvjukh6ZT33g5+So73xPPJyx6Xj9ZvZ7dWDY+tTjKH1rv6qovLE6PCcETGRNi1mWOb8GWMIhWIdcj+A15yoozJvh1HMn0BjSj2xrV9O1zYrNspeOFOkOSOZp8JwMxIW5TkJuuAt3eWu16zqELKP6OEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743337794; c=relaxed/simple;
	bh=NTryE4dqg5MNHqPyYYUftjawaKNbVPB17CzGoB5AZ/E=;
	h=To:Subject:From:Message-Id:Date; b=mpHj2k0A48SXQB8wi2v9FwmiiljFx/ZGYZA7iQ+A/DN4azRIzPwX27ky1sCzHCfpdqUsA8yJwJuuBx9U+MwSN73U+FlHx8eP6D2LgvOdWs2DC748jB3piIA4FYTPahaawweerGvu8alyDAkOKk61RdsLdDv5YB7DNWrH5ygdbK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noZGYHcy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noZGYHcy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE311C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743337793;
	bh=NTryE4dqg5MNHqPyYYUftjawaKNbVPB17CzGoB5AZ/E=;
	h=To:Subject:From:Date:From;
	b=noZGYHcyvmmfXPJufjcstt+WO4v1WsSaQEfvUkIOK2ZmKHv3NK2VTG/I7ZnMj0Qpt
	 08/o6fTTFU0J1ISk1LBjLxBfi4i4ZmLI0e5aBwBHzp3SDhYNUIWkorBP/GnK8SEI00
	 6wsDwTl3BGuAtgHn5bi/E4bFClMt3UMxxo4QVKVDbnoxRu1NFKkYKy2vjfpMGajxlR
	 g4yrMZsk/rXkWFs4LcBLvTvB/fCkX7FJ3WmFb9RpBd/k2d05eccQR33h0d+giWMNF/
	 9SdHE9ym0gRT+0iD5y3/NnppniE0Vh0PqozN4nXpWoeYy2FktuwcezUZ9v0eW1u8W3
	 kR3zWjhMdl28w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C60C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174333779359.29042.8660279816352478757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d72a333b13d994768d558cc9090c3d51fead2f84f2519789fe7c9774e7591351
Date: Sun, 30 Mar 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743337793
