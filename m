Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1027D54F86
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707508097; cv=none; b=XKXMwXdJSTMspJbNt/GR7Lpd2Prb40HFRXEJJVXYsbQDv1TuOazWBlCDhOtvX3bp/nCg7eczHGT4MJ0Y2Kg2YNXfqyFHC4xZoo32LMo6WhFPMPCjraJu7J10R4m8ruVpkILvMGvqmFVL/8RjMoQC+bUA7fO1uBQBIi9Oe1gzyX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707508097; c=relaxed/simple;
	bh=dlFTDjzNnN+xCTt5gkD1jyr3Vik6Rl7qEOfXWmyLqnI=;
	h=To:Subject:From:Message-Id:Date; b=R5uiZxHtmk56AIT9Fg1LP3/Ug/sN2GyVYB03PXSdD6eUZw6kb0pFFz4rlyIOrIEGyIuqxGOKdJLfPJiSyR7wjUxIsPpRR4oILZNL2E8hUb1htjCXf4pOj5amOgBi6+uf7d5gGhnGZdb9eQwi45AnqWde23OCziqeViqyYw5r6fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKVotYDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKVotYDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83559C433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707508096;
	bh=dlFTDjzNnN+xCTt5gkD1jyr3Vik6Rl7qEOfXWmyLqnI=;
	h=To:Subject:From:Date:From;
	b=YKVotYDjjqjbsKEjTnx6pgk8JAGetSkDaiC2Dv5jwZWI5F1S0EXb305p6i1z5u6MW
	 Gl5rxixsI/OXLApfbDa1TEAKjp4vWA5JlR9+Bb9yDDou5+JjKy6Y8aOLr6NnspT5I9
	 ZoCh8aw7CuHcyica7gd7QfGRSEa5NCMnYrTfuAOIKGBi2SEtq7PTloF6sIMvC2CyMQ
	 cq59jMIC/jaO/vUsZFuLi+79H2hePrOB1LBDbmM94qKcH6ivH9lmENLLimWP5y6Q8k
	 XjQMSbDuGqSxptMke1LhgF2HjAAf7QsYBvNnDC1zBVPGevIodcaJU2hyNR4ZrcIl3E
	 +KuLwpKIWK+Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 658FFC48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170750809640.20298.65626891969008810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca1402b5a03c3cbaa97d780c67070d9c96464c4c9ec2cff6e0dcccffb8059fbf
Date: Fri, 09 Feb 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707508096
