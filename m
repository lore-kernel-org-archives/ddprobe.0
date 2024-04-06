Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1912C1B9
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712418497; cv=none; b=VfQmuhsgJPLUimibasDndnT6dLI1q6FtUCWa0PDlyeyYJPLXX0AHnqqZh7KECnlQazcwqhTL03DZeqRH3ZhPCq/r+oGIT5XvSf5acAlBvsV3XQuU6sIxs27t6UCTjhZn6pF8EGt25gvh7wmm+xskLxhtBDQ4NndNwuRAYe//dU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712418497; c=relaxed/simple;
	bh=UOiioyDHiW0LsdMP0f3L9GgypPsjDqa0Ad3dAv/nur8=;
	h=To:Subject:From:Message-Id:Date; b=J+TZCImkRz8Y5VFNC0g+uG3+cSxA1omZv9b95AlG0QGCpnV/+s9KwfTwnrlPXC8mwGg2bpuy9bpwkPiYkjanpq17Auy/6n+PeSIxArxINaCdDqb7izVNLRPbVDsaRBmtCqiMWcm0hCS5eAzY5Np12Wkdk8BhC8OehZDKk0Lnb+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PitYMgeF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PitYMgeF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 805EDC433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712418496;
	bh=UOiioyDHiW0LsdMP0f3L9GgypPsjDqa0Ad3dAv/nur8=;
	h=To:Subject:From:Date:From;
	b=PitYMgeFr2BdSSOnr+FXaX9zCuHsIGSPC0ifJ8uWy7EOIurmaH7zwCxT0XXItDFb0
	 59M/Mz2t0qbBUbBM12Bkjwq3k9vYFnqqoB+SPyJZ82xAzI/SilA73HVrp2uTzgRN6I
	 p6fyY97C5zV+o0DGXKp49UeRioLx3KBjTyCzrAGQuCFPKeDJ7eB1bHa5rxpEXM0+/o
	 sakkBJxQkvBvFCfTa4BFsMQwbTz7jK6Js1Ww2UZC6GbYDFR1nic3HQRY0+aAdSlPAV
	 6cBfPKeVXNEgqQtA7TIkPo01yjFg4OlFyAgSoZ/up76vU4QUzzB1LLcnOYCcq/3/qT
	 C4mskq+5rC1oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F27FC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171241849640.15024.8588286605397507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0838196a58faa7d1a91d77ee2a152bdc965cda8f3917853240bbfd8ef6ab55
Date: Sat, 06 Apr 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712418496
