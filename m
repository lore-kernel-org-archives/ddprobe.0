Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109961DC075
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756361395; cv=none; b=cNczxaMdr29TXVyNUEmbLJnaQqBE5vEtwwluMBFtBt05zBbd3NaZWJiDGvvapBoRYRyO88ENi1D/QdLf/utUGDwzZQkTYvxcvuOhHhK16AkFlMWR3od91BjZbwlIssXRTEWmndpNJo+rrfjB1oczPRJmultrRKv1VPCjqc1r4ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756361395; c=relaxed/simple;
	bh=rRT3ULVa8R/4rM+XSaatMTgoYBzcZjye8JCyF3wLqP0=;
	h=To:Subject:From:Message-Id:Date; b=sho6PAiuDTQJMsJayaB2ZOVbJdFirBXPT6TTnQ633nlzQgAzH8/iEb4+PhrOAGjJz8ppNjT17HuZ3vvdTo3YgzFdWfM8yrNoO4ZtGBzw1qoBM8hNIfmlKlsQ1T3guvmgNXpXnmaaRtL7niq3LhDpifQYKV0UQaUmZB/Xd4vtLww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuuGJwer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuuGJwer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F756C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756361393;
	bh=rRT3ULVa8R/4rM+XSaatMTgoYBzcZjye8JCyF3wLqP0=;
	h=To:Subject:From:Date:From;
	b=uuuGJwerwT44Qhl+VjAlCyN5gLYOW4OChPmzo+C2O/Nhp17yy9QL57T6Wmwvn8sXh
	 FfGzMGMEiHdCuazZDqlypHvKKURYQLbr2WMe+u0nyZdOZJjzaTvY1ITjVZECfgav6L
	 l/O5XvL9kNYi/zYXG8u3G8xAi9xrQvN+4DNoXovw6c2FbIwQEwVkeFC4xuO90NHB1E
	 aOg2sejMOqfcOZl1FSXlM4GBs6ywYvtdyPj0ss6jRBTmAmHXisOyxT5NBoxbQxkQwu
	 p63Q8OT4RjBb2QV75/ZIrajkb1MerStftcSW9A/rYApHS1sYDV3q1tsVsChvLUDabF
	 SAjtMFa8Ryc7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5D4CA0FF2
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636139357.19185.7964942436942297048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 056015d12a1acb399a6f5fdb3b7175aaa463d381338e079342a6b6f2a2964a00
Date: Thu, 28 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756361393
