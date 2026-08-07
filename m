Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CCE21D3F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786125634; cv=none; b=he09qzJ4lG2B+jUormTi4S+N8aVLivBcWY0rYEBni6g2bJz22qjvbG+RqMfMiV7uaGcDmHzgB7ti17FpC1xmZkgxT9Hv0dxWgnjwq3j20vWuB817hEwg6VVYT1Iyoqfm/hDUzVgZo6m9sp3zTov2YovcLu536JsWkNslCkDcp/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786125634; c=relaxed/simple;
	bh=YEfWPctyn+v5A1AuJgJ9QQWp4Lkx7Izl3sBp4bFysjs=;
	h=To:Subject:From:Message-Id:Date; b=m5Dcf+Nz/6bbJvWTG67wurS4GZgAP3M0++oI+Jz5GcRX/ihth5Fk48vmrvicZ1IsNQY0y7hYzHcS21A9nChsB86gjvqiqDTqXC6NaAOHtEndaZX5Pn/oQFN1q0hwiDYpSqan2+MHe2RRnEWOf7xNIEgB7Pzf02lWVRpaju+jDOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3+MD0lU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3+MD0lU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5075C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786125633;
	bh=YEfWPctyn+v5A1AuJgJ9QQWp4Lkx7Izl3sBp4bFysjs=;
	h=To:Subject:From:Date:From;
	b=h3+MD0lUgNk7LRE09ZgwV+CGG1TtdfIIvW+A5eLIA+rY0wDocWv2R7uypU2MY1XmP
	 vy65dXwcrRaig/tnfblwpnF09+3LuUYYYjOCbEKO0ty58k5P3+DZ16V2h5uXwpvVk2
	 YLbLvkgw0yS42M4G5qTaJewj+GnpdU9MHtzAocGe6S/a0Z2d+hF8R7Dngw8YXGkj/u
	 CvVz9GVyelmyIgeFL9iW8L4qE3HWEkpCVjLVmoqKdDtHGVD8gB1E+c3omkizUgTe+S
	 3hKJ94LxGLNYMF2Niluogri1u+8E4IAdkHCaiaqHu0trgcUK7aAUToZXEG0FeaxUiw
	 r6DEY2Ku/vU3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEEFC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612563369.9185.2805088155361170495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18075b53cc84246f07534d669fc826d6223e9dd159a2188cb41283ac9ddfe3c0
Date: Fri, 07 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786125633
