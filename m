Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225E123E350
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750687194; cv=none; b=j49pO6OK3QZRDNSeTvV+ybly2gW3E6sunn9qwsHeKVrI0skqzk1Hk19hNuOg73zJqiCK808oYvIXUaUC/4s4cavNrKTdNZ+BjrReRx8nzwEwRUrZrn94Fv0LicjHK73By8m4UOCxcIcQBEnaaRC76CsIxR+s01uVaDu5RqOabNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750687194; c=relaxed/simple;
	bh=sf9CEHNHkjbwaHhbiaZJS1D3Z9+PGHjAKtublSeclBc=;
	h=To:Subject:From:Message-Id:Date; b=MW622aQs6sE2zBBkQslPa/GKfr/g5OEOMhzJxRO4aCKyYmxu0dHG+52NZ8LgESo+wTFhIhx/rHpiyTO7LVc0xyuenEbwxeyL2c7Hw5+g7NIuZBOaVWGLN47jBYHSCFZYWRaRBbSRO6Bfolz/3jt8rtVDxY3+Iy5CMgAnmqixv20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpMhWwIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpMhWwIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5ABC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750687193;
	bh=sf9CEHNHkjbwaHhbiaZJS1D3Z9+PGHjAKtublSeclBc=;
	h=To:Subject:From:Date:From;
	b=XpMhWwIifeH+FRK9Xe8qIcyZbdieT0kw32AZKWVV8V8dNa/xLk5itXVuMZm/MAFko
	 gl6I9rLncuZcLIyRLIAoWol7IPf0seZepxfRv7Ed4xSn4utsXuiZ0OVf0TewHTAc1U
	 MSZY0lYJVzebIHIJBbtvQYK6PB4t6HM7fVtiFPgDonTbjCW7na8rwgywv9/XvSKWAH
	 O6KoWbOjEeTzqqhDC9CX0QKg3/q2rLXrQvE7sttlnI9Nk/lZwWu824yHN6st1cIMjB
	 7OTEpA/KCCSvmwFEriv50w7VcTFzEDPGbjyrU5uHUQwIt9X9Bo1hBDAFUsQjHbKD1P
	 IiP/kzP0J5Qkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8E8C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175068719357.32146.2640486518258546321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c209dc4001aad81fdd9b4f2a0e4bef6396f02ddb1cafc3a3c18debd57d45a8ce
Date: Mon, 23 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750687193
