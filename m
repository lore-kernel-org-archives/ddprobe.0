Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E1C379ED6
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785432034; cv=none; b=EozeSXz6OiCkp3Hms+pzZ7ywSh8R2BCe9z1+HpLhhj9qOp8P5l+odQrRGGvh0/hmJ9E9+Rtf+FS8DRzac0s6ET3o8+D+TmGSWFTj9U087FQeAtSK9Orn3r5vkGF9pdxMHEmLpbb+LBYqTJPjkYC9PC7VUMQc5P9hBzlYmOgFYko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785432034; c=relaxed/simple;
	bh=4u2r0is2C8XIu2DcjcFACAa5Zhcq/3E75lWt6KdHfsA=;
	h=To:Subject:From:Message-Id:Date; b=aKdBVfLzL/fSS/a1TaPDpVYZwt1JxqlyzT3eTcIGD63ulJQpjiHFspIaKrxu20XhxeA6ZQoroVVzR5TxG8eOC9l7vcTzKFVbDdaGmwxSOql5IQ6etKGr/3BbiboqVYL4Pj88v9mh4qdtp5ODz4GvctBYrRGPxLCvRNv6OfLhijA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IItX6yYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IItX6yYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D262EC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785432033;
	bh=4u2r0is2C8XIu2DcjcFACAa5Zhcq/3E75lWt6KdHfsA=;
	h=To:Subject:From:Date:From;
	b=IItX6yYJqem3qflvKqCZ82un1k6HBsI3G1e/yNz6YTezRm1NtB4WS0wPmisgIYqYE
	 QaeuT9HPiBqtOgVo5sQTXlxqdCza3sptRoqr4rsG0dehFnh8RAN/sQxilv+CRGV07E
	 UcALQ+cd2rhq+0f3DK/pyfQFoDqIX3nZpW/OgaQ5puWKRAmdRLLrlOLlgJl1TEza2a
	 zJ/gdp9rrWEc4OiZRzbuGJfDbDcvY+jqYCW/CMii70x++CnHdcjK4UlNchRK55l/Ay
	 vXI7MOan2FJ7lE3F9K6snXnP4z/jDTagxrha0QxFA394W8v/4+tpFzFDND3WMvBERy
	 a8vyAYjJVAauA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7D5C55164
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543203370.4448.9633331963963869048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6014262a2b39b586dd66adcdfd686cd0bcfd5349bef72bb09bce5fc388d481a5
Date: Thu, 30 Jul 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785432033
