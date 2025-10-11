Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1562376E4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760192994; cv=none; b=WY6+bYF6uFaZADf61YBT1UtLkJJJKQN+3VNrDJGiuacwDGBSkcscMSgdJ4Gn6BIIQxbTrMOOat0GQ6aPyDH8ymVKGXU45oUqaT9QwbNG8BF3RnCi98dBTRuBQOAST3rXhWJCFzZ2DpXUJT9JNx2o0YYphRUri6kjY0Kch6dTZDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760192994; c=relaxed/simple;
	bh=kjxTtE2mNWMhaRFl5XEPtMlkxDSElrZ2awXygKN0sKU=;
	h=To:Subject:From:Message-Id:Date; b=imGyxsleBSJykUpOyhMfR+HnFggY4zstMCEhArYsL4fteI3K8SMUu514NuOjgwP5AS1snUZshn/am58QTSBVcEEa0FVumiCoYc0Vv0Xm25yUUHxJSPmoLJ8g/nzXSrcxqsAWkqLwgUteXl2ddWWwJZuCMTv6SRJXxaJaYMGUazE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLizBrTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLizBrTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A3EC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760192993;
	bh=kjxTtE2mNWMhaRFl5XEPtMlkxDSElrZ2awXygKN0sKU=;
	h=To:Subject:From:Date:From;
	b=BLizBrTyvNIXEegP1U2FzNLKXmpbiq9bUen3IbzofPJVbitTIoyE452fCzN5qZQcu
	 DScAnUw/tNk5QgtFThMveRN4i7y3gofkIp49zHUUlKWvMsMcu2ilWEt5UDzPrcqRKQ
	 fdt+BVi3J53nq5Yf1BTwOYLfL0UUbZ3EfxAvjuYkjdchdSFgB1wiWepY/VCk4QJMbS
	 ZA5Ze1tLPVHSC/gbNUxcp9pl49/HX7OOkmw0fwB/uSPoObkTp21zz/WFoEIXEUZiZy
	 de3up1/33ukoeCVnMwdMb+4jzISWUhl5WmYPSy83tfUenbTvHhk9J6gpkGBDsJAaeM
	 TOlUrFgShWPlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91786CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176019299358.31227.9215868418130031034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b085422b64b61dba5185f4e42c0a75208fcf6aa140041527d321e86294d7258e
Date: Sat, 11 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760192993
