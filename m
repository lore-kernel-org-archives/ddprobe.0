Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E231EB5C2
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759355394; cv=none; b=lqFl78wxSPTs5L8vXlyobMXzUU3xqhGtTzDo5RfcLZLVeME6YJm6UOiDV+LEUhVsfUzWg5CKi7ephnBKIAygDFZ1ugCHIdT0LdZsOK1DcBpCaj2PIi41npb+P+ZB2Jj8BeFcdoC7F/+UePqomT3JS5vmv8kBJL5rkdycVRjoeAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759355394; c=relaxed/simple;
	bh=7hPp+ShghvqO4SZSDmgdx+6PXY5bn6ty0XBksW1Ytpo=;
	h=To:Subject:From:Message-Id:Date; b=HP6Oy/alPkn1jF1LFV2TfDSiRxMT/wu42aWBeRzDrpzfbXUGw0XVz4w6+Z/rBImF/rEc+Qm8v+K+4cUl6a9A8XYV0NZwHPk9QxDmjwC0meocttB0JSejAFW35V0rum9IDpbROZdHwoq5djwEmJ+pSD4axmzNGgb61JpfIBQJGV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZW4YMvC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZW4YMvC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A37C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759355393;
	bh=7hPp+ShghvqO4SZSDmgdx+6PXY5bn6ty0XBksW1Ytpo=;
	h=To:Subject:From:Date:From;
	b=ZW4YMvC4SO2OqX3/IH0HeUDh+OHdC7XB91ot1DvU4TI9YDKHordVJLkDQ5kryy5+z
	 08h+TNRKYek92oNNkIgaO1/OO6b/mUG1Ou4s3AG9MNGC4+mKwQakKKk19uIPZQUE95
	 wATX5iDc2txR/FnVhrF647pqfkhIZn6KXV3trrYyHNwnXH2HJ/IAGn4iW0oC96Hx3m
	 eynQLXcZlaaJkaaWMCF5KmPI+SI96TwpfNeaYGVNoQ2urMxVcXISYLmKJFu067tmGM
	 lqGiLTR7aWpnWbmurNOlrw/yago7LosbHOvbMDBLmOIvhZfDlrEEyRgjNuBZ/pR+MK
	 On2LQMwM2q29A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91718CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175935539358.27073.13093184023296311072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d2fdbd602100a0fe3b169f548de64b486de13dff86ce6bb32d8e51e00d688d
Date: Wed, 01 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759355393
