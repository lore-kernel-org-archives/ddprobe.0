Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AC43E3D90
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776270454; cv=none; b=oGOE3aS6Jilp8dlZtkcxLOBJkwQ9Uwp8SpfvMKgrkIFatOB7fhrF6s4E7S2bL1yyrE8FMd/58vFSoTN3LKsmlNZte1XhMjyW5YH2osOB+nhlwxxUjDFXcspiriOvM88zNG8sBJZEXNFBrJLXIT/uQ3jTkJPWlxFPoWxEQ1yZn50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776270454; c=relaxed/simple;
	bh=wF32mVvsKYbBoY6ku5ZCZD5cvf2TJXMpS/B/+RfVvF8=;
	h=To:Subject:From:Message-Id:Date; b=D50/WWYcH5eeHOaUqvs3BPe2xG9dkL0V2vTbuNMMeRN+jusX2jxcjJm3DuOXJXQSYGpVUEav9TPjGFuuntZMtaTZbBqx/rG9vDxAnm5Bog99DtqdIo+xC0EZbf5gXYujoOGWWhyZ9otLxjZgLAj5/mv9ZyDPTdix7Now0sfHIqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4+c4wOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4+c4wOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6B2C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776270453;
	bh=wF32mVvsKYbBoY6ku5ZCZD5cvf2TJXMpS/B/+RfVvF8=;
	h=To:Subject:From:Date:From;
	b=V4+c4wOv7bxjmqXy9BysgnY5qGcwQ0fOhX64gytZamfpT2mKM5mZ7hsNvpi/zWT01
	 iJ4i3X3DjpNd+bRwZgrhbjmm4b8RwYqj12s0lBR43wwtvq5HziUtL78fP+XpL2JC1U
	 HAUWfyDY7Pn/EW10djGD1p48yGoOboEls4OpY0Uo0e81mxnNOIzcOMbUd1GbaVo/wf
	 RP8Gs/jrtTS1sRs69QykA/pqtT1ZTn1RuRTnBKU71a8y1gFguaMbna9r+rRvFwapdz
	 qKPagDpJtWVNakDIKq1I8/blcOuXNy1hkEIUA1twRyQhQsNpePb0vvwDGEryM6iOFa
	 HPe1p+K0HyiMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA44AF43858
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177627045368.9685.16506966454228840232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319fa1666bf5c6da1a124b41c2a0d6ccffd543135155187fee59073ca2f242bf
Date: Wed, 15 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776270453
