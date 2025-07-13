Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACC22E371B
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752404994; cv=none; b=cAa2GHX2jr7TVJH1JSEDMzxQtvTV087dMxcY6s5Z/WWNV2NxBFWnhjpAp9ZCVpGrtwhJBba15xKJOiLwaV9VKY0//uUuCr3mYr6CBiqdlaMfzv32EUmqaopntIK6/tSaRaS0dk45Wj5kt/YZqGQWyPbUgnlnGh+OWLcOXw3bP3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752404994; c=relaxed/simple;
	bh=UnKK/N/4udWuCjBkzJ+GQRRC3j6VBtXNcZC+Si4duhI=;
	h=To:Subject:From:Message-Id:Date; b=IGhh1Awbzg2mp0LuEL9MMcVBfVvbMCqwJ/V7HfB3NLHr2nQVIonl1jWkWGPMXI8EFay6kP9r0TGsPxoP/zhm8se1JeYF/gMkbbkCzHY4IVuJDIFD+ejh5Rwp1dY4khwHQe/hKKEmhCxMlCNqKYemJljqrVqHJF9/hcKaRi/et04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENUkRBB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENUkRBB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10E8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752404993;
	bh=UnKK/N/4udWuCjBkzJ+GQRRC3j6VBtXNcZC+Si4duhI=;
	h=To:Subject:From:Date:From;
	b=ENUkRBB6bBtE9jpnOjL4dKXRZYV3IS1IQ0oMtmo8LITiDv4Lkv4HAyiyJVDY9A1+N
	 mZ6mKLXo6nyUVqcYA1T6/xcRzA6BgyTLpmIWpgcKJmfpFURarU9YB1GCQvBp9APZMk
	 EFT7TeLnvIqrMwZjYyM4sA8pq5QOeAdgJntNwTJomXJieIXMZbCxn8kJsfT+/ghw41
	 NtnVtsjql9hhTb925hkCzmrdBZ/9uCaKHg8+TMLKwsYlQvfoPdHWFVdlbGGVZe8P/R
	 8B/hXCEqaDqcfrbre8ShsL5/+pnM89j678WS+xIbAJyZMy674dXPYo6hc/52mNsYLL
	 QlVt+JkXU3GsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F367C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240499357.1917.10377977100369504374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bafbe0a56e09708461c82889c58b545c8b22d27eb547a760d07c1847f0d8347
Date: Sun, 13 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752404993
