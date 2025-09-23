Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196AB31B104
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758645594; cv=none; b=XGi9nNRwNsvo2Vcwu44V2AkNSNPSd+sjJsVUSrGKP3vHf+cqHuqquoDdHNQnYsX4A3nDHzKyJKEfIeucsovojBBIWp67jOB2rPYhmrv3lXLr2HjLWrEyc0LEBNMCk3hMW5ICiMdySxV5Ij5e6GdWzVJ3pUTBzz3IAIH45Zgm0Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758645594; c=relaxed/simple;
	bh=lnAAdI0lovxGFqyIEHcFR5k6iQrHuY7ZX2wgLwXtyoU=;
	h=To:Subject:From:Message-Id:Date; b=pLpKtU9ChoRvtLyYrFxrNrfs9lEH7AKE5aF0RHFWRuu8uZFqF9RiGrg4vaOMa06kGHZs52lFYd1X1zJ8tlE60Pe5W464ZHmk/8wZ9pvNTPd5vrwk/nkxSd6YgwHaqA5f+U7CQ+U+nhjM8Z30yMQTFqXgAVlk0VQHz+ot0lZYgmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXBoW4gz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXBoW4gz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95C4C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758645593;
	bh=lnAAdI0lovxGFqyIEHcFR5k6iQrHuY7ZX2wgLwXtyoU=;
	h=To:Subject:From:Date:From;
	b=nXBoW4gzsGhy3vSYn71l1R1r/h+Acpv/NwhPG6Ug0LGJo6zlyp1RRjYhwdWOiaPDf
	 dquwCRBydfwZstpK3jW6T1hqsZODucehwAixPHNAJ/Zd7j3RitN3Fd7fJVA27tMZxV
	 LnBHXL+J+uvSz7t2TFb9E4Pw9uXV0cN4auVzNM6nR6lLMJu6tO/8a1XDjbH/tUSaRw
	 92dsmWB3utSNyRJfAeZxVlNAepK7sKA67crWzQmpRm7PfjAbiqSPQRSPtqK3Di1isq
	 uW0lqoHiti1h18nOs9OQ09on0/Fvnj2qnA1TSFf0l0EDDLShZY3GHsA9gQQJlkZ7e6
	 McSrv77+V0qpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D70CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864559360.24764.10889145666812399286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12421fe1aa0903ecb707d3e2c96fe63481b89145069583356ba575b05b69eccd
Date: Tue, 23 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758645593
