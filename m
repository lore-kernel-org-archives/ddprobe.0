Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B31549365C
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789765834; cv=none; b=SbkwuekHEUrIBGVnppK+L00EWqDLQ1hX1nysKDFEa1jxTzaKHh8tyCz+beaLJuiuGye3nvGnDEh0NHbovut7gjlypA6SH8dInVlxJVPTy+uPkp9SRwBq84bQnu1UY90tkNZq83jLkGtg1O05PQ14a2e4/ht+ixEHQ1R5pMsSK5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789765834; c=relaxed/simple;
	bh=8lwB36PIWsBkA+h88Y4MWYD3TcXLDWJoWq2YDNCwtuU=;
	h=To:Subject:From:Message-Id:Date; b=b9qy+9SFwDn/3M3IibDenDm9WRyHWp+eu40i4zksrjzG/u+1fUlk+rAyq51RsrXAK+ged5E12nVVF5poUou6SVAoMj91+wrOm/pcaF8r1tbu3+ns5mrON7ZfnkAuh2sFVVERXvppqX8zO7PUUD7Co5GJyP6OsSM8CBAWGsdy/bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLkudmza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLkudmza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E39C2BCFA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789765833;
	bh=8lwB36PIWsBkA+h88Y4MWYD3TcXLDWJoWq2YDNCwtuU=;
	h=To:Subject:From:Date:From;
	b=FLkudmzaTtWOdi30hK0mI6eJAklF9tjB9dKXBWdgr+rY3nMHNQtAvg2tWRBGSOPFK
	 2foLlVHV4i7woHwvZTTiPEO2nRbQjsX/Hl/qVSNBqQcQzDFjRMblDGp+0DVy7xyON5
	 011M8TQFHQ1xnRHSDAnygWV7TBnUsiUXQ3NtRxhfifaeYoB1Ev90ux5Y/9yOcZhJKB
	 gbLefqpZ7+ng2IoG2+IZB3v7BjnfPB9+rUiFcfBLfu3Y+/YIYgEvfQjcjggdsXnqkK
	 P05SfNoLfPwpo68dEFQ/9LjMoSXOmqjQ0RHxOF8yshMShtZObwQoNwga2PQfKG+pjI
	 rFc1jaxdby9AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2FAC982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178976583370.7795.9980178262609156208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56da53df9739340af96a5f73204a78f5dc41328a0fa11ebf800b3f57e9064d77
Date: Fri, 18 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789765833
