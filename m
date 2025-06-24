Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4902D8DCA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750776594; cv=none; b=oLBUaJKbsdBADoAl8AHEHU3Kl116cSoohHPy+BFHDQIHRbWOdRO96kwvYFy/tuFSZYD/MOvA4JONtXLf5Pn+T0S2+9bxqZG0I8JXOWovf163b8hJObkBv6eqQsO76mV+tBKXswV2nU3qiK8J9KzzPeE8C1GvPEm8TaTL6ABT5m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750776594; c=relaxed/simple;
	bh=gbqN+6xoPL1Gpt7YUWHtS0mpKxr/zzXa1d7GYYH2AtQ=;
	h=To:Subject:From:Message-Id:Date; b=jdq3vfzcd3N7MfDpzeYPBHMnMHzwEKPvSSDxFiiXRQjZONK9KQnX8sYlOgr2NwfpJfrlQn98HUv29W2rQZRMAqTff1R2nXI/mYrFZ5SyFr6e574vxRSTpa6GTpuO6TVBzfTdRA1YK1FGf2jLNznOb9xOXcg0HVsIx2tXX9Stjzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwzppzS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwzppzS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC94C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750776593;
	bh=gbqN+6xoPL1Gpt7YUWHtS0mpKxr/zzXa1d7GYYH2AtQ=;
	h=To:Subject:From:Date:From;
	b=iwzppzS2bpb19/KTIPceE9yt8B61kaXUUq+kk0tXLNt2j7+hTWULUCIpfAuitpQgm
	 ZOiw56hiTdYre4DH9ODOc9PceEmK74eYYIsmewUW0eHmWfXd6O0GB7X4dlpLjyfPQ2
	 phudgVvCF9tMvq5kvn/AEyVhPfDn1dQ0zAUCdYoTlDhFFGks0/L0fRQvvtaTzkKmIH
	 FoXinDxWWhEHPC8gJpuUCXe6TBzrkOD+oOzrYNY19++5Levzx4KcgsZYz1i1kMtUQm
	 PcsFeh7J2JcaXqqYqq0k+vVGcwHmoTT5iur2UiuBRI6HLbjSogG2XXgZDg+SFXZBkm
	 Y6IlVD+LSX5AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F112C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175077659357.12049.6494912957925808988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f22a494d924b7850f8b4282064a1f37603b7434abafa5b8627f32ed73db74486
Date: Tue, 24 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750776593
