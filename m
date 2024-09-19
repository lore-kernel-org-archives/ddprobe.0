Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34996194083
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726755954; cv=none; b=i56BJ9lmEZW4E923ScjI3XGzw14x1iOwfh53fnX6vtVe6YcQ7CHkaZHfMQeDqRJXY1n5RsfSGOksF/9gQLhGWVAWsJAtJN+I6SfpacQmfE5WwWRBE8cHd4QBL5p+A8qLG2ggRYDjw0Y3gIWoT+6qrlyZykZdIuWdhayHwPfYtDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726755954; c=relaxed/simple;
	bh=PMM3pjtbMrRZ3RkukZCsp2QV0DWAQlSnBZ/WzMLvdwM=;
	h=To:Subject:From:Message-Id:Date; b=kgFSXEI4VRJ+RUIBZD/ilQqCh0Lzf88JBkfTDu17xtH4dFg93bjQzdqgtNgBT9rAc2E3hBMyHtQbe4p+HDyzsIMq84oXeeLIPziuvLcMajQNtLtutAfoC6hhyS0alO2LCZZmsqc8p7z1B59SaLZVWwWJ8KkRn70prnUH5jS8w/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYgPqo5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYgPqo5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5412C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726755953;
	bh=PMM3pjtbMrRZ3RkukZCsp2QV0DWAQlSnBZ/WzMLvdwM=;
	h=To:Subject:From:Date:From;
	b=lYgPqo5JDSr1giBeYe7WXveVFy0xSu6Zmm/KKywVSPFGPp5gxTUhup0DmsDRxWI3W
	 98ahQ9lMPK4eiJGEHozbB246wJCeqb08ZxvZFk1jTMU1xoFSztutEnoLegaaju10Ep
	 BkRRZDv9iBm9o1hlLaEm0xGl7DwDgcimFGwozg8zsM7zyB0rVu0PowGDccmeu5wNbW
	 98rUl6cy+Ddu9JlWdNUGeAGYI+C3hycAkf4gbTPMnUhhDpzX2Aoaz6IqhZ80qvzM6/
	 zoll3DhCbDpRkFB4v83uwzDlD1TnTnbF56PfKtlHdpwpCFOLZQmoNdKbmu8GQbUF/A
	 SFU37yP408kNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9342ECF3945
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172675595359.1632.1848024882199715459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ea11d30f37ceaea4b2046e9facbe1c0212250ccc04a51bcf098761a1ba8228b
Date: Thu, 19 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726755953
