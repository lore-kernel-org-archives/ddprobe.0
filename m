Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362BD1CB53A
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725299154; cv=none; b=Op3AVuJv3JLRrZNM3IDm4yTR8kSQ4Yryz2d37ooQF80/+aN+03PeSjDmhBToPubhkpByMYuCSlXd/9ZlH5DfKe4ZhN4D/96X5f9xD7OLI1SlN2o4ijf9PaikStHcg5MGMrbpUIrv4vwoVmpOFYImJukB1JyMEPeoMxQuiVR98lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725299154; c=relaxed/simple;
	bh=4Sk7SwSvRrcJ0kRzbmcYc88dNv4E7W3HKIoDy2rguhQ=;
	h=To:Subject:From:Message-Id:Date; b=RzoVuTpiYyfFSuye8okajQjkPdij863hb3coLR1GZDhI2i6WnEAtp37WEIi1ju65GiJQTJyl5hhZlIVe/xhVScxh6uNU8KWd+tcG9Gs0ytarED141yNXqlvVSZfRunYk9m0gIw5e0hD7eNY3OhuV1fSACSe5Ad5cM2jMXJVmcjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zof2JvxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zof2JvxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DE4C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725299153;
	bh=4Sk7SwSvRrcJ0kRzbmcYc88dNv4E7W3HKIoDy2rguhQ=;
	h=To:Subject:From:Date:From;
	b=Zof2JvxWr8lnbFKLWTxym649lf1FVjQ6jnjKOQaZzp3Z3x2BLKOxQFEnvQPRfIhLp
	 iBUZ2BX7SBzZX+QE9KDWyQ9+5e8PERrEZTq0Wy9uhJPF5LkdaHP2TNsZOfnWGmezcT
	 BZ273WEREqGsfz0prBM7ceIBcW/yzKN06X4s8EDmemrXQrcBULUoHUQvYPM40nRCXV
	 e06ITShRanWog0a/yqQFkPeK42WYNR9EV/kirJpxywNJuryWe/zd1zbf3AldgoHkjS
	 7rytbgz/zqNiYdZ4SELHux2H0OynsmPfjOrrYMVFM0WkdbscP7gu4TW3gtbP/E3kQf
	 pX1YHqnpy/PZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900F0CD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172529915358.21921.4469783215781500432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa1ad76105b700424056ee9d4cd7c284a2dd122acef72a033b7b96d05d05c13f
Date: Mon, 02 Sep 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725299153
