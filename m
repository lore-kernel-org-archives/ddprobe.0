Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE1D4C6E
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712954363; cv=none; b=A+JM9A6DtoZieV9wdATGAIjJ1y5LBUz9Bk3xOEE/O2A9qEdbhOgHyJAVCH8xUAMEETQYHaNi8uronD9Nzqc5hfSrH4a0zA/D8WHnm3xcR7pZ88nyBaKL7kNNJOeIH9Sw5zBbFFQ6XlYvnreHiiZsAdri03sqWp/4wnhJnQM4ynk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712954363; c=relaxed/simple;
	bh=qeX6/QA8i2vuQ0gy3HBc8Za3op/k4Cwy+VehJMNmktU=;
	h=To:Subject:From:Message-Id:Date; b=CORoCnGbCfeiIuc89FfeiPWBwKTAFPSkKJn+XZt3N2/kPvleRGELFEmjiRnKmbQ0Gs7zxQRzN6EuINAF5/dKJixkkEh4OiJI1JViV8QqvgjpBua027XWt+dafcyPlTaKVTCtTWLgKlUhzSat/Aeft9TDq8ZGj7GuSRfS+0iWcZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7yIo0ad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7yIo0ad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D976DC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712954362;
	bh=qeX6/QA8i2vuQ0gy3HBc8Za3op/k4Cwy+VehJMNmktU=;
	h=To:Subject:From:Date:From;
	b=U7yIo0ad4t6jrnGFTWCEtVdnmIt+bJ6EHaCjLA/rUfdq246nShbOlqdSbYkindUhW
	 Sb1/x2kQBXY1vLK4BW25cjY8V1IiwhSQFJ90TsO2fVdLEgTclGVsRpPv11K93OS8M5
	 IF/g3E7R5mDGX5VkvzwgAvmMFJ4jhgquS04DLx9q3jCUk9/hqp9cs4cUUYPNr+MLeo
	 K7G58bczVn03Hg6ucxEKyC9STJU1A1rxi4CF2ftOICPHn9k0yf6LA7ZpME/orkqYBE
	 pXJfRueFcj8BMlzy/uK1epTwnQT2CUvWbQ7QJKSNLmokjmgBQj9si44u71iPgMlNzL
	 aqocGDzbwoOEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C03B8C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171295436276.19730.1643269411349590416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42c951c5c4fe3c61c017a933322366cd2a23fd91815e6854cabf1839dc52308
Date: Fri, 12 Apr 2024 20:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712954362
