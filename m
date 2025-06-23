Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131921EEA3C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750708194; cv=none; b=QppN1VKXRpMEbJGzpv3pmyVVDYarmME6CiUCIT/ioZMkor9Y/+ITsrTFIPRcwLrdbFCJDh2JwNEBUuS++k9uRQGrWy/8NvzqJNnMiKRALf7cydUpNqKMgqDTdzTe8a7hG61CBofpudaNxk90nx2HR5SiyHWYvgmFxSTBuxGtSmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750708194; c=relaxed/simple;
	bh=smqdoO699hYvdsfGKWhMSNUXn+tJ+R/NaUeyAw8Oy6s=;
	h=To:Subject:From:Message-Id:Date; b=BNecxgvZngcA+ZClc6HZ0YMNrmWbIOVi1xa2FEwoHT4+1rCc25OQkFgcHnsv6/gfzMgZxVDfqcLl61WwfI3ZznyXdndUwep+xl4AaD1MIt6EBztKt+wtnix/H4JRBAskLFKVfB/o6+VZ0jcyo80AcA+pvkfBuedSqylAg2fJUQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfirjsyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfirjsyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E384C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750708193;
	bh=smqdoO699hYvdsfGKWhMSNUXn+tJ+R/NaUeyAw8Oy6s=;
	h=To:Subject:From:Date:From;
	b=CfirjsyAsXUEz1SEItmHT/Us/BY1Ok3a181pIovN/iiEY71E7a6pHnSx2sqQO4ChM
	 XlLuQ9ME5gIwxzYGYlgTRhlgCnfJllwBnjM60wRJJA6a6XWwFD/hIOvDtsziOM3yPF
	 b8vS+sODIXuHmdlhk1rXSrWgbnQZXQua8/lE0sAxFJ6HIgKG0fNdivT4ZmR3aZtpov
	 S+zDoRJ+A6vAsBH++fCMpUq6dVwAv+/0RX01nG1rKoPfVLBtgf4LexGTl7NVAoUfp5
	 y+iZZrewQrQHYEWG6Zx8hFGldtbUNLrCxJssWO+Gih93LJUHjyLq0euqyVFdddGG6l
	 CuwTkB8B2BjbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9AAC77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070819357.8278.7760477668872660818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16426840f5a4c65e07616fbd95b0982dcaf23614af483d06192d936fa2c7fbe1
Date: Mon, 23 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750708193
