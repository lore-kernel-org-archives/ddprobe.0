Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382D52BE05F
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779240034; cv=none; b=OQ1mPjrB6mRzG0jqRUEtDCH6dPDA/1cHcS2ur4OoG9ksA2VhRmsZKSShDGdOsa2y8iRm2ZslzKa7ATBfH5WkCteR00Ifv6pi65vZQzhObEqLtJufMDGqzRhroxdeo7mbrCk6mfcvBOK+1zV++k3ircLStuzFNhUS5xQgKbIvhCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779240034; c=relaxed/simple;
	bh=Yjmgi3OnReFXeZsHzJRp5FgqPnL1yZ6lWKFbnZl3Uf8=;
	h=To:Subject:From:Message-Id:Date; b=Q093HtBeqMaevfSpmdLTCQhM3G7q203jP2HmX0enTAWSxn+43IGMRVmrQzvRoupHB44JGn7vvfPJxnjCId/yjguTyQQqvt4yOhhhLMrF/jMEvCFMAg6OQB9iQfuxvM5bFK6MDuBO7I5lJzzAwLquqphl8YE1Th3/QBaVtfexDIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fh0O2/lI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fh0O2/lI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C872AC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779240033;
	bh=Yjmgi3OnReFXeZsHzJRp5FgqPnL1yZ6lWKFbnZl3Uf8=;
	h=To:Subject:From:Date:From;
	b=fh0O2/lIU5oav0N5VNtiiHx8PQyVkFsNPPab7Hgw9CUwEOid8zh9Y2BCYzNgqTUVu
	 GptuoITyGG4ZW7N0QhmyfDkYLCyUhBPrb1E6hAd8BjQbCuurb5lho/cxF2DNvCFpQj
	 FKpBDLQu3QKuCLOCw7RfD+RVLnxx2AZyFaePbe2cyHlrDixTHZxombLpmjDuxAZUtK
	 o8FNbRBuHWu4pBvHuf8/1LOCb1UDxkE4/Sq0TzVTZGyO35dtsqQfnKIw1I/je0lA/Q
	 6RsWwFF0XdzNwTEOy66gpYvGeWPx80dKtEJbcBBCVJaHO0i7ayNP1C1towrD7F1kyg
	 glGED8TGZZ/FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB49BCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924003369.32375.17763296785955001235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d687bd91c5040994746587c5a63fb802ede384c34f951d8bfdfa34614703046f
Date: Wed, 20 May 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779240033
