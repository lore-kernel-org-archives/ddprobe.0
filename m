Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212101A9F9B
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776623254; cv=none; b=K+EEV6fLDoeRikNSAghLQXeSO7ntLpNhygt4/R6LDD1ddjEiTk2YVq+9+b+j7+0R70SP8eObDQS8zTWHzmSvAGg9eCJWFCuUG94uTxvud/PQKm4ywSgqLFXbYPeEqQaOkdHs82aaE+jncG9QHABkWl50dCa14s5L/8mEX45Ms8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776623254; c=relaxed/simple;
	bh=IwCd4oHDUJXGKdX3sEs9E8jm/QkqUGsdkA8z7nqU1D4=;
	h=To:Subject:From:Message-Id:Date; b=GH5QiZptnB4lrFWeRLYo6W3KDmNPfL4pgGCBK1HAO0+zfncQ4buFbcmlevJjlGGpSoS2a/7YzfPV5KpnjibJB04I6O+d1RkCQ/RA88c8lOw5n0wYcUpcnUQXki+KI5Fck3zI4cK+LkdsTbTxJhlHzE2+DDyB6ZBkI66MaQSYdVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9UXlmsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9UXlmsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC83AC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776623253;
	bh=IwCd4oHDUJXGKdX3sEs9E8jm/QkqUGsdkA8z7nqU1D4=;
	h=To:Subject:From:Date:From;
	b=V9UXlmsA17A2MQkoh6L8ZU0qy8cncd9HDI9YuxF8umjUolHVAAIqV2db4HGxsYQqN
	 ftUR25/JpaJIv+zcnf0vG6SA1z9oczSswlT3xgCQQq5XP6qP1wMBqucPJEAi/rsFmt
	 v4wXi9D2y7b61JyalWbWfKVEvUppdtRRPlV8qmFsgq0KXrX/V228/82H1uwRjz1RHL
	 t0rkb2XnsfnYccXmj/LZCeqIWyq2gyFjdwltHdekVh19VPqmwO8v44/OOh6UUunlrA
	 2CKJxxnLtbYcr5BbcnlLYCDVbLoLJlLuksJm1hX0MmjF19N73tzypV+33d286JjXSC
	 8idVwH7X5bD2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF01EA7197
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662325368.26888.9785356455977935958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac7c7695dc1d905865717df4a34f97127bfdd692f4a7348c9d5e4879e3be85c
Date: Sun, 19 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776623253
