Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDE026AEC
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727691954; cv=none; b=G2DG9oDAbWSXQnVl4fyGmC7O2M9Fuf1EQ6PCAw0sdjiPCE3Na030A+Fe0RUHlD7i2tRxCmDV4zZld2+nnE+OlAO07d2LmMveGSeKdV6UQgBHR+sxHXt7iTqxKnO4/2HBnOsCMnpTleZnLI4Lq7JavCbp/AKlcoyHOt7UICw1DlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727691954; c=relaxed/simple;
	bh=8t6/vKnP8hE7PiLXbfyxfP4bHS8U4Jp0J3XZfkD0VdA=;
	h=To:Subject:From:Message-Id:Date; b=rZA+hU4M5B5m3QjfESK3oxU82bqo09jFkuQ132iqfHDPhZ7DZVqOEB+xy1u/vWs6ZsundPi7WAS0vqeOsAW0ftRFhmUZ+npaAofy9CFsQDNxlNamUrF9rfiejMQ8WgaGjTFWCJzEmfunh+5VL/4Q6fqJewZHW6lFBW1L0wCxdOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkHsl9C4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkHsl9C4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF1FC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727691953;
	bh=8t6/vKnP8hE7PiLXbfyxfP4bHS8U4Jp0J3XZfkD0VdA=;
	h=To:Subject:From:Date:From;
	b=EkHsl9C4trWiI1B4NxK64BOHXOhiG1ZP1sXkUqBoyZiksnI9OuBmP78HEsqdnocsA
	 2Mojah99OfzVAtrq3wzlJ1XG7TiccSRqXg/SMq4HjTSIpeFCbxhJTA82TYxKNhLEP5
	 zxxAi/TZZPiOBozQ0GMgFk9Anb5itvGSRRv6klIy/6bj2srZBkHHI8V7ARXnMomAQk
	 nPmPJzmyPl3n5gt9uf3+DvUKojvPnIqjyRwfQBFK5kYtQEw/I/W3WKsR4lM4U5/X2s
	 3TuuKbxlDfJ1Lr3iFY4Py3spQ+vaEKE7KlUbkA9miWmWknEzE8ji7TpRXweGvWBIO+
	 IqdIgl56dGIgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91254CF6497
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172769195358.18169.2191048758781490913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c8276f71cf98a6a3189edc44a71c57afc7493b609993997edfb4b6e7db2535
Date: Mon, 30 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727691953
