Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE2A350A0B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770799494; cv=none; b=MHcS7kc5VsOhxwxkR41lYUGXpMUt1AqfqjTsuCAVgNsylaZxPY6+7AXQbKRRFIKmxz6gRRo4rHqMi076kd/0LTWA2QgxzJ7vNybVMZLqQkP4yb+PjHwmQv7ZaeDJB2W9JRiKTVkv1Iojdfil8tiraB9AqKYZrLFM0cdvvivc7BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770799494; c=relaxed/simple;
	bh=JADUX1XVIiI375OGXzQKiAZkea/x4WnKVAQe7LAeC7Q=;
	h=To:Subject:From:Message-Id:Date; b=IVj2ysJgGzjI/pX8h1dupn4ZfKcMMChT5fu+GpCVKJ5h+e6OVVd84qjPHtn4TepIJT8LT7+CqVxcAF8NP4wtUr9AP/XvePOV/XuZN/I4dhAX0x3PL6WyH/UhMjYTpNGXhTYs8k///UTVBBKV+awazRSVIdFyLcL5yfvGIbR7tg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUCiedq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUCiedq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68CEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770799493;
	bh=JADUX1XVIiI375OGXzQKiAZkea/x4WnKVAQe7LAeC7Q=;
	h=To:Subject:From:Date:From;
	b=DUCiedq4/XGF5XQ8PF477M+J9eDMuJWPn1HdbAHiZ/pm4S6bzARi7F5kvmas88s5K
	 /0eidW7hN/C9CFP546hwbDL3AmGBufXhSYxA34IqPVL8fQp4klEC5r23j+TiBK/7Fr
	 8/uS2MlpMfETYrrxbmDBk0FzeK6z1KkCPPKmoFFGECHXT5IIlM4xhNTrKWzhHFBV5o
	 TrutWVFTbTrdLYAdHInmXVGrNtLoHTC93AC4a2qO7+/Z/AG0HsdoulnUYJ5sbySizn
	 I46mfXpAZd2wp6ZWKu83iQfVBrNXzd5FNlHAzchp/RB8Eb0aSHLsH5YqErCfD57/Iz
	 3du+qrchSsijQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5038EB597B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177079949372.22062.13305759166137176880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b9601985055c35a3aeb04f6de2e0dc15d88c02f2915729cc604b0033e18006
Date: Wed, 11 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770799493
