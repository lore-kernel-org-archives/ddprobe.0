Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3639A22DF97
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738845954; cv=none; b=qBbdRELFRksp1J9sbSBy3+moDNT9/V1A9gaIQHPeGTkVwDfPu1Bmvm6MggCeQTwlFfpG91uNAgZS8gDZA1EfKgF8XaK/p4ZDb2hvU+PzVwf//7MtmYk42qFHMCoGtpC03qbwLzKRXn+gnIBjoT5qv36diBViV5y4ipX2uCk+YJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738845954; c=relaxed/simple;
	bh=K/zCNDeHzpg07TgMlV38AYelnx0pE71lBTgYh7zPIfc=;
	h=To:Subject:From:Message-Id:Date; b=VxX2lGDDWmHbEPJk6N/e6G8b/dTG8d5uZD2YmN+QFlgzmh+LZ6dB+/gHBcIKmKkSMzbVJE3MrjTBe28dOWZAbXzD5cMkghlhpO8EnZ+FdmTLqVWy42Y2jxyUvlKVfhqOlXBPZrJc0tHy9PKzQeSHKHnnkc4b74zCEPhVEFpQmtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcSkcVc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcSkcVc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93A6C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738845953;
	bh=K/zCNDeHzpg07TgMlV38AYelnx0pE71lBTgYh7zPIfc=;
	h=To:Subject:From:Date:From;
	b=WcSkcVc1XghtTsmLxdSyWZUul5gj2HgYcitW0zrJuHHoF9u5ga1yUzer8D15GAA8L
	 vJVxPmA1PTYk9bcb1ADpRx49Mhn64j4u3LGHtAO44n48zvW9txs9+zjQ4mPkF2HPn4
	 wqrXfvbmncDAY65p6zFTw/pR1vRELMrPZwdaqgx84Ec3zAI+G8hq2ZEr7Wri6RUJWr
	 FG0SPZN2tTDUDk1PNzc8llLK7720PSrgQXfRmHV/NZYpnU2fhxWL8hvhnJuFQS6tNv
	 vhpZICsbFaMPJ/F14Xzppf0V+ixpfdzk8exBqlPvKUTZZnQTp6Gablgcdvr1hnpaGH
	 u3L5Si+J9SmsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938F8C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173884595359.12572.2637335632847473039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8c8f148dad2ce29c997cc0b4f158fc31a36a4afb93b5e3c278eaf57d603c8d
Date: Thu, 06 Feb 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738845953
