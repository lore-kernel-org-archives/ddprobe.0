Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3DB4A3C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768700034; cv=none; b=o82w8Ol73Hm7NJJA54UgjBu3fGeDt5khWcZyq0neKlDBNQfDXXx7LE2mkbuRASH1X1TXcP2hZBHl8hZmIlmH/djh4xy+6jf3f7ZsF2tDCQLAdhyXxSj8gJ0h7xsvWpEOwg4pCdSY94VzQhfEzIcIXB4kDuwpCPCVZ2SNBD1GrjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768700034; c=relaxed/simple;
	bh=oiT1L0HQAylCzMMVztOj1zSaTTQ8JEH4OLRqb5Q39TU=;
	h=To:Subject:From:Message-Id:Date; b=JIwdQB1m28sxCxVSxiCub4euJxPE6xh0YzUJVAYlRmC3vX5sBTqTfJQuuyZjXQmEpqwT+XrMr6Q8cddZcykhjmv5O2Omh0y75GnLvExCSjv9LVbcD8uZ+SkrDYPaljTLMt7TzeJ1N8NzIDNrK09Y14YWp/6UCVmajyiLPkovcgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9RK8x7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9RK8x7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CCDC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768700033;
	bh=oiT1L0HQAylCzMMVztOj1zSaTTQ8JEH4OLRqb5Q39TU=;
	h=To:Subject:From:Date:From;
	b=s9RK8x7HVBbLt9WmKu14iMsHYgpSewhxY6c9I4u3rczz8eQ76PdhuwaXmhgGzqv1h
	 +KZFgl6WC4rktg+cp35I8VASTxLLKSrM3dCm1dfgs/LxzjgwKsUa0G7Y3bYoU3WfgS
	 WUbajVSrhSXEuyM0trWc32ZgnkT4MBp0ssUedmq1dd4Q9zGigZtm1MQEc8IC8uZB2p
	 z/TWWezNdKKu4C0Y387F7tqupcgjQUIpLDddZvQi4YKU/GWO7FwE953Z7mZTpIPnd6
	 WGA+qCqfuBLraqt6d9yCxIFScRo7qnB3bRc1dSnaQK1vbW3IuicQo3RFLaQXGqfsW7
	 Y/q1XmZxGgEZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BA6CA5FEB
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870003357.20440.12833893464934802957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4d1162ea8f1b5cff19de236707bfc95d33c1e4dd4228263c73eac37306047c
Date: Sun, 18 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768700033
