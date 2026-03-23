Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1463F1EFFA1
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774229094; cv=none; b=p/iCd35bb936DeUjK/86W3qMK7fRSPgKsgjgeMmsSzcEtVne4fKIlZ22QelnTtJD9fiOt8SaTuQzYQqbsFfhiSlbLQjFrzNjXi2mK1V3OR2DwXYH/n92ySh2cEcxGYZ4e7cELum2h4ghkMlYFSfsjS6j0QVUTeK+FFE2RVQ0ghU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774229094; c=relaxed/simple;
	bh=W3Ut8vlgDOgE2kn6xTH8M1WwO2MkKafLpcYYcRX2a5E=;
	h=To:Subject:From:Message-Id:Date; b=oEvakkDLe5W7Al5uFp5dpxMIkn4sZPL9lIGO95utPzrXmuMCxkpynEJHCva3M9/LgH/GLHQbODKwtjdmW0Z7Z7IcWLyHw0+1gSfJCfz/r+TrYbr6i37XJ5PmfV+zxg5rAfzbrnmGvE4KfhCecKfFyy0K2HhbmREv3NxILlcRTsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJaDhNDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJaDhNDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A437FC19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774229093;
	bh=W3Ut8vlgDOgE2kn6xTH8M1WwO2MkKafLpcYYcRX2a5E=;
	h=To:Subject:From:Date:From;
	b=CJaDhNDgC36qCWMTusW28fD5qRs6jRMGkWs8L9jmOLtgm9fYs3lqs+dP7LA0YFufi
	 keFkdegKTFnLQujFmC32pbwLlkaRNl+83GLhCXdkMTDnSLrUD58Qy67VQjrGYFOJlI
	 tXm0IZpo2qQ3/x8gMyseUJUMT3k7iFuLj+NDT/OPY7oy99YC7qsRO0KCEcw/1f94xQ
	 z/gjaUqFo2i+AAUl2w4MdcUXL9ZjJYDI3mxhcPl4Vom5M73i8Mapmva5dtjBGtWnS0
	 pJlihCQyH3idz3vlo8CBGQQHcvFcxZIa6IuuvDotxJJh2f3kC9mzmZB3j00tXMFgd2
	 X5QTjuARi6XdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964A7D58CB0
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422909358.6124.18036006843105402998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506789523be6d638be0255ae2810e3dd500ac1257bf1cf6bfced098270181808
Date: Mon, 23 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774229093
