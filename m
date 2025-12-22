Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2FC3016FC
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766381634; cv=none; b=VrLxZvWL3920e7BkDl0nwRmtGSFA6ko5dxajQHz/AS8VMdJLvdDdeSWodZB15hqrufj2+D8qxUBZmwXIhheWYEUEKyAXEbMSaPOWliBR1cAmtdpQ8VvEjsJAcmJ8mc8ACgL3ruNRPAuHmuVq3wRJfeEQcYhe5KzWQVxcvRRRKpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766381634; c=relaxed/simple;
	bh=NAYkMckipdM3StfF8fgC3XPVfk7md9R86xUuiuxHjHM=;
	h=To:Subject:From:Message-Id:Date; b=IsmqrNzD6RUXKdRUGPtCXBzPyAJvTq6/LDd5RbtY215OqdP6swGshYbWfmqPTOKadvgqUzHSzBTXLW9DXe6MCsuYPx3TMXdd6CT0qsUdlA6BYynSAXzzai7Kect8Kko53/7FqIF+fGV0LbWIWiWA0DQmo2VX1vDxEHvHC/IepI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IH61ut/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IH61ut/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27A0C19423
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766381633;
	bh=NAYkMckipdM3StfF8fgC3XPVfk7md9R86xUuiuxHjHM=;
	h=To:Subject:From:Date:From;
	b=IH61ut/lvVY4C6ysMk9jUytJZ1VG+Jy75SeA68pDA+8GR9fK6r7kuN/9uE3K9+tBc
	 lWL1ffctSSRMhZC+JIRY6yU4G3ds1KuAn89MxZcwfFO5UP+/2kvkT9IIsL+XCPSyKf
	 giYPbF6hzoaKq5hnhfkbz8OnOxszmJWL5/FmCMIgwu/rAk7gGovj+z9mKIsPjev+Es
	 r5ue5QNHRR+V6xChNTTPOGfpIpDs1QkjP0t+L6/BT7AyycwTKQxWBGTiGt8wRsEaqd
	 KXLGlscei4cMygDvDtnt60H0K6qfHBLNulP7xzSFs+sW5i9aLnXv26OBbTHOFMa/J7
	 IfG0MQi9ynJVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906A6D711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176638163358.3019.8372895558568452999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbcf6b039411928f37224569bb708bb79d40b4c796b9da6f55483a59698f0314
Date: Mon, 22 Dec 2025 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766381633
