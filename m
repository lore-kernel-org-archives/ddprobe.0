Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CD717BB11
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726863954; cv=none; b=lDJXAG/nldIu7tYTr6SKZFPSvBrNkgl/eHQR30/3ra6+gm3532vBLtjw3MyorMKnXXVEHaNP0we0G6vzBOx5QFt3DPX/dTbAk1bkvWvvnclqXAORcSXnM+fHoS5oAqGa7jwqPSCcaiQkAE0O3t3H8uWZjvxHVt7V2nMxmZtiy3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726863954; c=relaxed/simple;
	bh=GCWkzGoOl2erD4Odn/FsjJmpq8jlfy21qmYn/2OEEDQ=;
	h=To:Subject:From:Message-Id:Date; b=jjLrDKlRXAokfVd4VsHJ59BUir9klvKQHoi54yENmxeqVA2r2+0mzntGs1yCYMc/XZ18ZpJ4iG4TJW9VYqeS9mVXFvcLLdQmzAZuDFEDLNYYp/qj8I81RBFwSamTOZ9nMXCHP6Ddb8Y3jc6FKJylHjuO6S5LTIA2sYLe7SdyyCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUHi2Aao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUHi2Aao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25E5C4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726863953;
	bh=GCWkzGoOl2erD4Odn/FsjJmpq8jlfy21qmYn/2OEEDQ=;
	h=To:Subject:From:Date:From;
	b=BUHi2Aao+v7Zp9vQEeneXE1Hm37EdSfWfzvxMx0p3u6XLx9F1bMBEVeTlUGb5Snk7
	 7Nh1GAp032IA7b7CksMbLgZKb1W3luaYs0gbZVjbh5JcQFs2+HTWEs0+I5cm1DljOs
	 r4irq+m5D+5vik7iPWYhhYUX0448B2D1rJIZB7xQCBDD2R0N//EdPUQPpAoXApVfaC
	 iELvKfoNb2tLbWW9LuaYTK1mm4AA9AJ3dEIhKjago30g/WlUzVZaeXY5DP7WJR2Ioq
	 axN7N43M8Q1OzmGS/QV8ziS71GvexH0Zaj14Hd8AkJtYtfucH/LNT7maAi6ILdXF12
	 IjcEwXjAXJRqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94372CF9C62
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172686395358.19251.8256658192866031690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c44fed6ea2adfaf29dd60d23ef51b5874ecadeb0766ee7b88fd1763bdb0605
Date: Fri, 20 Sep 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726863953
