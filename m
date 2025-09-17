Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E252226D0F
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758108594; cv=none; b=gTDUNJKmSwm5zpI0BPYLqBpKXEl549ZmlZV0FEQt73oQkRwq4ilp6CzlsUR4n6pmIfZ9xkgC+ta35e2/iM0kpAa3pSeix8Rl5g2E6ErAFIB44Z7B5LDAAMWp/NVAs7JbccylQ9Qjk7fSX4AlCUa1ycr9TfV7aDvUiV4ap2JX1R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758108594; c=relaxed/simple;
	bh=R9m3pjrfuRC2EkavmzwMImYmWSXJTvaCc41W1aSRu50=;
	h=To:Subject:From:Message-Id:Date; b=aiMtk0rRRfMNdOIneJ3Abxu+lVIXughISfzuHHHcM8gpaE4e1SNpKgpBJ41n6afihNwcs+xYcKvFfd6znzS+F7yHS2LOwi0C8YAKfQLLXtAsV9qa87rLA29VbLRl3cr2jqSQhhsOZ5Km4YdkRul2OZzbXhMM+NyUoDT3T9uSaYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMBjC4EK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMBjC4EK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AF5C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758108593;
	bh=R9m3pjrfuRC2EkavmzwMImYmWSXJTvaCc41W1aSRu50=;
	h=To:Subject:From:Date:From;
	b=jMBjC4EKUfLG2BHZQT2t1iSizP9nCIzBaV1p/V0bo4C48u7MxMqqF9NqU/pG7Wr0X
	 RMkuxzUbRLu5xDS0N9/TUGJscN+AC7/MIai6ASwVt6KOQ5kPUV9ZeOmsPzRldh2tgk
	 587QhtdHdEG2r6EeVr1XMhTJ/3toe/FKyBqrGWaotlGyWQH4I/Md7sCNjBLPAQx+RQ
	 ALNcxd2M6n2QCnz4mrm++mFDbcv5B3QrDvyHQD9K3gPEhFaFFlEoOkdiBJaizOxhem
	 3PdyLPu6vj/Pf0obXiJjscGBBu1tsRy6PUa0VWmfE0amCrdbfQ/3VYPZgOdYSSfNOt
	 EB7BMuHi8Pjbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC0CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810859357.29157.18435263706182118550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899adc3985854c3ca99826742a1b3c0d0e5c854be47ed6f5437eaa007e8a2daa
Date: Wed, 17 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758108593
