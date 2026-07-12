Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4DA14E2F2
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783898314; cv=none; b=sTrscThw/nJZiR4xjIuZsx4DkGsfPEzosO1+E1KSQIKnrykkg78h/C5pyMh81wmWQai0x52/EyYeaoG+dz5cO/gh0sAXZj/uc7Md2La4TTJRojNFD+xNq4rASkyyfCYO/J595hYmmWer75u6S6F04R94ofGBnFAxgxPuyOHMSps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783898314; c=relaxed/simple;
	bh=nZu97srUEicdDftsAXpmlHn+HyusmVr86yp2f27OvHk=;
	h=To:Subject:From:Message-Id:Date; b=eR1ez1KhLzgFyeea7s8s6qS1UdCGCaR2ADr91hjEpqYMgvISqWcPojrzqOKDOBs4vrJ/iJUFawC3/W1nx8j9oWDqGVff8/NffYxKkNhip0o4hppv8R1HK1EDCIC6hvKn0rdsvPUmEL6rXxpti3gIkbrlaEYKLpxMFAGi6eh8GFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBV0zyaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBV0zyaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACD8C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783898313;
	bh=nZu97srUEicdDftsAXpmlHn+HyusmVr86yp2f27OvHk=;
	h=To:Subject:From:Date:From;
	b=WBV0zyazzETSIeONOmpa/TTu8YQl0OoUdlcgXeeDO0jTkHT6wq7mOQUGt5C8oE3tp
	 GKCEwhWtB45AmAzcfd5eaAMIT2v08xlbS7R2Zz9lHD0skTTkshsmE9H3V00TVEgF7x
	 /IpTqPHV9/KFzSTI2v23IfuACvQMxHIsgf78IIWbc342+UXrpf3Vf5KKSlxxsSI6TC
	 DFFsWqX8fZyPuNsE+Hs52TT03L2BStXbGwgbITzzGYMLpGlPPWoUfQbeD9G/TkPfG3
	 6pjxzF2MAjJVYmJkXoOh79V2Aom8pD1fsZP2lan9D61w5vvJ89720uMmaX2W740LVb
	 ZOYTu1LjwedUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1F0C44506
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178389831369.9322.16767328647157290062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7007c12ab24f5a0cf7bbe63e7ee698a63548caed12829f6d38defd8fede4cd
Date: Sun, 12 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783898313
