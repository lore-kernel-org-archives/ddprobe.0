Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E9603043BD
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765258975; cv=none; b=dMZiXyrMi4arvSbowjVAtqbn6uVepVMuA0KhnOlmu3D2LN9GqGk4NfNyKU31rUvOTO1fu8y16vwMPY1Xa3+KrciEps0dt8u8EcbfZuf8dVLYEPaSDkduosqpHk3koZZDtMtkaK8zy6yVsb+AafvbarhU2wmaKQypppfyM7m0Kcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765258975; c=relaxed/simple;
	bh=WA974hDICvdX4zsDoEtrleuXlhS8FnqS5YYvf2rCzjA=;
	h=To:Subject:From:Message-Id:Date; b=s76mfmyKgj09PZHnEblmuf/S8UqZAtBcCrUuC9PV4G2D1GfATcNy6Tmr/qQj4DhobVI9RNP9EH4PCNjeR8qlrnkrj7RWQS4mS3bbR1gU0Ocr13t/tN/qMJcTZMFazBxOHzsxDys0TUd3wR5qZsAKDwIVbBljhmsVCDeX8oGuj/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUTQVCLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUTQVCLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DB0C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765258973;
	bh=WA974hDICvdX4zsDoEtrleuXlhS8FnqS5YYvf2rCzjA=;
	h=To:Subject:From:Date:From;
	b=TUTQVCLWJUode8NXtJ7WLZBxsq3ghPtAimXYk3dwwnQtFuP6onUhv7jVO2JMh/pBI
	 AclJVsUZmZh3HYvECjcwl1niRGuXxXfh2S5/KATP0wYe9bndZwCOeVI9MoZrV+XsSu
	 od0A0KDkWUeLXpgRNXG7Zvx15pwFc3VKWDl5dU3kxWFN4R82goxb9Op1JOBOyOuUdr
	 XehZQpuiH1nzH+enL/YgmnDSYkJUlRegauX5fEHRAmsk+qN6RqV1YX3R1X87UNskNQ
	 rIN6BOzzgEE2kdsqyFCjseXBRX+XxpyR0iY6ZTKjWsd2Zg/QElDk3/1M0532i8qenE
	 EiBPg1tW6U7vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97974D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176525897358.10747.15256842918716101753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc13c80439329af94594eeb88beb2a31e877bccaf261d7bf0b918ee0a9911767
Date: Tue, 09 Dec 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765258973
