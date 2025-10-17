Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283D02853F8
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760672994; cv=none; b=DZieYFTM1BsBanDkJhiwYLWKnnJDL8Ox1jHXP8shW+fkCjwyzVhJTa3tTdfDinxzejiKQvOyJ55sAYYJACaVvY/6HhUmP6g0FSEW1+7XSogZfQlSGZC0noX8882gsYBeoKcYKsFXwZtwOSJwmLVcHWGlxd6rPGOXdmkYeqdi6/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760672994; c=relaxed/simple;
	bh=B4WUVhrXv3uVntpKUdQ7D6EOduJ8+onUxB4XBTKJGIQ=;
	h=To:Subject:From:Message-Id:Date; b=elNLP5ygUXI1ztioyAklU+wIyxERZ7UKDuoco3BWJ30/3hy4/QLpK/fHIybHborfDBBntXmsvtfdBE+908eB+UGO8TFP9vx6LHzu5k/HK3uTeuCnTuvNYbh7J1Dofq8QyVIh1f03hE93mrWPyrSl/bRW+tcEtGiNnYwgRrZ57ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSPcsse9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSPcsse9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A770FC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760672993;
	bh=B4WUVhrXv3uVntpKUdQ7D6EOduJ8+onUxB4XBTKJGIQ=;
	h=To:Subject:From:Date:From;
	b=rSPcsse9NIO6H4qMqJ3UKRXXfOm/dk+wvZfpEjJRQG9W1wd9rQ7Upb8qDi3HvlPXS
	 Zo79RMReXh2IQ+gHW9FabCkh1pD8HJ0Esqw+pKrjIcGVIT80xbCvLoIUFZlJDKkbX1
	 PDI9l3T0Fa575zr4WcsQmcYSs0uCX2fKB79EeOH43jSPk8F/94U0C9LvgpWhCIXuhU
	 216Uw1z37rln4mr+9NMKGsj03f/rtuDU13z58S+Bzpoyu2C2zYaSBWsY6SJBHs9QIT
	 iyX6YE/G8ZdxSMh2iuxny95WNixlbK57jQVTZwbT5Xx4fzDZUHjyjC/ijYj/huPFWU
	 Di/IJWAzshVIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94414CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176067299357.10602.5745614079284878042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa161eaee7167fc2c32640b49113db74eac7462181c6b772a1cb01b295ccdee8
Date: Fri, 17 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760672993
