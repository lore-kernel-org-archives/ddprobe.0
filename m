Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265781C8631
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757944194; cv=none; b=sR8a7xRnki5wGle9fJpE2AZlYBxL20hcX6+ISUp+RPFTUDbeH8fSleVfPp0FG1r3TcY3UGbC095K6OK7f5JfKBDDFn2CWuwFexxUlvrHvC98WSCX1ty+7cjzPHVqFBgaCerjReexRkYQpxneLzcqaA+gTO0xCXDto+nJgx1X768=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757944194; c=relaxed/simple;
	bh=o3pZ9OyfHsxMkiD9ZQGO9QXFjLjr6BweLEC7E4RfaZs=;
	h=To:Subject:From:Message-Id:Date; b=kcMCy3M5LXwpK9bhOSLZs36w+BMDByVL/ATdJvt6t3PG7o9oC1x7SGAESdGEFnKkCMBQJRFhPKn+JJE90linCEmk6nwiIMtQXLIeDpSxDtbIJjadvk41ZlGNmcoNOmLejkzRhUUz52CUR+IXM9JzlAL9V2Q5cRSrAXjHMljbGT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhLTJgqv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhLTJgqv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E47AC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757944193;
	bh=o3pZ9OyfHsxMkiD9ZQGO9QXFjLjr6BweLEC7E4RfaZs=;
	h=To:Subject:From:Date:From;
	b=XhLTJgqvXvjJzs/szu2w2KrMcIqxPRm5KrrkDRvqXe9vj2nbmrTfiBaZ4fLoZx02W
	 /Kp9NEqM1fiAym0+Cm+OlBkFy6iXbF0CbDtZGf9lGCsY+OyRiTkCKwlt5O4DmSUHaj
	 pqrWIBSULmD4VD1osJIAH00vZXgT0LcJon2duGGZgG0LxC81wNF9FRNdvXIzjKozPe
	 eXB1FkQDnWIPI9wk6q8bjuwVo2nV52aPf6zx+1aAXkUiwumc53GdDO2y+/xmS0hpOU
	 deyl9mtPnJFxUHalZQzKW8GIqjWbNQyb8DG2jQ7VWeI+tALSpc3CM9pGgTILEvWedO
	 wr5tU8EVblDsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC33CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175794419357.27999.11433914881337128148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889333fdba46582dee15d9cc63918ed3a8388735093a432e68764a85f2935788
Date: Mon, 15 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757944193
