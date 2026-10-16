Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6471B44AB6C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792139434; cv=none; b=MKqsu/JKVP7k28J8qaSBbKx/bV/mlTv1pQWHtKqlUdK5qaqaG2IWSterKa+5r9sJ9FpFdnVyfceU9S7D/G/5y6ktz9Ji/YBXsvvdf6GvdhZxcfH9kNzF6cc9Y2BdH3g/kWMmEI7r6mjzthedhvhhG62788izX1rYYaZSKcWIkYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792139434; c=relaxed/simple;
	bh=rZ26Y2Xh27hqUPSznyK/9xdX6BzkrVg/Sc5xbiZR06E=;
	h=To:Subject:From:Message-Id:Date; b=DqrnFF7UjGXdRFBapOpSwfJA5EGBmf6zyAyASAcgnJN216SPQw1LJv4P2M0FvHdN6DoVRXc6Iqb0cMBUu6CWIgs2eHx5z1e1rFxcA6v1wkdyT8LMVkwa3S/uKYFuDBxAzMmQ/C0WOcFHHtcmpb97a23AGMooawirZXveKQ0qawc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8uYvJ9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8uYvJ9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A6AC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792139433;
	bh=rZ26Y2Xh27hqUPSznyK/9xdX6BzkrVg/Sc5xbiZR06E=;
	h=To:Subject:From:Date:From;
	b=q8uYvJ9MezOcHfuJ13cDGfkt7XgsXzaPkU3f1MqEsVGvvgQGJEozchE4p76gkXEpz
	 ugiQrFWS5L/1DgUCBakBaYS6cLLXcg4PZ5566gh0PSAQGjewgCzg3UD0GVkKNCyLgX
	 71S4qHftMp8M5HMOhp+iiuqI21S0H+v+mbqxLyN4Vq/aDkUq022XUH/zQi5909oV5G
	 mxg9YsgfC8dV0IQ/+6SIxM6CrvGw0KH3BNNy/pOtN26mAF0dT0vD92BgZ0qMeqKWBE
	 3R5O/jOgUfTtHMldXensWqRinbgWQMDmvKuPfvkqNIu9ES4wj/7np9vtfGEm1sw6qr
	 mcoDr6X+3kdTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CA4CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179213943372.29312.7830743611284021028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d571ca6873a0676f24e1dce474eed4b64d855ce8102f9afcd101c1be327df16
Date: Fri, 16 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792139433
