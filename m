Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7EF49641
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752713393; cv=none; b=ayyibhMpanynrPf8JZsu2yRXTKSO3xxQmwvYgDQfGAOm7Zi2kRprhSovJbGXvPME3xO6IMYobm08qGAPvqOod0QLKfBvkdfZaFLDjoK/k6Pe2jfJb+Kl2iIqycp/MSgTOIxcwNzMbhTfmdZhb7AEuv9WxugxiK24GXY6AI4F7lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752713393; c=relaxed/simple;
	bh=Awav8oOjqngZPPhwiXMxSX1rNmen1IQo+dA4tY0Ckvo=;
	h=To:Subject:From:Message-Id:Date; b=dtfUzl3s19RZHsXKavAbzr18csEBcwK56Ez1epTn//As0gNwFDI/Zb+IEtSSZmaoDSALPmUXhR7iaY61POi7S9BsUPYYPlF0zDoFTD8YpzERL+MHMYlYYb6AiCx1jF1wlzXdfCGCyJif2jg54VvjbiWsQa0cfDXzvokrQ7Fw4FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+z6KYUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+z6KYUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD39C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752713393;
	bh=Awav8oOjqngZPPhwiXMxSX1rNmen1IQo+dA4tY0Ckvo=;
	h=To:Subject:From:Date:From;
	b=T+z6KYUUOEBLny5kp6aSC+h2BsIk8yMR4GH64t1aF+aDHya7ZepHgcOm0DD0wd8CC
	 lrlGo8IT8blkNrTIF7eYnjb1A35E6l7Se2zVJTID3qdpzPmwj+hPimlfxkDBPLz9ZY
	 58M/L4TLpmu1YQqNEL4r3REc+S9Qa2tmrWGerJCy1xNM8vcAJVANK39IWarccPu+O6
	 yIue2n8GoJyBxxUHsIEVjgM1ktDJSYoOKqy5VPyXvItzXYEvuuJ8py96eo6TIWnwOp
	 YyIsacl8lCsbFQ5m/kPhoB0hKSLQztX/AHG6rZtcmgjHhxNf2JNz1XjrjsuaCoo8Lo
	 eNlI/0aSCOung==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4CBC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271339357.7036.8807492846507145282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7811135ae67eacef1cb958c9a2f57309ef1a29e7511abdb968c240eed54ae947
Date: Thu, 17 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752713393
