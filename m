Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E1F1F91E3
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787785234; cv=none; b=jjhP5l+WyOvH9a8DJ9K4Yk/wJGIuQ6vgqh2w43vEfiRjtL//3EMWpaecWHlRd9uu8VkwK1Tad7nJYjLpQmQrUlyeGPcrOhdB+M3ZowLfuonz3fQPQPsTc1EmonfcZIMqZvhk8zip9FOmQ6dkAga/EVUHOp2/IkB8ICaH7fvwkNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787785234; c=relaxed/simple;
	bh=zZUz2vreu4ROAHHyzv5z+jLfsjNMEFTWmuX8OXY4Lo4=;
	h=To:Subject:From:Message-Id:Date; b=cZvzK/EudPf+ID20A7G9XIX+e2Qxm7MZL64VqW9SWeeoo3xrZBpUi930hrnOQArODwDVgoyY5teVJQWJ4BfP6fJ3vt9eFRsyEXbp2R8npbntyZvvlqMsr5slvxz6vOHpDysCfZI0djugK/eTzPrO6thO9WuTrrsa0oQqP71RoWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMDA8rFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMDA8rFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FA5C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787785233;
	bh=zZUz2vreu4ROAHHyzv5z+jLfsjNMEFTWmuX8OXY4Lo4=;
	h=To:Subject:From:Date:From;
	b=SMDA8rFojpfTdzoBKoVpXXlkZWyXzshUXYtSDhkVblEz3MbIZKAW8wFawovEXh47Y
	 7XqkCtuory53V9oMKlo66NQeHGGpiv8u+PUb+ezoJxpB1OQl9GMEaSEQ9hGkQ48w3q
	 HSF3bT/FIKl0Y6Gu+WC+IsyvBlwe6j0ZfH61FThexGbBGG/3OliqojELnVwMskEROW
	 FMh+TlubEQ71UxSn8IZ4kXxpTfV9J6lsDcsTOetZBbIx4WujRG9pVAQRkeeabWH0dl
	 rU6uwDBtDcIXOVy5/XoMXsFlxB58xRiVhtLIp9mGSVweGRJ47E5fPdRSL3WfiXS9uP
	 vrX+tWffhSyYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4CFC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178778523368.10022.13720003045876791565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66151b9c1990b3d1951b968fc157177fbcc28db4a29effee8d95d48c81c8fc1f
Date: Wed, 26 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787785233
