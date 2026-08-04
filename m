Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D3623D9DC0
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785801634; cv=none; b=CNv1efb1ckCB/4nvx/orpqenLBMO3qZhWqnPM6gHKRcVVPFDU6PNoUEcPovd0HPSgnQ4BoD53dwee2R7rgO1HO9FjOKMnKGgGb0PAuM6ln4OYERIHWTVnB2tkXxoQ7A26PYz46u8SVFUXDNPI0suNNQoqiTTxdnmb95uXHYmWm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785801634; c=relaxed/simple;
	bh=akhfLDHzDRyAKHEGKuOyXgPZXfq/yAvWq+WvE8ov8lU=;
	h=To:Subject:From:Message-Id:Date; b=sPsiEgE40PNvAfmpbg1J2/a6+D9m7rp5fgkcCd1Gx0u8TdndekVnChYXJFRbZXfoEqFVL8Kj19xOYslv7o1oNzpkHZLtq2uGPl7A4KQdvzCJUd5GCKIWRad4tHW1oZHvSguCiiOLTmqQi4A/V0dbezA6K33ycs3C/umlOvEPbX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKe0M64m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKe0M64m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6F7C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785801633;
	bh=akhfLDHzDRyAKHEGKuOyXgPZXfq/yAvWq+WvE8ov8lU=;
	h=To:Subject:From:Date:From;
	b=YKe0M64mehSrlCK6aFZ/wsqnOXnHfTBu4pfQCKLsszkc4ChapUaNdPyrsdAyroUYE
	 iwzPAEC3S0P8WkUfkyJVv5rDIy1WfGJUEaQ2B5O11In5Bia1ByRcqgmXXKxknXUYKo
	 SigY73EK4qqDBwzGrpq5zmSnc1e3709lKQH0JSqUMA0ILp7r1h03JFHFdwcz4RANxW
	 prjoQAHW4snojEdpFWDu5g4irtR4kxkptXU6o+zVLxxSD5ZxtJBXanYYgMqysoFeRR
	 irsh17yUU6AuylcpYmLiwTOUwqhGEawu3fw2mHL41BmlEZH6N01+vlmcSZNaSj0Z/T
	 IrM6tjcGi5DwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FF5C55182
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178580163369.18088.16298063988470435549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a026db063921411d0af486be7fcc213a989abe88cefecbe69ad14d8c2e0fc293
Date: Tue, 04 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785801633
