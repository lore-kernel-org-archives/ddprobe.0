Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E87210FB
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750608594; cv=none; b=jwT+6Ctyukc6044SI8oWBiF6dqX1a0PN189oyApLy+ME9ZcRfBJSjSLpbeawNpneY18yaL+KykhbfWfxSAAJLt2QVviT5JJTKceHx8eYhq3X8zKmDuF4m2ANC6bpmBWkrDbGZiQluSJei9QsoEd/VdyDqW0y+QBefb+rS8tvp/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750608594; c=relaxed/simple;
	bh=hf8i5nvYUXBXbd1Imoz73Kvvil0Odt1so5y+qY9/Ow0=;
	h=To:Subject:From:Message-Id:Date; b=L0/6BzkpnFO3NedA0LJ5jiP74RFGNn29kRVye+A8LRPkvcvPqWOy2k5TvHF07QxlD0LJbqLrIURsMD5c3Xwhre/WN7lZSGbw8Tk8vaoPN2d4BeSyR214byIba7xlKLa8B2uzVDD4xlcYKkFTEGmOdzTwSkO30e1ZthAP4hOtl58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaVMb53S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaVMb53S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4534C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750608593;
	bh=hf8i5nvYUXBXbd1Imoz73Kvvil0Odt1so5y+qY9/Ow0=;
	h=To:Subject:From:Date:From;
	b=QaVMb53SAY/dabewUAinc+tsPKb3IhvEQeh7SPHn2vF3kdmtskYH3QC6N85Nc9Qju
	 nGisgSCy0g6bjM/a8B+KNApejtpykOwBewiG7APMzabMclCOt5S3LuV0Aofy9FllSy
	 eFV4xJfGMKs8r4Ymxw/QdAYM16vC2TDGRmXOuk6ZCTwa+fsfQXqFdoQn7J50DkswKS
	 J4BzV+i/SDQus6nsiANiD4ZDXolfQD+NayXpDK/H1uonbyTLNvzMZc/eHGLZ5JmA/1
	 50wmVebiHKzYBFmBshcXvSIksK8pWO7cfm/e6QimCYgh8jg46eNEG90SWS9Kw+iLB/
	 hkUt7SYCL+4dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E02C7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060859357.8553.289162901031312470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd3def82f787b8cf656d26d3908764172d8d209c07e5a38f8ad748809994f2e
Date: Sun, 22 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750608593
