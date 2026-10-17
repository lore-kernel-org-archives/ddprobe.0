Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE133BAD81
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792236634; cv=none; b=i80J2xk337y67SgOyL6Ckc3wd4pPubv2AQq22bggIKVSi1ENESnaIhbGyk3GEWqx6mnrB3v/11w0ve7S6U7PNXlDFx5QE7KC9s/Bb0fJ4X6LPUI0PfLEpnBYAlyHbyQEVD6FzS8wjHaEsV63D2oS1J+iLX7X+PZNOj29HzDtHeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792236634; c=relaxed/simple;
	bh=bZAGC5Qw4a1q6m5r9rNxH0Ra+C+VoZQm5vsC/V/rjtg=;
	h=To:Subject:From:Message-Id:Date; b=EOQxRnwezqlcqCvE+ao8B/MaUcTz9DZNgp4RJjMzcubv+EIvBQNw47SVDfIJxTSHFvmINyfXBdoTn5McJ+eWQINdxm3ozhpq31/tqrdY0q5wUHl0OKeq0e4tvxLHN+ypHRZcM54ll3m+fLi8LCBBDfJBFxvIg+uBGMfMuhEaB2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLif24Uk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLif24Uk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE677C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792236634;
	bh=bZAGC5Qw4a1q6m5r9rNxH0Ra+C+VoZQm5vsC/V/rjtg=;
	h=To:Subject:From:Date:From;
	b=rLif24Uk9lf4h6KjZISN8AM13ozKeQCykiNetWJbCIRAlDcrz9XPomuOjnEt08/g9
	 H3/BPRlLfSrKIxWLZ7PKbnGWolXzGcPWwE1D2AvpCMkcP6IDkvgIxt6Ut7R7IbRsa9
	 eoleDVqYPmdrybZikPmRTUMSFLkSjx2v3FOdeu6hGZq4K20ROC8IyIi1m7KUSjRopb
	 cqUfA2Q21V2KW9HehhoLxt+NlY0rxbhDhWtH2xtonvpWvyu069eERxLc4IA2H4/0Hn
	 9IKspjWwLEMf6gmszy/Z9+nWVzU+yd8LbuJ+9Gx9M3bD0RFcvLxf6QZPQR8fPyZo2F
	 o91D60hXKq2SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D3DCCF2C9
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223663376.18615.8940250761497426746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00eab8cb3faa9ffd8394adffd14214354d095354a0e200daccd8b23cda8e8c47
Date: Sat, 17 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792236633
