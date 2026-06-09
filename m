Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426233D6497
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780989274; cv=none; b=NYQepnqJDaCcwiiD3OBskDDHDZgBgKf5FhdPflr9pPteJte336fGSvkCDP84wx1wA1HHT+deR5A/P4Dk7RZ9x2ypk9UFjoEpQLRmxGsxQDpXlySJjYxl0sF1XpYE1Up1tGXb2VZ8vFpMg0TEJeSX9tBzz7b+hYiuHow9QhQ/IM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780989274; c=relaxed/simple;
	bh=ed//dzmNUCiZvnBaU4GJQzSVkfrPQtZsjkv2VjH0RuI=;
	h=To:Subject:From:Message-Id:Date; b=oFv1np6uuDDakekVuQ/QED0fWyPjIVIRQ1yZCW5g6MzNh8PrH1UtrvZ9gA3Ego84jd3G7w0ciEe4epX0R4F6RDIl5eu47nG7y+l20M6WpRmxBoTQU3RgMIrqqyIIET/TPszVJxBq93X1wLdUoC2V/EImU++RrVWz4tPpwVEXJys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHqAHrSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHqAHrSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA01BC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780989273;
	bh=ed//dzmNUCiZvnBaU4GJQzSVkfrPQtZsjkv2VjH0RuI=;
	h=To:Subject:From:Date:From;
	b=fHqAHrSCpou7Ulznp3rCWLcprUvZeKW5Ju/xiT1xaSjNtBKPhdcygR08DX3MU+lJm
	 lF6VQabnETgrkZ0kjM88hzKCMUMtr0Vx3yoPoK/PQ/sm8LhLwBvWn5KDvLD/Jz+ZJa
	 e6bMMoaZATxyTdfs6VXCwwxmhU7lbQDty+kLBW0kmj1zzREVX0hvoQ4Mvz00iJI4z8
	 GPWeuNVrlgn3aNNT3t7bUDzJco4lTACWin0v9mPOgoAZLmSllNVoJ5Y7dv0JrkUjZZ
	 y7glt66WhqJvJuWXB5V8khQhMyrV4WgIpb1utthXEbpZkpjayWAuLAL7uiK8ea9qZi
	 gtqHpjQxzK5bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA90CD8CAE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098927375.11712.4005584547867782014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4c342d6c5a4f4cf42617d68cf923e4042c226df26f2adc508e2ffa0716a5c3
Date: Tue, 09 Jun 2026 07:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780989273
