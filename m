Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3398A1D5CEA
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749457194; cv=none; b=ZKGQW7MfL4CxNzzg04xW7ei8RsRK3UDgBemeubP+09jEDL9YOJtoB/gjPQHnUQq1vRaxvwFJ98NDTCmK9kR5kALkiU2d1i6b+tcT5K29zSkt1/POdzTGoJ8Hbt/YaxjGCLUVDXxVFL8j+gBow9u6GyNRi7zMWBxqVyZl7++M6W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749457194; c=relaxed/simple;
	bh=DHn8DREv8Yz7qK9q8lv3vivbedJeWucU2w2KmhLnXew=;
	h=To:Subject:From:Message-Id:Date; b=UCTpRioS9L4NCBpHM3Z1n1D+fatiWCyauZBiRxmE1RAovMruICgmGQAcO6qpTU2QJ6HLr0DRMky7mKICASzSElpBx6zV3EztVF/5WTSgVdgk+ICLCU2PzOKVvYBm/DFlVIoa9aMbktoyphHCYUoRGX9/rKpwWUM4Q89hg4zMWR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFf0NcbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFf0NcbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A652CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749457193;
	bh=DHn8DREv8Yz7qK9q8lv3vivbedJeWucU2w2KmhLnXew=;
	h=To:Subject:From:Date:From;
	b=tFf0NcbTyu5Sa8NaVE3Kf3b4ZuAqZYcZHWxxdw8T9saEHxXTKiNQcAgS3LVW62SGP
	 UAfbrL4Krlhdp/xygGJQtZEMXUQjm4CjK94tonWePhfm62amaPL5xN0n0LlV3l3eVF
	 h3Ud7eXG+wXzakoN+L6yisQHFedD2gKwH+Sz63hA19xU/qy5Chk64dxlupAkqa6pLn
	 9LiksDjOxdy0Kb+wJuMjRV+BxWRPb7EQpDFylLA7jkSbLVh2h8xufLhkGZuO97K2iH
	 8KoUA6dlkGEGrlCn63J4CWjM82/JtBRcXxD3l9i6E/+GAkZPb/1+WYwDKRnHlVn7/t
	 sYYhnpt49mYMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF3C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174945719357.8156.17832490078088224435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed26c2022dfa4b7d85f08b000c53abcea66d991e397789fe67fe1a646f2f5b33
Date: Mon, 09 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749457193
