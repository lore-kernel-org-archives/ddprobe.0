Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142A217A2E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761673194; cv=none; b=VdfJcvIpxmfc8QMnW986gamhD4N7jEmvh5AzBeYmralO4NzJyOcf/8durbxYoSByHKnOB2E0nff97hTcpwhBZnlSy0lSYVDaeXwwDuf2hoBO8NQo60kkvRjpoMTI7Ry8E93r3x/jA/aji5hGNkO2oM40FWuHfMPIWRdXluyAuBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761673194; c=relaxed/simple;
	bh=JoxIwFmGczk0HSG3Yej+VUVKcEuFTjHBGiMgUA6bDbY=;
	h=To:Subject:From:Message-Id:Date; b=br9qsifEfZLkwnB6GJCimnas4z68NQ279fO7D6vTmYyLeLMR8D9doZl65IW9mCHZAwsLFw+jjbFAXX0Xtfa6iZTlXGflKmFXrr3YQmz6/iBV2fRa6+i83xHm+ZJjeAV9SCSi3jmX24gE+x60qxevBFMYQIjX42oZsSj8b6/mBTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAXpu1sU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAXpu1sU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AF8C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761673193;
	bh=JoxIwFmGczk0HSG3Yej+VUVKcEuFTjHBGiMgUA6bDbY=;
	h=To:Subject:From:Date:From;
	b=LAXpu1sUkCWFlcL6yNWe4dwxMfYZoFIiErg9bSukj5ImC/Y5zFLzl8BjjYmM3A57y
	 wG/+0oqG28jqB3cfA98NYvhFIZv0l0lxJhC0MzS1shSm2zdJ96opY7nzAY5puurnZx
	 QK++KvLo6puEVtVd3cydJLZRlkE1ESSe1j+MX14gRxq7EkIkpIn0oi5fBiUdxJ7Pk9
	 /ggP0FHOu2DSteCDHeFKKTOphTgHoYFt2ddGJU0zckOGSxbF/haxnB288IboMB9ok6
	 BjmU0ffuPwjPMTyhYc8dcVbiDq/g1eOe3n9mRce2R2YI/AXfBPnMiOJvBAlLQG2S0k
	 t5IR1IbRwAiLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A65CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167319359.29777.1858273123014064406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b2475ab3466eea8e9ae7de27c64c2f7d5b17421334ad6372d0ce3326ad84b1
Date: Tue, 28 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761673193
