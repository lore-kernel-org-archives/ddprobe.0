Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF472E639
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 08:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714206743; cv=none; b=CqL+o3/dKvnBMJO2ZD31KV/BglXQlzGk1enz5Y46MkuAp/qS+3rWWY+b4SY5ZGXMHb+8JgWLr8tVxdZESJ8GSGJdYogH8/UhDgkjHN/O46wl+SULjW4Diw5QUOcc2ABmfhp/HeNqCDixbPNm0do41Vl5mkjZ1sdl2jQ3t6noeGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714206743; c=relaxed/simple;
	bh=XesLejETk/h2Fl6anE3v8XNoomCAuA91zvf6ieev5vQ=;
	h=To:Subject:From:Message-Id:Date; b=kvB/owjErciILvWDrOGxi5qCJl+QbLYAYcMmiJCndDj5rGZDQRaDvitOw4Ltxyh5g9acfrxieijW2RUQEcE5NnOvMrUttmZ6U3k8MP07CnoVNcb7kF5QIzjPK4wERrp7VYtNAFsR1AAmSyoKEiyaD1RQxwF/OB1FHJ/5MneEZgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwd81RmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwd81RmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3EA2C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714206742;
	bh=XesLejETk/h2Fl6anE3v8XNoomCAuA91zvf6ieev5vQ=;
	h=To:Subject:From:Date:From;
	b=jwd81RmFTNLF4oZWqSf1YZm+uVdtWmb07HKI0ItbM+zwrSEW85wiIU73p/ly3nxfG
	 /4sIaItxX9NjWGwfAATWGw+gPhfQX9yQuPXJ5RemAj9Lo+PRxm9O+tCAwalbE6ynvC
	 rptGEYMGadMyxVlwtB67TDNxRHaCBHrAj1r7PZtG1calsKbYtJPOKc+Gd5MccOVU6f
	 RMeAuWRq2Wk6Zpq+u9splx+GnAzggfdO5PWfiRT+EAYMHCx2950snOyowiKJ0XxkSy
	 FIOB7d47H2XvSNrG13tmLuKOItYHgExyI0Yiw3BW6gCgTPLL/lDxknrxaTRHvMJbzP
	 KquLq8xkDHoQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFCA9C10F16
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171420674282.18418.854297864020510549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6e72def41bcb204b16e70125525d67c7f2177708fad34d5bfdd04dc5cd7076
Date: Sat, 27 Apr 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714206742
