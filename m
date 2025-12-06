Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3473A275111
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764982374; cv=none; b=teBSdqsvVtnvjHuE3f34DLe7GEu3b6pXNkT6E9RsG6kWQ5p958z9/1CCYAI0qU+oBTxMEZ5BGwKnPzsk2qExUnsZsCIJ8IXqggo5/VPAFO/xMn3Fy+gJ4wfZNY9wThCkhwj9uk3rGH0s+JdnPN6mJMZAJzA/6EvS/CalnnIoRJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764982374; c=relaxed/simple;
	bh=oBDkhuuekdcsSiBxjDZ4qfTuUTRbRjoCfNoLPj4XDcw=;
	h=To:Subject:From:Message-Id:Date; b=np6XHwmy/O2laqXaAKkqAtl0nPpquN062YikMp/VB+U2cCY0uYhKY9HUl5DUyxJ3cgLe81G0gw/0W9AcSnTLY1Yr0ZnPmLUCvYWf+kOaXIhFrkot0AUcwQHC4ractNalsz0PRjQB2DX+4q5aUyj0poqUBtbeGSamAZOTq6JHpsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmTypY/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmTypY/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4416C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764982373;
	bh=oBDkhuuekdcsSiBxjDZ4qfTuUTRbRjoCfNoLPj4XDcw=;
	h=To:Subject:From:Date:From;
	b=YmTypY/Pw3w5hHvJ+pxvosWPJWuMEECjbTep/mzDDZ+r9VtymclFGkqUmu32r2kui
	 Nt3TqcvYq4RF89DZGRRu8x8b0oCgXpZ8A6KRdXEim4l2YoTRIR8QHtWeUowAEUbF0N
	 ZRZRgjavEPb0HZZHwNinfVFXcbO5kaBp7lFAe8tq0/auHwUo9fCEZV6SWsQ06BGIn4
	 ieIofTGmjIWzjI0sqaCPsFVn54Z/47+im03UHUpjLAv835v4AOZFZdastE7yyUF8ZA
	 eiN3doQB3QhOrzSKQvAj2yTirR+w01TzCBoNxGbkzjhKUQOE2JBAsHmYzArEUFbDIG
	 DRfDSA2CvcmEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC05D3ABD0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176498237361.4675.16345802475968804813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1bda26dda00069dd9dec8860239718c193404bdbd00af2bff33af1b4071d3d7
Date: Sat, 06 Dec 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764982373
