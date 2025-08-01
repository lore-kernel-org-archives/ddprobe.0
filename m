Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2616A1F16B
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754051994; cv=none; b=Nut1yV/vzqInNLtP3NIciG/E0QA8/PhRMIk1KqquF/+QB10JD9VNh1Y2endi0kZt+Fq+Z1lnLjQTU5/kJHlrt6VZliYAIq17MMjoK2RHBGoC6hjLQp5V5FxF4GbYWmMP+pD6Fmo+CKD+42dy9SA7godqoGDS47XFW892JG2RHEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754051994; c=relaxed/simple;
	bh=3+Dvll7vKZnaQuLT6kzDXmFWk2xiMOqD4xndW/5Wd5k=;
	h=To:Subject:From:Message-Id:Date; b=BF+vW7NPD1/BxpsoNYefSN+Z/WDY1s4vstUieMbIt+mTFNM0MHJIPckvEfDFdO5ESKYpupi86NjCB5O/9UNGpC2mRb2OKFi9089NQ6O0istKpC531EUcm9I6PkBIZvvdf65CV+WJbzHjjX0eEd4UMpaPZBtQsZ76CH+8mZFj3FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZ1Jco6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZ1Jco6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4977C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754051993;
	bh=3+Dvll7vKZnaQuLT6kzDXmFWk2xiMOqD4xndW/5Wd5k=;
	h=To:Subject:From:Date:From;
	b=HZ1Jco6n0uhZykGvZ9Yck7iA44q9Qd3asWpc2RI2QAQNusYTaKUnx8HgS1E3FovKB
	 SwKqbqK7GYpOi40vBASSLhV41X3WIb4iJlpb7K9HOrmw03QyiwBKwHxtsxgxeDJAPl
	 QbLv4JILOU8mqgkc+eFeiLdcQtOhfyne4nbwR5LgUwuSUZKagg0ZAbcML/1iLsMda4
	 Z/mdXdJ1rc4Ou9CpMTXkCQDCRzwfivKWdGeKRPzhA4dNEAVwyhbZxc04ELSBDowTxE
	 5XrsPhM7c1yeJ3kgP9mROGYcHzJl/J0jje1EjefIWrsoyHiMwR5RMgNFzQXvRyDjSe
	 Q48uo2PkXgPyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93820C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405199359.14512.4664646963376471922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270983711b1788b648140ae8ec48972917e60b0a6343e71bea5dcd959d02a8a2
Date: Fri, 01 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754051993
