Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ABF7302140
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771413894; cv=none; b=UM+Apf/yckKCc3rCtBib4yBsuJlTSGSJUxoC0YxppbhdfPx2dUbKNltLhv+zKxrGSuFz20fpj6bG0MwBckkBQW6zTr5+/vqwyIw/zRzl38KdsATtJEWT6IdN59q23Yp+K5I1OOW0IkTNRSoNN9UgZSu1r1Iu/SO9RzN3wZ+pM04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771413894; c=relaxed/simple;
	bh=sOCaDA/7PzZfcR3m+1enu/VmvstpWaIZpue8eYO5em8=;
	h=To:Subject:From:Message-Id:Date; b=TtJW3nFD8cNnHipZT6y/qoUVhetscHiHPgXuOxi4wRMwYhpC0Av7zmJaUHtDw//uEHcrwTDnBRuFXbmZ7N7Qr9sNhsjHQ+WeD3vsktjsjgzzcOwEEcem0hLwme0hAI4UL8TratfGQJQB/jdX409ulHt2YBAe0F8UWE4TSaYqut0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIG3bzJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIG3bzJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16BFC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771413893;
	bh=sOCaDA/7PzZfcR3m+1enu/VmvstpWaIZpue8eYO5em8=;
	h=To:Subject:From:Date:From;
	b=GIG3bzJr1nSN7TfZe12i8xLoETqennetN/AO4F12RIrTbxK2X5PlphEtLaCIAm4rI
	 0i2Di1GQcITXkLibyRp3+6SdPMDIEQb2bhG2vxEAV0ly3PRXPEodh/DNzZ/BGNXzge
	 gs9GRJ5zVerr+fs3FC1EHiKNZrpzGCb6YPvOJ+epjh9/lDuFDYaT3qdbCJDi90Xtqk
	 8hI9kxZ4GBCknO6ayG8VeGMkhy4hSJV4EhQaxQXSvgPzlSG55XyphGnJbSvc3NGZSj
	 dNYJKuDLL9LHNAfu9jtyh6lDwZSBTgeu22l7+loDKhaUJwyvahgMGoKIeUUJVzhiUw
	 R5kSY54WoMuAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11F2E9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141389364.865.16536499271655605746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f5fd96b50795fd08bc27273724f566f06177447fe34e7d70f86236a0ed86966
Date: Wed, 18 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771413893
