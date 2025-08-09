Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5791DE3DF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754780994; cv=none; b=oKx5zX0lKw9BAPCPHHmGLqEbd54lYND0R8GL9p31ZFChB+feZw+CrrENP012PM0W2ViMYTgvO6M+H/GdPDZRPurCCZMTOgAgo7MHh4AQuns0X1gGCVf2ppcs0B7R6Az0eHUz9Na0ibLVXo08Q7ZNMS6mDO6Cb+NO96CLM5QYX8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754780994; c=relaxed/simple;
	bh=0QAKbdwW3xf7ud3tZnp/o2CbpOZIl8stvd3J2am47vQ=;
	h=To:Subject:From:Message-Id:Date; b=Sy6r693EBkX8fKWwYiSPRFfol+pI8ENqoWI2QrhC10OK2pN7+7G1eJMsBUIUSOVPXg7S6WGXaGrAftWQM0Lc1QOmXyWaY6u3f5RPOEp0G4uwSo0K1AoaJQaVZBq8xeZeNirOEq1a9CAs6DnjY0trTKsFkptbj8olasvAWEeVHhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDuOBeUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDuOBeUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A148FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754780993;
	bh=0QAKbdwW3xf7ud3tZnp/o2CbpOZIl8stvd3J2am47vQ=;
	h=To:Subject:From:Date:From;
	b=XDuOBeUBM++YCFHNGHkpGht30PnjJtroMQ6BmQlqgQMiQ6fsA2OIR9aaezhcblDun
	 qOJc1AlwgGErAML/5nG8AppDmsNJcRagCHRNdGGYTxpUI1PdZRXr4Kfxim24Q/rokB
	 WeRyaqJ1uYcMYoZPY88mEolFBEajOEwap5k80e8tPSxDzOzkgGS00LymOKn0bMGQAB
	 UMyWf7lkgDyvBpET4zfb2HopWDXtccv6OoPIjuhtEgo8eMaoU1Dx947jtGMqhISvZt
	 yt9SUD//lTOmsN4kZ8b0KxFUKqVf/vuGbJtOQTa3JQSDpor1G6mckZmvA4SyosUH9u
	 EYWvuoKUDW7aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931A6C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478099357.19493.14881423816214828085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2461bf67ccf2749d71756c9b64e519134e42d48c2411bcb885a6055e75803d11
Date: Sat, 09 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754780993
