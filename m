Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584981A7253
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744247994; cv=none; b=QBrwhuwFbTVmE4ZMtkHZ0/UMH7kYVIMa8xBQ8BzbNlJ7Zh2LuUeZ2ocOyB1ppdFNWiipWzYh1YWwas+qDY1ft5y7Emef6LBZJ7FmeJKVmRVpI6AKEsSr5Vb/y2geontAAq5nuD5Lr7OKFEdfjmkIeYLkKeqwuTUXNxzPj9kWU9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744247994; c=relaxed/simple;
	bh=oEMW24JIZgVCQRNKy69ifYOBril9G4tIuDSWBmWPgBo=;
	h=To:Subject:From:Message-Id:Date; b=YBBAf/jDjLLljFr24qQUOk9wjeWLvwwYGOqvgiEw/UBLzVeMQIMVro2Ne8Zfhv9XHKHZ+PicegKJC1lNXNLDULllwImZteGrhlmwAM6RtAwCYQEH0w/nzSe0oQtQHEv1Iw0WAxGOKGw6WDq5AHIRU5yr4arn2m9fhmu8B9Ac4G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PADsHj71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PADsHj71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE55C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744247993;
	bh=oEMW24JIZgVCQRNKy69ifYOBril9G4tIuDSWBmWPgBo=;
	h=To:Subject:From:Date:From;
	b=PADsHj71rhAUzOCBUW4yuG/NjdMul3I/WChFUlXpxnPxxeuEFAQw28jBkzv2HysdR
	 +bYIBd1BJ5VAvvx4aSxXDhLS8JP+dQ9ClNEfBNGkdh/S52sAOT7m27p/uQDrKEBPeb
	 YRWELy/gfsohQq0oqvoVJXhPzzwToOCG22QuUPPOy1CDyWK9PDIGzKDGfcVAYHfBNE
	 Yb/4rhchoLk1bY0ybJcLmVzlGT+wHW7jo8+8YycV4WM534ildF7nseasExYUGiZEg9
	 5etpHilWbQIwbf0r7OnPDo/9xZk5ptc6OYhZzuPl4wLIumyH3lt8BuM4Ji6Nce+x1t
	 kxg/FzbL2tXgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2E7C369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174424799361.15051.13681356944036658987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f413b5a92a03801df280673ed7845878c88a8b811ff2b0d1270abf4fbd2fc7
Date: Thu, 10 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744247993
