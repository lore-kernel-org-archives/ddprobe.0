Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330A323ABBE
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756103994; cv=none; b=inEyDLQ3JhdCFSEBtxmpgoRSWR9Q9PdjIYkUAmp1gEYsjNhA7bJAE/LBAz1iDSwW2LVVVZfhlid1UatLZMPva9jxSmzo6HfdgKL6ruDwvspAmZgW00Q80yu0bqMPQVeF37bgD8hdcRSNbgWEIGd34OvXAynr6UGf48xdLGQNScM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756103994; c=relaxed/simple;
	bh=umcjAt121N+ck5+TRgqFYu0/1wsOKGn7/LOHM4IKp7I=;
	h=To:Subject:From:Message-Id:Date; b=Tt43UXHHiVF53szzB+1yk4BMa+Z7sYYbbB6SvZtb8QdHyOzbmbnAGOCH3n9b+B/o3OkiVNN3kXMHGYBoFZrZUbN08PfbA0y86n+eQoYmjs73c/llXBiatSZAhRlS4OuiJxDtbowJzDNE2K4lqPlpJ9M0SREUN3SGexiX4S0K+u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnbRrpX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnbRrpX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7784C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756103993;
	bh=umcjAt121N+ck5+TRgqFYu0/1wsOKGn7/LOHM4IKp7I=;
	h=To:Subject:From:Date:From;
	b=NnbRrpX10K3bgUlIJFJyux2bnqxTFG2uRS2s3SBJterfjDPr7yOwDXn9bsSjiZjH0
	 PiQfZRgoj7dU5lz4TyHzfcmeanb2vBV85SBpxhT2/EH3B8Ssk5y7/14NRXw/soaTav
	 4nIV468AiexBQA+YsfqUsQlEJhHn0gQwWQPFPR07h738KIZhAqNzuj21ojqH8kKdvE
	 YFd7xPUuSRb2TSiiEGWXmAkecXWpqxyn7kRHi5ZaGAIP9xIayS1Sf+lXp4fqIx6sQo
	 Z2YzOF6QVLSZY4bG4SjFYSF0jgPc1jilsrNCZWhlkR0uc04HcZlcfo7dDD4WlN5VYQ
	 i1XImyyJqfqgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9240ACA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610399358.13499.3070714126077070188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83b892f797788990a1c16e3770723fafd9d64ee1ddaec460145a902f979e167c
Date: Mon, 25 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756103993
