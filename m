Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665ED39A4BA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791723034; cv=none; b=j6ceiHQF1j/z6hqxw46QScnWcPxiaDvP/KA4yWta5jURv/NOxE0zxmB9Hg7AeFKxuH3CMd37V4U1QP7lmhgJMIvPVrwnTgYHREpBL/6FNB0LVpahXJTltcH9hKz2Z11Ccmql1IsJXtWtLZpD5vOzLw9wGLzzv0TlwV+X9epwCcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791723034; c=relaxed/simple;
	bh=8/ecMtdOnPxTtz68SntIQ5mmqUnWMrxaE3ajb0mUN7U=;
	h=To:Subject:From:Message-Id:Date; b=o1gWj8+Pp1AIgP0TDZ2FRvlGLWDe0RskRaBFSMoUVTxwZY7VDJDfT0o/ejBBZrDIcN26hu9mnO00VUrlxb94yQjYuG+3fKcwQpYJ0T6PIPNABKlgSp+SmjZdYQMaWgOCrDAgtAFkvYXwBGUZpRAVi/xh/l/uwD8DiKzYqmJMPXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBBp85b2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBBp85b2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4243C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791723033;
	bh=8/ecMtdOnPxTtz68SntIQ5mmqUnWMrxaE3ajb0mUN7U=;
	h=To:Subject:From:Date:From;
	b=WBBp85b2zdHDCAFPiDJsfiKJ0w2jleAooShkT/65Dym1sJ6SAnsdM08Bh5rSZxCpf
	 9+lTtG7uHj1IzSmT6kdTarLy3KlJ3i3BqxrxUhg5U+IcprtTTx7Iwrq7u5k020WGpi
	 RiNg4nR1mxnnJCx2uiN8Ari9/YXy4fmtlT9RNWzbz2d/fQigZdsfysw0NHAKWbU9CK
	 5qA9HOd1M3e4U7ucSE62dK0Wur5Sz3tW6+LGdQIuYKVuqgnlf4qE6mJBDgASKKY30g
	 9pHyXig+aZQjsPiUtp271RTDGasZ509egtBlzOaEpMDqMF/uk/cIewDc4jyV3c0eZs
	 ps3sy5S4MtRUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC674CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172303368.9675.14642523668317588999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a4266015af87e060ef32a80233179a8637a6be06efb4df92900044a0b6a7cc
Date: Sun, 11 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791723033
