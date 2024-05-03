Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486EC148313
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 08:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714724543; cv=none; b=i801YSvSCqPiKuVbf3SjmOXz+zTd46U4Oorfnx+UyFY5UJ4Vxflnd4kO3xbX6VQIEg2T3yhFm3SpZQi/XcVaPBrwdwrto4MWZErIilBRlNW4ra51pi86XvMX4/y8LlM2Eiz0CluOQ1au11Gf6GQbHrRoT6WbPgReXCyJuHJdJ10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714724543; c=relaxed/simple;
	bh=87FKQbZef5f6XHfg5FZUwLeMjCzfc4TYgZlnwv5np5o=;
	h=To:Subject:From:Message-Id:Date; b=XBeyM+VDY1pCCQWAvWrcOX74a/iTGnKUE0fV1dYxxj2dlvQ1l8d4FeHeRjsIjEZpjlhGFLN9ppbFg/fbL4ihk074kkXntv8225STTMwzl5ksoNid85v5q4C4iMm8yTFL3rmlAtLCgi1x+ZQG2KhCKsVP7szXgrLvMB824vBcfdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QL/kRmI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QL/kRmI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC5AC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 08:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714724542;
	bh=87FKQbZef5f6XHfg5FZUwLeMjCzfc4TYgZlnwv5np5o=;
	h=To:Subject:From:Date:From;
	b=QL/kRmI4P18yrw0QL4l/rAG22KWXkIY1IUeZdmtpchMWl92xc669nVMnnMyp3hiP0
	 ns4TBUBqrfqUpGYLQHK+OPwt9B1wmPIxQYtON5+/ozix4M7tIiFWv5wj7PrnRJ6bOj
	 jt7g0FYCqKVA7WcQ2KiDzo6d0k85PfKpfprwfakfBQygh2UeSXEP3Ivqa9TwXSF+/h
	 eUltEOZkVL5cxUpKacc59O9W8I0GH+btmH5Qf4ua7Vob9oyf+iYkpyXrFKX9j6bnuz
	 Uxtj3htAqmY1hfkETHae61qt6WGotyBYoVd/avwqOnNyOiaNZq1Su9cTR9lj9tus0x
	 HpjgtuqKtEvNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37CAC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 08:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171472454277.10699.11461875050412060279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe109d4869940f1bad03d43db2ca57292c7fc73791dceccc51ee026554c72202
Date: Fri, 03 May 2024 08:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714724542
