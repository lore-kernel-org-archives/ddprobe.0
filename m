Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50852179A7
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 01:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741655934; cv=none; b=sk9jFvf1Uq3bX3EwJcuC78vFpR46i991vo1wRsWOCuhqeaK/zboERnogAkHQuGaBOKcSM/mUQ0C6yHW/4i0SjV4R95xQdO8WkJWW7i0xhoyAyxRVCSC2Gt0NGZsoh/vKQukU6H5kaOlW0n9sH0uZyLHGqrxKsfjJyw2J+64jxeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741655934; c=relaxed/simple;
	bh=JBZroIW4Lat63ic6vk6zW56ovuXmW9ScL4Cko0ksJbQ=;
	h=To:Subject:From:Message-Id:Date; b=ALun8q3mkwAJgb9wbScjryNlUQi9nXKkUwYqGo62ARmrY23Sm/vAelCf9n+5u+hJ0T6v//eb6ZjJOLBDk7dmAedPmaOJni11MZb1F5m2sm7Lco/E1iDwVRPwnpAfwuPoXDv7DDFrF5r/IxS1xfHE67VBD4xUC1fTMThFBR3oTVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYI/jASQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYI/jASQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B0CC4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 01:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741655933;
	bh=JBZroIW4Lat63ic6vk6zW56ovuXmW9ScL4Cko0ksJbQ=;
	h=To:Subject:From:Date:From;
	b=YYI/jASQ/1v+Zdq/ETxuX+SARzRLWIIzYsah6cXDCjEuQI0DEUmgiJku+LZyOe0me
	 Nf83td7xL3NzVRhBwPhVXVrIZkcu7BrUmz0wseWqU1Fa7d0IhpAlRPcG3wtkCApKKm
	 WnzGmP9OaEs74NO23byPvEqQTTOgr3zqLJVSs5QtWx6p2qxFWbn8uMHPSu6NGedvv7
	 WMvVaMYX0oDgGXzio+7UoDMTOx/jd6HyI6Z/2+DJKaBg0dDZ6+UI5uB+9Tj/HoMfsA
	 dzPGcGKAjpXqfdDK7qSG3IaTpHdZuJgOXMPeG68ZLm+tN8O+F8KVi0TaalgvUV/gOp
	 RQ1TK/tXneZYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F680C282DE
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 01:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174165593363.21094.2331242735927256559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6fbfaf28d95a4961d89fb177bbd81bb8b84c44d1203f95df4161907d9426a91
Date: Tue, 11 Mar 2025 01:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741655933
