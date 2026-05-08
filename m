Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F164373BF1
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778267254; cv=none; b=lAUeavwqMDuGqiAP9hlZDKtJ0LDS+P0tS1JwZHoGcPDR79m0JNDQ27BmTwMH/3PZdtJyKrQJOm0UEmZDNn1F1SInvGG+ac2xMclwosEebB8IXK5qp8CR6Fy6rAVhkhiB2qW9eQZzHn7STwj+7KgA+iRyLVSQbK7Se+849/Fh4qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778267254; c=relaxed/simple;
	bh=lnmVvMCSUa9uHlU013Y+Yxe/3HuF/9ROrqhc+piHLJg=;
	h=To:Subject:From:Message-Id:Date; b=ZOEtSKQrOk+O17igW/OUM/4G4Q1i2dJ4p5mFdud+1pftcq+ixucXTICgKdjuaWyU9wW7x+wmi+T+oyuc8jfBco6YJ9quf04q7ikjCizkrBIEF+5GbR9xKulTrjrv0I9v3UBZnWgtmPik8O1UZvKbZ3hxkV7hXv5Oq5+s7sHWlb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1GmTEIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1GmTEIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CA3C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778267253;
	bh=lnmVvMCSUa9uHlU013Y+Yxe/3HuF/9ROrqhc+piHLJg=;
	h=To:Subject:From:Date:From;
	b=K1GmTEIj8YT27gyHCZXlKFpNNa2sJUj4+S3sKUcXCq+fqro83N15AWrh85mPTXYn7
	 vomH8ZSLHdMwpEAhBjQNepBEvyd2kmYXBbWLJDjjIvJh6djy7xUsaq/2hFdoI+lY4p
	 TVrimVY8lCPeUQCK8vLmW5vWtLhPcZ87JLnZJq9mVsPy9IYRRSNcVqM/9ZydnXXDMC
	 KbbCAakio4Jwo8/lNkp42ub2kXzx2KeWgtiYy1iyfn2sJrxJdOINV6vPdm5WwooMc4
	 O1Oz9/qAiCMnrPhbVYoxNiFTG2n+WEj+FD4Z4yQ4HIvixRJTnDkYT1ys+yQatQubxl
	 9drIX2L+D8alw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFA0CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826725369.14389.12641720654627860842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51008e3ea28428f258eba25622689f700e98fe7dc9740ad55c9d0c1e1b34e18c
Date: Fri, 08 May 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778267253
