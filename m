Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122F23148AC
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768878234; cv=none; b=k1AQAu8eJ/ywPq4hy7pCsWVlTvv9RuK6MtBSHaR3BsS0waDLV/TwZtHEWla9lLVjyfq44igsu7UpxivJZ1GjDN0+81746kE2uIFM6/LFv9myY0WqEMrWUFmLp05fiCD+ryShtTBCHMFGKuT1Hz4qVMXn70K28RpAhY+f1XYJKlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768878234; c=relaxed/simple;
	bh=VsfuhWz0Hvtqk0bQfzuCGtJ7e+cIVJUDaZe8CCe+2M0=;
	h=To:Subject:From:Message-Id:Date; b=a0qsxHQlyFSKLxKSfd/N6SPlG7v5r3ZLSHfME9RzVc8QZcHRaDs3Far4Jw5y5lumoncXoMv45fbrYrCxkhLVtDRhUWQAWvO/trens5mOGQhuB1mF/h6MMy5njaRodvnGWDeAOploeHbvjApUCSVmZx69NEjm9mvKjz9mxKJRqWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvyxnDr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvyxnDr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6532C116C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768878233;
	bh=VsfuhWz0Hvtqk0bQfzuCGtJ7e+cIVJUDaZe8CCe+2M0=;
	h=To:Subject:From:Date:From;
	b=HvyxnDr5PBW28+xNK0i9reK6wY4/TPsO80vH8mO6GAzfIrIU+AlA1WH5qbyHxYT2r
	 ZOaQ9P1zw8GqAj0teZ/Rj9tKtp2Pa2zbyBgADlhwqxkPak4JStw5ETSfFE95DTpz9k
	 BT0DRUX7/5qaqeYxlm9lJZZ1zP03sc2Hl0dIOJ54wnRB4epdtG8Yddo3q2omhVkZ/s
	 bN8EyUbS3IpHwz2mLpH0JEJLDAfNtJ+JLzaYj9GP8ECLIL1np5SNgB8Nq/SXMcSwji
	 MJXUsaIDRDT4decCfaUWByAd4OlckzdoLTrN++Nu1MHycsBpmOGUYyzADLAa9B+Ma8
	 LPjOwdKDyixrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9251AD2ECFE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176887823359.13730.17985264522354532633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ad4a381b5989b06575b1cf26ae556fa4dd7c8432ec880ba37bebabba24734a
Date: Tue, 20 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768878233
