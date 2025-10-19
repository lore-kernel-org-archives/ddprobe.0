Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F3F354ADF
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760852394; cv=none; b=hUS09uKosNtBjBxlEzNMEkmnaMG/4XIjqdS06/8WGyF4VSG8umb+AQ9L+G8Il6CuhPCXDHCSfi2+HDPdN9O81Od+w5aUOe6NETmj596xLT7Q7H+/IjjGBi5xEk7kKSovD9nj3zZWTtqCjOEYRJPUNqTDY41p6KHCqG06TOojfY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760852394; c=relaxed/simple;
	bh=IBZe6gI0dTkK8JshUhAS4iADyiNIrX5Uzo3rRw8bHFU=;
	h=To:Subject:From:Message-Id:Date; b=n7+0JPMdl8ZJIjtOvRRffFo0rdQTa9wisRcI70iZhxNCsoO2hVWD9Hx3M0C3voBp9rhIDF0/Y7Ax1hMF3a62iCKD3/xmkBnKh6j5fYU2BDpo3TAxMfh726gv6l/FL3lzXviboigP2OEKPv61JHfHlr4OZzHJ8VSTCsZ62dkOyoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhks/2FI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhks/2FI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD40C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760852393;
	bh=IBZe6gI0dTkK8JshUhAS4iADyiNIrX5Uzo3rRw8bHFU=;
	h=To:Subject:From:Date:From;
	b=mhks/2FIjko5E7SjwQUQTKuqvZ0nEwamrFW56jjYoYEGd7WcGcpBPyrTdZe1S0D8k
	 jjKhKv4kvbQODFlenNUTzVtAkHNrcMJZs1V3isReCMwMyA8gOFZ6j4YO9PilOA3KVh
	 4Svse38q3rASB1B45aOJAFwXH+inzlodnLLAOvIRX80n5oFFS2qytsfY7/cKs8hZTV
	 aObLdW60bVIyR1+SB+Elb/bFKPCzhooFYvkRqb8GxPEDsPto0xjSR/t1NuTV8gIX23
	 FhLbSjDsv5OllcYrrL/F+dMtwjMC2oqyGE0cPlU/e9SBaMYex8ZUQlyZXATSfND/+A
	 fSzfftLglivdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94898CCD1AB
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176085239358.3342.11278232892970772695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de206efe595364d2d95b15bcc92e03f397a09595f15286bce3056b183162ed1
Date: Sun, 19 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760852393
