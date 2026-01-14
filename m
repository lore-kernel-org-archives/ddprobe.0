Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D6635E552
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768425234; cv=none; b=qBH/pflBoyCCLPUE0wyoVQ+j9lStRTdtRoxDN4MH6Q1YlYs/oii3t++Pa1iORNxBpxmdRV4OqQ5WIPAL38/aSeLKinxAgRt9C9Z0V/intwEW+nYy9v1jtN2MM3no/G+YHSsmvmghLalb6spkeWMswhS1QJOAWMUCRhcLkDm9Q5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768425234; c=relaxed/simple;
	bh=fNelBB8s3WhmLttdMU8lPRskB5GbV8Z0e8UCT3O+z7s=;
	h=To:Subject:From:Message-Id:Date; b=CpQA4uFsKYwDXO7GTRIofu1R9wJJx1D37hR/IzCU7VnQdsWQAmf+xGlhIJnxUvHPbOkYh6xG2hIP2kqr4XHak3hEC8t6iFaXcPcBOigBMrPPidrpwcmtBPKyfwLLZsk9Qm5JWlPM/d7UwZi7epL5WXcy8L8yS0TlmELuGuWms4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPAQVXlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPAQVXlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49ECC19421
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768425233;
	bh=fNelBB8s3WhmLttdMU8lPRskB5GbV8Z0e8UCT3O+z7s=;
	h=To:Subject:From:Date:From;
	b=sPAQVXlSRJbftmsJjN5zv8egW4QdEY4fqe1dDnu3unGc0LyWPjslJHCesgCahlt6z
	 EaeMyb70BKcvuYwD2+KG295R965lUalMOEODDrrPXu6MWtGf+HjeN8yGKdzJ15jbxs
	 3n/XuL9XMIEREEoJwZ1qsiBK522g6MFXXI100z8ZmSjzzpnA7CGSX9xcWui1NjQUl0
	 Ys38gbKKh6bEbKeQLqlJF/xhOq+H7pCkB3OsH15jW+kxCCxdUuvHrkw790E9fN44So
	 0xqNpd5txXf3gL/LgVYRif22XCc2q7UcnMsW1d0xHFTZZPEqaXlk7hmg0+iqip1dNH
	 hafZi8qAB8F+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9418FD39013
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176842523359.10202.769857558212956930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365578c9db46eb7f5239bf80020395c51f6fda585f6a4d105f91f67fdf77f9a1
Date: Wed, 14 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768425233
