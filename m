Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3701B17D2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746676194; cv=none; b=UPTs9TnRL7Qsop7fLFoFKGUofUhPgvZ4IynScIEufiNgw/vAgjdET7x2124tRKHtdZnpKkjU0RP9d+ssGmLER/Qnw5xMxZZxO+C0FWEbmWOr5HLRRgbRnU+wRlYMQykOwzAIMsMeKVgLyxhpmD4CQeVzywcEVG+fOoiYVDj0JtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746676194; c=relaxed/simple;
	bh=gc1yyRD2HAftxPAMirw5+TAJyvTtqApMcAcRHzi76qs=;
	h=To:Subject:From:Message-Id:Date; b=BinjI2TNiRm5NvtRSaPfcEXSJDvZuhJef26qu8RKgZo5GDtODZ+Gq3XSzDxvf70sjaLq7VHxa5W6x9v8jZEAzk7A6WptQKawIIm4eRHQcLLtp7n08jZhbfZZJv79cFZf42tHiNvxLcpl524x5pEuO7vyeUlkpYqfA7dq99E6iAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XW++3W8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XW++3W8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5151C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746676193;
	bh=gc1yyRD2HAftxPAMirw5+TAJyvTtqApMcAcRHzi76qs=;
	h=To:Subject:From:Date:From;
	b=XW++3W8uEQhBtPtXL+cUIIuZoYfZQNzJnGVQxZMt28daMQ2AzvC61Mx6aAH1dTFCG
	 cmPGeCkEFyXG77Isa+zaud0rTCO/waTCW7bNrKyRk7ZOzTE9eKrA7gmd4ziGGEbMev
	 bzVHa67nf/yFCTAlGhQ3Vi+NIwanKc/XHrMOpaL/TLfjtH9gDdTMxeVqKkQ8buc5P3
	 ke8QDc6Whjf1fo/M1SRPDSMVEW9VO7VQvYXQL5ldnyOPJ2/PkgKc6yFE6Jf/Rabaom
	 qXUNmyhiVF/XZDYit6CAqBhig8eKnnt7oBQBZuSpGvvB3kqkxGOe00TriLBcQm5lEC
	 2G5MYW+fmu5gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92740C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667619358.12852.3214409435737159811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c43d34dcf7af6f50beba5a86044469148a2a0c7a2a47c5d3655fefc9ffa1d359
Date: Thu, 08 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746676193
