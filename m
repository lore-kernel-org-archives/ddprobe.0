Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A4F3F86F9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780655074; cv=none; b=nki8SGi1nYRbvSiGhZafl2RqKPYuw+urgQxBio3V9IGoJZToN9sNfvkoe715LskC5fbFInaHn5FeYWU92RiCH4ibzyVshkx4nDFCl9E0Vx6jiPl+H5I6GauZLlEunILt6Lqxjx/4NOi2RY1udGjEkkxBWn1Dh71/XrBZEmhkWXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780655074; c=relaxed/simple;
	bh=+T2LBI8bD5Grj3C+xxZK76pVem+11dZC02vLmR1xKN8=;
	h=To:Subject:From:Message-Id:Date; b=aBv2wkrOaeZ7uu5ZnO+ZkSHXVHEqoyxwMD8m8GI1mDnkmtVRP+0JPtpFr+veTOu0i9s4Gt1ltTFXYrtznr0kuKoVKK/MHKsRgTX1p5/8f1HEsybezl2cxi4pZKSPcEtWpsdtRvaVAdV5oDr7HlVcm+ZFPncQdwq7buyB+BgoYjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7PqeoJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7PqeoJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F7BC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780655073;
	bh=+T2LBI8bD5Grj3C+xxZK76pVem+11dZC02vLmR1xKN8=;
	h=To:Subject:From:Date:From;
	b=c7PqeoJIh5EGiPcAIIeBqHtG2YjYYxo1fgiGwGmCUspdJQNNsRISJ90etP7jwWPzL
	 TI2mQQUbHmL6rhTtmRPPq0aqo0sFepI/UBmDZF+p7GFLj3IACXYqFLQ/whJB2jXDe3
	 3cnRSfBjVuqILIId+eWG625HU+7V2pFr2S9bx0aoTXE/y3sFy/bg/uLXIn29vdV+N7
	 AGZRcE3Uc8WShwByqJ8fuguDaPRg8WWa95mSCD1pVDMqDlqQ3/x2yCC1YF1WrL8zYR
	 b74/JrAtGMWhEM8VquXKJiWktNeKRwZL13ocy4trTpBeVuuK+vHvE5XZaAsc/MjZTq
	 8RJQzOAoRt8cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5ABCD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065507370.453.12954011164932457136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41af3616f2e7cef13cc0eb4f896dc21b6cc91d4c2abf41817a638713aeb9563
Date: Fri, 05 Jun 2026 10:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780655073
