Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CF68635C
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752379194; cv=none; b=VTLLZolWfgQ2+rLB2oBvMIAVqdYEpZ7q3bzuDM/hYmSvMd7Mdy4Z1VB/0X8JRW0jNpP6BWv/DCYUUOsE9bYEOgHIFG4s8kOo0+FEd5TOZr3Q59x8GDtZwB0ogedwLokdimdQ9H3MN/6SLuDZTefkH85SNYaEhZPi/gtI/MIHNd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752379194; c=relaxed/simple;
	bh=HbHwa7zMOTSP9jzY8qWCuo7gmhoNx/BxXJsVaE0JDUA=;
	h=To:Subject:From:Message-Id:Date; b=uoBCwh7mZb9jWCEzAFxsMzC82+HJS94U9Xjq3WsyzIokDgWkYLAiSUKN37KU0v56OzD+gcFKAlU5eqNLwu4aQpJYko9XlRbeskxlY0nqsMU4Y4ejB6/jD60Q50R206jVHz4IVg4ubnxFzI7D84x93Ca89eQUTkyLi1vcOiU4j7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFlvgkMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFlvgkMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D9FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752379193;
	bh=HbHwa7zMOTSP9jzY8qWCuo7gmhoNx/BxXJsVaE0JDUA=;
	h=To:Subject:From:Date:From;
	b=aFlvgkMHR0g6TUc92DDyUdiimrywQzCeHWLA8W+R9BVQK+JwkOZ9sU/c4nU8ipq+N
	 MN7d3kpIkgzYM5phgAIT+FeGyrkJlr944h5m2d/aB7uSdZhxJG6UBfZhhXk0PttcYW
	 2AdbZ0m9c7mqds3nsAxGFwanD9F+1bLn1np6mZkw8Y0h2lgJUwbB5DmPrRWwjNaq3y
	 7shCReElmYDQkyZ4P60AEEcH/yul/OhICcH5M2RO4rBayRsSIiZwapwZjHXgo04Ggr
	 mjGlNqvKSBU9CGTNoDuo0xVuMM5Rfr0RD88+a9YVLfx7m8CysCi8Kk0Tcf9XyNaFhk
	 eZjaeEU/GAcQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915DDC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237919357.10906.11670635431813384661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4ba23302b0f83bfb113b99fb8f3883056cb95640f177aa76b424c86cc6b2c2
Date: Sun, 13 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752379193
