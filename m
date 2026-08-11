Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2D813B5B3
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786413634; cv=none; b=f39Z0jvXx22rJYwDEvHUl8romQZ3KjSGqiS+WmxcjsZIVIK13756teEQeEwI+Ccj48mbnDYU7GyuHsFHgzMAH0fJ5H112fsrf1oMwtO4VYuq0UX9NXlWw43yWIhbY3qT17mhih/hSt7KJMPwl7rqPmQCRz+aJ1fnU+xvDtjtVF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786413634; c=relaxed/simple;
	bh=XDVtAUhhJl149oPO608JYgKrx/MOiihMi25WoF8gKmc=;
	h=To:Subject:From:Message-Id:Date; b=mORw9IsZTD6M6iUDcBR2qUxdzru/twQ2623Z4nW242W8/QqoVQjD5rTk8gPfKyPv91qWa/Qlev/0qTl8Djr66gWO8z8MlO93yK3MH4JNoaaVx6Y1yVKgTDZRwd+PEg8i3rqRaer+orqW5w6zxBo4Xz7Iiwmd8dr69WGwzl/pz3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkc+JVxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkc+JVxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16F9C19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786413633;
	bh=XDVtAUhhJl149oPO608JYgKrx/MOiihMi25WoF8gKmc=;
	h=To:Subject:From:Date:From;
	b=fkc+JVxcRQoDZ9zXoHYWmIrKWptoLcxgwrOajrQRRvTZJ0W7hICfdLR8oV8Z5faz1
	 BNPD4IS17Ol9VFYSNUQbBjpVpZa+8g90asOP26gSHSVmqBew9pKbrv2WXK/H9wz7/4
	 NysST9yOF2gUgom8rqKrQlTS3LMGAzIw49kXWFCPik6uw4aGymSUucE/Ay9MFAzAXK
	 u+meU61nXOT2mWcRmwDmGyosetGfUC6AOzO46t1y5cdXqabbfa6jrBm/+nT9NjH1RF
	 IZYfbqTfGBPxaW5zXPPRBYFtqGRm/+4oyEV79GBXbx6fk4zsjUhv9KaMLbheLIspz2
	 +4245MT6zVBCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9E4C5AD55
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641363368.1583.15414638151232503133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38447a83377b28db4d1156e6091d56d5baabc5ae1f67694dc9a72c475b08157
Date: Tue, 11 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786413633
