Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9A72580F7
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755154194; cv=none; b=r8V2rHlkQLdSykWJAov5sfFPpsJNUsF2z2i6B5E7R7traCWYDBpokycf6ufjk3VX9HHthfpMNKl+z4dnAnzrPvYojVRIIGxGzpiw/DhXgit3nu+inCzvU89590sgw/qJBoMZj8Z2bijU22HdU8a8JMtNjQXfmt+xfsCNRYqB7yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755154194; c=relaxed/simple;
	bh=KIvYphHJfINJylraAHT+pvbZyZm26ovSqXp7DxqLS6g=;
	h=To:Subject:From:Message-Id:Date; b=sRacBl+bq3haKH8s4Vdb2A7+FzrFtkW7+IXZjlQLyjH8g3pB3amsmygJRvZJgtC9FqY4l4CcVr/I82x2aq1QG4BC5W5tp59SGdNRg67tzbNT2Duy7gEPgCthv1LxvJv6sYziV/BZdmHRcEEXnZ9mrhxzJ0JbwjpR0TU6MYCuamQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmh6qUpT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmh6qUpT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F05C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755154193;
	bh=KIvYphHJfINJylraAHT+pvbZyZm26ovSqXp7DxqLS6g=;
	h=To:Subject:From:Date:From;
	b=cmh6qUpT6SRLS0a2Y4xyohRbI/h9cU8WKKwIRFOEES0oG59WTJE6aH6Gg2rn7+Prh
	 luCg9C/Jm1nlFo7g3kzob8+zFdtHnMIMIs3xEln6e7nOc/LF28uH+XbsKkS+Los8nP
	 PwpRTBrjExW92OTg1vfzKYd72WH3FSvDNqZgMa9mWPphzLASUGvUiE8HlOBDW8uAc2
	 MEq9xk49FqUlX1hSIYY6PtJ/SQv3kgwdUoDcMxAPg6yQkuLwLjxGN2Er/tpuLNkmk4
	 yde4NXio45eiNXtgzP/V1D2xOvkzURzzTOpUD2/iJbsuuyQXyHg9x7fDEJIyLGS7m1
	 atjdm++poz32A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F193CA0EE3
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175515419357.7263.5681683119796994420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0549b348f04a6107f74075642e3dbd84d02a1a0fabfec07674597a4b279423ed
Date: Thu, 14 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755154193
