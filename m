Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38636272816
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790105434; cv=none; b=hjAPNXAF35aXCidntdQMyzK126iZKql/zst92icA7Yf1i+ufwtp1sPothT2KqXTiwc/abKLEF9wALHGTatzicgRz5jdrMqBkC/6A746FCKwRfWb1MKOCII6XeWg5xPMyaVMJQ8jnxU2lPDDrIcF+UEkmqFez2PA8RcfegPL4hXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790105434; c=relaxed/simple;
	bh=7joh/LQpelX85nRwSajrihVuJUL/LMzGD6eLBUl95As=;
	h=To:Subject:From:Message-Id:Date; b=hYNe5zq93K3G5Or7FkQmKX4HLdiSPKzZoKrNkZk2gQ15ljAx1qOPO1SNQGXwBUB4gaOl2liAM/1C6iu7DLe7VhnHFuAb4GKuM7fSEdyil5B8vQo1r4WK6uilBBPHdQtjt5IST5LZcuJVlz/eQ3VseuTP05w1h4mW3aJnvro5CgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=td88a+4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="td88a+4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6241C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790105433;
	bh=7joh/LQpelX85nRwSajrihVuJUL/LMzGD6eLBUl95As=;
	h=To:Subject:From:Date:From;
	b=td88a+4kEDgzDTH+GbCqp2Hn4OsRUq4TPty6vdynfjerBH7536Su6FoGIbO0DF9cP
	 vFZ7l5B12MFyCk9rNIdigzCQyugVHPkOQHZee586JwT6BZQGYa8fTz6FjZHoIV6WjN
	 qCW+DwQpTDt4uwgEyfMT1jlPt/CAIuf8K3S14fyBweQSnfoezfajVV/42AOH1W0jVE
	 abCDH8VMr8UbQeawY+AHh546tnq6CYFjMu/Sg1Qh9h4IhlyZm5Aun43YPMpStw+xNI
	 75Gy7+tjewyBilcS0DHAaFGYRgYP759us9qfc2tG7qlGMzEgPWBqwZykbBTgkHUKlc
	 1OdxZnkCKPC0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B117AC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010543371.2368.6923825812398170827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6704d236847e8e31d221250856a4e97d29433c352f48c1861c8e501dc3204bc2
Date: Tue, 22 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790105433
