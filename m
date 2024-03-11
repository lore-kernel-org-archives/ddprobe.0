Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8EEC41C9D
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710171496; cv=none; b=Vcql211/QuDx1/mtRl+OmVqp3mnVfm/8ObbTD+mXBEhmybVBQ8W/2ClTsLkltSeo3ZS6/+I0/pM65/xStwCxYoW6yoOUJDwh5z5l9Z46M8yeYHy2aj25v/9RAYYAczcWQuRuKIp026uNP0q5BPkbWGAsF9mAFEJhd3uZvWgrVec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710171496; c=relaxed/simple;
	bh=sfQMNrkMmtKUiS0jQD7qz983clQ8DhstDDC6pJPzxEw=;
	h=To:Subject:From:Message-Id:Date; b=UV7Yln6mIiZhg/aqMwJGd0a8Ifz5jBLA9LLrxeNX++AvCRwCkyda0z1iJo53cRzMdhYa1rVeYQMxlhYrhZmZ/WTmOuMK/hbbyF3aiaCgxWjqdEYFPUV3sxP7wX6gNnTL340xWcEaTFP/UtdN+I0cZizy7nXGNlidPOuXZeuJrdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qS8uT8kU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qS8uT8kU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73AD6C433B2
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710171496;
	bh=sfQMNrkMmtKUiS0jQD7qz983clQ8DhstDDC6pJPzxEw=;
	h=To:Subject:From:Date:From;
	b=qS8uT8kUE5jkuUXZVArfkM022FAd+3JRz3IMqH/n72OzibKsPlPTP5flrvD2opzP9
	 PWDfiUD6BJXnMYJWwsPrYxrjEQDpOTArVBquAxTl1yf2OST6LjvwkIArORT9XZVjV6
	 T9JAnr2m/OzWeuzFkALLxiWZ8vxOkci4XiCWo481ftNT5EhYa/GNWftRcmZr/FaChI
	 UxD6HveMVaaN/kwWPZIMH2HplA3JGPXO3Lp4ZVsPZLUEsaXno+X+jRrHAHkeCtc1Dq
	 aHIfFNcq/cCFisveaC1v+VOt8XwlkcDmByyKkRBpao2DWqqYidGP3FeG6+x0Ss8UNT
	 I4vmj30N9ZyCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B6C8C5475B
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171017149636.23903.3132306503483809980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 887c42e5668da3651e790ffb62243668175b11538b4dc7da6de0f257e6bc8d17
Date: Mon, 11 Mar 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710171496
