Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3599C20ED
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763596914; cv=none; b=W/hx1kokzrGhR7jYoUv5eQoxm1nVnoVHcSopR0vfZXmoWg7fPkW5m0k3wskU6lOaH90UCgJRh0L6XWVdh2Ebw1Q/19f5ubMRQ+FCCrn1dzjXY3wn1nOtrHBbepTxB74s3UtS/j8K7IrFlioS3hqs+KI9RXk73BDrFVg1F5UX9Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763596914; c=relaxed/simple;
	bh=ytX+N2MQ3689QU1BfRfWhAkgdHFtWhSun3KmajmSx6Y=;
	h=To:Subject:From:Message-Id:Date; b=k1HfV1f6s1mitHDeMC4Ss5Bt0ZZwqffcV0Fc7whtKwM3CxRyVrYgEEGCfXgo6rrGh3oZ4s6/SGloSUVJEMJ5gBDiBt5rOHMGuS5OrjGKgqzYjW8MnJKYD9MyAH+yXkEGPIEj15eravBwDUSyXCfGsln38gn2NkFCVj+lLU/uXXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bi7JM+Fs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bi7JM+Fs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A240EC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763596913;
	bh=ytX+N2MQ3689QU1BfRfWhAkgdHFtWhSun3KmajmSx6Y=;
	h=To:Subject:From:Date:From;
	b=Bi7JM+FsbVzUZ1tFgFHu0dwW9bdl2+qtIFT6bPVfS8wzBDLfRF1kY9n8mRmakVFCA
	 PBBXgUI3amEFWFyHuQXcw9CDcuVCFaua+0Tm4tlxjOjhYwOhRAYVlIheFS6da6cHFI
	 9jiXqV6O5tx+6DBWran7feN7B4LyLeBv901m/0YYwzjhMInf7PLdmxVWHKpUHG3nZL
	 vpmhj9MN/ElRjsrDedOyrZhTnqk7QNjkAg9aXtNI9FCxK/5j2OJ82W9qn15RgyfKkf
	 EHNaO9jhCPunl+mcC5rERKaZNtcbOWdwXXjnL2Ct2h85U4x9zOq17y5g0DufroshK7
	 /eyvJFw6YJP4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B7CCF6497
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359691358.22454.17875435480023639673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d7003cd6d69cd52b350b4f6c77e830fa70b4f34b957a63bf5114509e120681
Date: Thu, 20 Nov 2025 00:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763596913
