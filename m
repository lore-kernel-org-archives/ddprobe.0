Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086B51DA39
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705590498; cv=none; b=HSKyjazdpUpoCTYQeQDbUicTG9gNEBn+DIdVCBAOWWYeO678N6tgGaAWu7pgMWucNQ70/iG9VFccFBR8APuztxTrb/ZmbKZ8hz9KVFTZ3q+QYH/XqXFQx06KUe0q+Fyk4PdpKLCcoj9SScwBOcbKC4Bw+pfB8x6sGdV5H+85wm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705590498; c=relaxed/simple;
	bh=txVsIBQapDUbTXUdvS/3fn9iCWgYAyPY15CrjJCMyPU=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=RAJWIEpmQmiPLaLoUozepDjqCaoSQiLrvE3Iu1IXiOEtGW9eNVKEH8e6RVZy3kHq4aus9JXY3viDLnQpDHcQK6z7BKHRNKsDLmsmBpLrnKPVW8BMy36rDLJgVzRQHnVXRvV3ahD9Z8ha0799yALzWJHlaXjPLX5zKj/j4QfJ0o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+pS7Lzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+pS7Lzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 796C0C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705590497;
	bh=txVsIBQapDUbTXUdvS/3fn9iCWgYAyPY15CrjJCMyPU=;
	h=To:Subject:From:Date:From;
	b=N+pS7LzkhRdzlMQ2V7ruAsnlMWjWJY3ejm+qdHoyKDf+MYD0jsUPHbxpfrhWq4cYW
	 dXV1t5kiVUux4t5xsk7ZX1zCt8Tr1dUbFKS96zSud+fdhYBaV8GU5vAAEnwohuQZSq
	 SN8ud6jIPjt6eaMe7yVRREP8p5T7Ydp51JdEUI1AfAa6fk6PtwySDGEfek9/z2oW0I
	 /X9l+xs7DCDUfpliYYn0Tz9vuFADNHxBhjlla8JhKF7Izn60Pv+B3d98mPzgq5C7dM
	 J8TtNZkpxsqC6W+cfkOIPKvp7IVEzyeh1sP5CbOk2siM5T1eEhdAPsbdJNYin94y9y
	 y0Y97WkXZUTwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6F0C47DAF
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170559049637.3018.13993669787820003984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4234cedae88333ca2f802b1b85841cf084e0274521776faedcfe12286df073e
Date: Thu, 18 Jan 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705590496
