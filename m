Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238623FE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754598594; cv=none; b=PZN+j8RlCzMgJm9I7HLlBOnhXIw442NCwfNITeF0Ex2wVziCfLb7RZdxSkAjuD1NVkcgrDN+W+VUnXjC+9H1NBIHb9HDRInw22by2sCeAp1y9EKzhaidOEVqoU1LRVKhNR4/WrM4d7c91EGjm0OZbng+wxcz3Kfdj2qXjCkQYFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754598594; c=relaxed/simple;
	bh=BE4D1Xi/3zQTsIFJodyTGRFhH3KpkQdGTXyR4GIWMrE=;
	h=To:Subject:From:Message-Id:Date; b=Hye+qJCqDdu2QObRiAe4hLzXL7f/inRtMnH70Y/XCND1JovVig0/egykjvpJPHW4SypP4kiLhPuOpNNjSPN6mDnLjrgmHjM1+hiFRCFXFmjBF6TP+Zt5mCAQ4bpfcTOPQV5Pgr8ffwhETrflgV4ArapwM/cS492ZYcNN/M84hbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UD0p5w+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UD0p5w+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A784CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754598593;
	bh=BE4D1Xi/3zQTsIFJodyTGRFhH3KpkQdGTXyR4GIWMrE=;
	h=To:Subject:From:Date:From;
	b=UD0p5w+s8tHXnB8BA6iaIuGBjRHdvmh5B3Nh08A0s8E1IEXsqYjPSfgZQ5TeywRrR
	 fvdcE3M7Jt1WsgY6vN4aY+Qivmgxxq9e6gliRe7TceI+Z+aLiXOibJYM7PPOJw9xE+
	 Op1kqEwF7N06FCKNyykgqBHTsPvVp4EGS23y0ZhBcIuJeddvO1rhlcdvtvBmNCM6OK
	 J7DDAaivKdVlMSyw4RVcwVnglxBU9o8gMQbthJw6H0WLVw8b5FatzVHhqo8vERcHlU
	 BUzObwXYBlM9As1QeMnmDaYbYPIsZZ2Bw6+Qm4hEnysISeOY0WbZhIG0Eb8O8Lu/JF
	 rLZUft24QaipA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9524EC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459859357.25938.16370765763387171983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a11e7107e3c664bfaa86de58010730ccb1292c782257a301316931fe2c9841
Date: Thu, 07 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754598593
