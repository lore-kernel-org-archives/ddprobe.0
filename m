Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD8D1427A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778994034; cv=none; b=VUj4Hv04eU+fzQmvxGIjQ3c6Heg8ipd20LDrTkih50XSqxWaKTQrG2g03fhgygzIKZy0CF7Fy2kfSQbvNiACl4oIKysNyoxpcOPWYc8+gnVvZYD9axrMDzltItkyjYj+1aS/fdKZTkrNFW7Kaxxf4hRTlNyIB6VHprc/iujQpQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778994034; c=relaxed/simple;
	bh=SDFMvXGzAV8XPFbHEOd68YjZuisrpN3Fz4HTH8E4+PU=;
	h=To:Subject:From:Message-Id:Date; b=i98H3ELcHzXT1QyjwT045i/l3443VjyTDOnLEmGPomUAbg511JB3TdUC3va9Vj1em4nuGM/4zrdTJCYhnkaaVU61XIRtS3RWw8sxyNOafiaFnLvO1WNn8FlwVPIou8sMHJLlJ+TcgGcYWGurJiu6E2a8fZ9x1T93MBrOzgain88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CN+NxlbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CN+NxlbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE820C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778994033;
	bh=SDFMvXGzAV8XPFbHEOd68YjZuisrpN3Fz4HTH8E4+PU=;
	h=To:Subject:From:Date:From;
	b=CN+NxlbD01QzX15ffWDK78dO/NF9HWBefYBkWb7sQ71xtAHbLbJ6CxwgFfXNua8zk
	 iTLKh75F97r+1vELtyosNIqCnjjDO+7AHMeWMTvcX/9rmE/VHduIbRIq0aVynMFZ1r
	 qBC/fLauvBc7sezn3+xPL5M+ewKhUEmJDPnMNkCdE+fr1jcTcdnsZZLDTlio+UK0+N
	 guF8rPYNrFHspeqdTvcMfSqHrXFFsGFq16Yp3RrVIJl23e7+0bugk8daruJSvCxneJ
	 P4rPMjeCjHiEtvmpKRw+z0yK1SxAEC/Wad0Ly+NUSHCYPnmOTqwYLGPy0wXoynwxHx
	 WXZN80Y4Ckssw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE57CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177899403369.9893.15655373617320996443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbeb931510cc83c54e20bbb7d98732b8a5666c43972cba559ca1e46242bf88f9
Date: Sun, 17 May 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778994033
