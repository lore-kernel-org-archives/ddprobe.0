Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFC37F6
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723347954; cv=none; b=p6nxbSoeTOw8dIMSs8uFN8+0nFLuWpIca8cVZW974n2vwiGihzIX2gBUEgWUUji5t2GYiQDboDpp84vPsxVUoH1W1nqozIf5Dfs9655zVdv0BffuKlwJady3px/1k4tndIw3I670L6bdrz7dUSrC8kVQZa4AaPtcdwqvgS2E5Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723347954; c=relaxed/simple;
	bh=TvHcnawGZEpIDvV848ryZKtpNhitgz7FGn4CJSMqaDg=;
	h=To:Subject:From:Message-Id:Date; b=o9RSNddpDVwQLxMOwsvfhg4EgDOAKhUWB7FF6OYzqijh088p7ZUcxGZ5BP+qyXefhBEXxBu6JqsIm+1IgaGCzvaZmL4SuJpEdRv8Hl+ZJoq0R3t8xT20fyHX4c/lyABpCIz5fRPgqzjkJP8HegFtint/dBB5jO/xyX7gkLGFMSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b02Uaucw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b02Uaucw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE1DC4AF09
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723347953;
	bh=TvHcnawGZEpIDvV848ryZKtpNhitgz7FGn4CJSMqaDg=;
	h=To:Subject:From:Date:From;
	b=b02UaucwV6XkOt6f0Yksk/XtwUCO9j0V/2Ubfiv0nBYWtA0HbCo3ZfFDOdW1WANS1
	 rrvR59HPCIhWiXxqzq2ykmOEJpPNWuIHJBzqlcB9xnMeG8zGXbNBO8wM0+v03/BbOC
	 3vR7rvMrqL0vTZM0pXyzEOLY063HW52+anz6V03cHJeTK8jAno/4qc1Wsl56kyv+aL
	 WiZrKGqd5Dc/WszzjPC6VKyeI11Gg9T0GMB7LjZ20Va1Z6SFV28MYFyQHEL/K1i3tw
	 3eOkZ89yp+dy7pZVObnX/UN+kKski2s/DYl6idj2t2WDDSoKgJ39Euc1/kJYzq2O0o
	 kYOIxzYM3qQ8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95795C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172334795359.29388.7239670660898727633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1860300d50cf87b133ff4eefc47e00fd4fb386629a2186788735937b8299aa0f
Date: Sun, 11 Aug 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723347953
