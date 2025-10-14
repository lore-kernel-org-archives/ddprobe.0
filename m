Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF712E7BCC
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760459394; cv=none; b=S3V/73FNeeujCXpRrOkuRQvgSvWRbu3oIgK1Iwkpt+bX306yplNs/UAQBa7hrsueOi1zEemaYmGbqUAd75YaLV2ioP0scJaHFS0wilr+Ed/e0aJqssmqS0FmWxjQbsTO1klSlbhdAbjtl6iOedbbDamsgVUk7+rMck/Y6IvtBoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760459394; c=relaxed/simple;
	bh=YF/IyfFAxwMqqTm3yZz3JiosY/X2OXPUmb27pohHtA8=;
	h=To:Subject:From:Message-Id:Date; b=DT6X6SbOkaR9YJUTgKtKglIVPKhzRvHTMSnbkBL55/vD97v2WTqwtlZyke3WR+3t0VxKoi0CAmFyZNV/TkbXrp7wNkO+79HCPoqrsCBcjbqpQQta89KmecHesYQxX8aj1CNGiR3jpPTx1Ht6736xGsG6MFHyPNsHqmFfYsiaaUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hyd4jh5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hyd4jh5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB32C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760459393;
	bh=YF/IyfFAxwMqqTm3yZz3JiosY/X2OXPUmb27pohHtA8=;
	h=To:Subject:From:Date:From;
	b=Hyd4jh5L83uPi1qyonck9StUSCn6qZv2U15bcbav6YyIUcZKO7r/i4ar4lsAWvo9q
	 Ig60BPPSteedB4k4Kh1J5D2xL18YNBCkysr4qRCgtRPEqrLk07Pix1oKprWOB5UW7X
	 Nb9jfR8entMSOit0Smozr1NCURkLLe2D+Rv3VuvKL/AxlZ7Isjk/4CYL0aooccQAuu
	 vFuZnnezf1lC9vektKsjLIPn4GzLVVlQh606uDd7HrloJCpgZpEHOGRZkTlw6rh5kg
	 12Xf7fzOxXWgnXFp/mdIAE6nedUBNx8qVIYFW+LiderPgZlM2NE4ezOL5KadwXUsCM
	 eQdqDwWPjYQkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC35CCD193
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045939358.6874.18016251396420836196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea0c780fc7f4bb771ba240d33b378edcdb73273ff232936dc9d87eb4cb530df
Date: Tue, 14 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760459393
