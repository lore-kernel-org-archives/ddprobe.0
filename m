Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C34330E83A
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774095894; cv=none; b=UDRPoxuFc8LfgTZXXVmMASYFEZFWW2fvslkYycWf3Az5RUNmiW6lC4DEZUyQb+2vt2dYskGuT35YYcLtNYLBiylgoX4HHbzwzSAA7y+7kGoCV7AzjrS11DM97MqfYsv/mLs9z4k2nO2lXygH21RrBTAmdS5qqOw9k9kH4Su3eNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774095894; c=relaxed/simple;
	bh=/xy73LcGANTnaO2j8SGjkXoUcA1vSqtL8QaqoXzcxTc=;
	h=To:Subject:From:Message-Id:Date; b=VA+4EV99T7T9yF43D3bU22YEseXKbP7gpQiQlWYVdeNIOpqiIkpkONkHFMsogYoE4Lu5RoRiaH7/LYWHlL/NYVOvQnZ2Jp5qUEvQqgW6Qj39fQFsApKLLnoC8XSw6RrnUJtzwkui6uRs2DSsDdrZ9ikXof2bpszs11NSCz+HRtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjIGDjcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjIGDjcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7388C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774095893;
	bh=/xy73LcGANTnaO2j8SGjkXoUcA1vSqtL8QaqoXzcxTc=;
	h=To:Subject:From:Date:From;
	b=sjIGDjcBe7YhoI+Xsm70M9Qww8+ZPhS95s9DfVoXjKQQRueXW3G4Nakp0Dw0nyt7d
	 IIbxp1dGk/nNJc0DX4xByAWCfVc5QSwiu0SpFP6fxeOJqwQ9BAISC1V6zcFq2Gb3bu
	 xtQ1mAfL3SNCaFQP3+rujOu8USgzTyDF6StgWvVJ/IN48rd6jilQVIrPQXGBZg+FFn
	 DoW23HOxUJm8J8J2Z7MWeA4p4aL0v4pUMLai5kBSubIC3fnJZOO0HMYcHOorjhVOBe
	 sANb+LgmbhVi99w/aiT+J8DQpvl7l00z8gNGMWWLyJvVSU0sWh9ftbHSPl9QLZN7Zq
	 nR1zOb4+ZNeWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C4E1094471
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177409589357.30366.8667832325431068714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bcdb959819a8cccae2b333a4585028ffbf6ae7c01c10d21048d0c377bd7e164
Date: Sat, 21 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774095893
