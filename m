Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FDA8472
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746682794; cv=none; b=u6/1B1idn1fvKGxySEFUr9aq+3zyn/T5pa9Ar1rL21grOcCLoNJASi2CI3s9YLlPYUD9KnY+G855msBIOF9yDxEvzQ2D0to+bwkvkj01b1A5cd6accN8TjWogZ7lPwj551jSX05cAMPppFFhfbalyjdn9YAGY+x+s4Z9RBEVNTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746682794; c=relaxed/simple;
	bh=+FNTGBLn8Qmmn3AiSnwcqIh52F8bzhyLSW+oLskhMYo=;
	h=To:Subject:From:Message-Id:Date; b=H/oMaFagxf9QJRWkUF3smFDdXtwhL9BP+sNCUwDrXHldxox1hFhb7AJ1lmnVnSYvY6xpBP1Egw8oSTwyA1bhrp1BclUWkn3RCHGZuTzfhQ5opoCFZNa1Hq9Xr8mnqAcHlJ4NqShKdFli9MxBoggnIo4aK21GyMjrIXRJ99w/yl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNgi5rGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNgi5rGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C42C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746682793;
	bh=+FNTGBLn8Qmmn3AiSnwcqIh52F8bzhyLSW+oLskhMYo=;
	h=To:Subject:From:Date:From;
	b=FNgi5rGiLHxAghMQPiHTzXaRfUvcHibewmQUdK6AotiWUjXfkR1j2xRpMHjDvDZZp
	 UIXWv6UUDqqdT7jq3UYHrCW2XeYBxkmEx62A7YhU+B+X92TxvYYdRQ1TmSaPaeOyQL
	 lR3Bg/1O7vmz20M/muCUCb77wQTZXlqBRwzVrIJT0mg2kf8xTxjbf5R2TjmaJMNF6j
	 HwEcNO5tkZ5bndATEghde3vboj8y1FmEhQCK43HmJOWFJTwGkwDgnl3aR1rt4fVg06
	 YWqhrbGwIbY7DigJoBOMLZmcv+ggFlekBAoMj0LhJ4XPXjobcIFRUKOvz8tCh6IOcv
	 A8tsLQ39YSjCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E99AC3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668279357.23163.11233539236440351170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f667eecc81e358cd31e2a354b19dd3f02b85de67d4c60c02c9fc4cd5750c270
Date: Thu, 08 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746682793
