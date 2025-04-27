Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7568BE7
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745741394; cv=none; b=P4Blmf9FZKXpcxhdZmRzw/PVNqwWrCVCkA9xFgfLaJHvYTQGoDRiXweOUB5EIHM6WTPIeFKId3b0A0h3fQpNncB/LZbg25EHFfNVI5W4EwCucm/E8vUCdhzFPXSN2LDHepeQ+egzY/N7aQIUzfDNJ1J63tBbf850/LSJ4DfRSRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745741394; c=relaxed/simple;
	bh=THMoCWAGUhEbhNoBLB9Qc4kMXAS0bwtP/gLcK00S3kk=;
	h=To:Subject:From:Message-Id:Date; b=fKwPUF5T9adxVElEDc1xaFqmW6/2iUK5VygErT1CkWpfSbkqN2OMhMVXue3NVgk0AP3wGZHMiBY5S6pNMGLi2STyNR8FkPA9Y8tQzmewPEms8MTQ1ohyvFZ8CaYlS4uPB67nnXQ3iA4nUU7U/GbwilRp6UdfOYgpWtBppVz1Z94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuntBMY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuntBMY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8145C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745741393;
	bh=THMoCWAGUhEbhNoBLB9Qc4kMXAS0bwtP/gLcK00S3kk=;
	h=To:Subject:From:Date:From;
	b=IuntBMY6HfJdgQWP0kRAjt5Y8XNma9jEaSyKwR20O1V2NnPJTfbBNFKhVkaEvRTeT
	 RcxbysvrVysdNqzpbAxj/IYNMY8SjtrY4h67oyiLiQtNH3tMLWOCTzT+yyta4vdjgL
	 NGzClkpW/y2PEnef0wdUEuoHglmvy6TgjP5iz6/eIb5xksbV/nb1Skv0L1PyD1VRCK
	 t62UINtftUT1fc1gs15JeaG4LtsUPhX8bEdFi4vm9huKtcRt9ZPYmqnqxIrbqIjfgu
	 Rs1S3wNZZZTWgR1JTH41Fe64KH5jv5HtKlO+2PsAymYowYWOkWfULoKyP5DiS0211O
	 14j4PPy4JkErA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A38EC369D5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574139360.17418.16615760563557827063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb1b89f9de5497cf0451f84c1a9f4cae66f9b92d8c6bbdae140c0ad928f3712
Date: Sun, 27 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745741393
