Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2136E254852
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745956794; cv=none; b=j46qT06olIlk/f3+pUsOLyhzktddfFGdQ3DaQyTssoYMXwlMCTXfLuqdeY/FfC14KCjVcwX2evsf8bUOBCzqputboWWIcYqE7OLnWHP1horC9CTBUB0WeRNhKmRnRNi3Fm3MsmT6iFrcTr46ydu1rgulUrANy9auiO2wfE8upns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745956794; c=relaxed/simple;
	bh=ArKeDbroH3Sf8Jp9/4s+HMAO1WyBj7l9DrsalJ0/CqQ=;
	h=To:Subject:From:Message-Id:Date; b=ooBEauCksixXy35b6Jeh4mVBJdoHwUH3myU1wRecIvsPjOUBlKV05QTpuB5jd6ObDW86MKfzr2EohIF+ShhfdGR1WAoDgiudNXJNYqGrcwDHo2edXwQlmoH68JipOiLVdkCaYvJqzy1AAlSprwC4yUZGLMoYH1wbNixY6BO4pN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akTpDD+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akTpDD+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC2FC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745956793;
	bh=ArKeDbroH3Sf8Jp9/4s+HMAO1WyBj7l9DrsalJ0/CqQ=;
	h=To:Subject:From:Date:From;
	b=akTpDD+insJfpOqtSNOTM0lJcyJMgaGQ33wW8mIcCzVQBUJGUYKVnnpiJA7xysvzi
	 mM425cXqMXivHQ9UuaaZ9NWZ8p4tBQqTJDEfUGjrwiG/SPsP3sPUGOKjpjWLreRzXG
	 kZzHc2PY/UO/fkMmzJICbnaEU3u4StIqsjOuEBxadMG3DILAVtKMTh7eg+w81vVgxE
	 BuWevVgU1JJE14F8Q8Eg81Frp/TO/Yy/reZZZ5kL9hXS0xeN1liFAlHMtlIlO5OFDR
	 PK2a6smLmFwDYUjX9pFr+yAf2SZFcumKd7Sxa8Q6tC8Hou4YEQldJxkHNeAUP3zYkw
	 BQ5JRQ7X1Q9+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFAEC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174595679357.11826.17747119238110733207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93d84ef724566d469e2bb30971e84698a246d052488ad08b3b35891b91574982
Date: Tue, 29 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745956793
