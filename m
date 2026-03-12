Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D743382F1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773349494; cv=none; b=iutX8vJPfykjeTi58oDIUdxAQUwYW6H67jwyK2JiAAG2c0Y3oITZHuklOz1nkwutuXgB0WzlrCQwOk6hjg7pi+MJ7W4QprhvypaaJ6zJt679lZDBqaHeKqKP7MLtWdoBuTp3tljlSyKb/kVYhafSiEXSGV7+fH6RKDCQC9FkI50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773349494; c=relaxed/simple;
	bh=BAhWcvWTfNRtH+ZDVm/ezgi5heyaKBmZ5hlE6sl85+o=;
	h=To:Subject:From:Message-Id:Date; b=KW6Z1WGpHj9RfGFs2Dm+wt6UkWlvF7kJcl6U0fGGkRGzxMRN9l8Et27zFEg7ths9VGQCKPOcsj16h2YOW46hQRrmyql4xiAWg8vzPweDETdvtcDbpsKN6V6T72wjJCwaX/yR0mrzeHutDY9oJ5s69IkkRYMeCwDtIouHkEwTP8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAiUaoz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAiUaoz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BD8C19425
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773349493;
	bh=BAhWcvWTfNRtH+ZDVm/ezgi5heyaKBmZ5hlE6sl85+o=;
	h=To:Subject:From:Date:From;
	b=cAiUaoz9G+uA9mfdr4R1oAXOdZHxKzmyF3YHFgMljy1JJhOJL/x3qzwXfzFQAw5GY
	 SORBO9BRzhyq1ga9/c8eQwdZn1aAO90ep9AGgpe63V7xiC6+aIvUIjrpT5LcpiyHOX
	 Q8gO9CP8SlEvhDMS1zqYWZh5c8XpSCnW/XVR6iodsWWUwg3IlFvaiCkF3bCW8VVTHr
	 tadPj8wPJdDnsE/nTHzC1rrrnWsNN9y8dDWADJttnBDFbXkppeusLyFcj9ELEUoBKi
	 0wHLcwnN68OY7/OUBRWPpjWiHMpG/9xcqdbsjlXkhz0vbMASZ07aCDq/M2S3fmsYrO
	 jYsicVHCssq5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9412F106ACEE
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177334949359.28700.17752663378567121081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3884af37bfad842da401c1aa3d52843ca3545a47f082d63505d8e4a627c52f26
Date: Thu, 12 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773349493
