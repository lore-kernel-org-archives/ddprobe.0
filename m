Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2A35B21A
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754036393; cv=none; b=Q9B2I6PLE6Yq2tW5I2WdKstI90eQU+uXSDzFC9+5JDywgNOIFolgzkywV2sPBpRUluHJy8Wv2T/aTu6VqiGCCzHpogjNqZF4BeI1xR7FPb+jQ/voNlbAcTtNNQC9TpmykQ8FyORN5meC4InMX5SHGXS1hG7mLkZYYP+iGBRQIDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754036393; c=relaxed/simple;
	bh=uWZFIV+QOf26iHhBVKjpDCEdDXGc6nbNJewHbLowTaI=;
	h=To:Subject:From:Message-Id:Date; b=KzvyszDmyfYCRF4cnW+rHGMsAUtYV9tRPf0VJqGTlpB8HtCpCvk2UJ8cr8ERB3//QojYJpvHGzqy2qLgLRUBsvFEKwD38Q22dPN4ZQHJB/LGa9KnppiLfG/pTzYqLwSQ27ybMG9NtTtvEgp4DFLq9NeoHwz27ad+UJ2YmJ7dMcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fb0xhzgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fb0xhzgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3851C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754036393;
	bh=uWZFIV+QOf26iHhBVKjpDCEdDXGc6nbNJewHbLowTaI=;
	h=To:Subject:From:Date:From;
	b=Fb0xhzgyCfagIZphvhOPlrDyNN3P2U680kil3HOgYDlc199GdfilNPPP8lM5e2fmM
	 igEtTfGmPIi/zvKAeuyFd8TxXpXY9pqTsQXBS640RfA8gRE6osDoYdAqkZ6oZw+cYJ
	 GFvmV7oLMZOHiXdNkWTHkgciX9yRNJUVwew0OLWaOWTMMRdjzwjA8dYDSmIaiUL3Aj
	 ygFLJHBsK0c4omZKi2rfrPQ++BIL1R9RBWjema8W5C8z7PsLiJbwi+jfQTbHqfmZz6
	 A7MqaHJ9IRkbDKFwmxMUYXNrO3RFOHtKOYRoDAsy8Mwyzm7Ilf5r3CxPStrt9UwwgB
	 7l7k81P7++iew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93582C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403639358.15368.5088938345499815138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff9a32a08896866359702d6d533f6a441e67710bf1326366cd21f6a34d25f73
Date: Fri, 01 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754036393
