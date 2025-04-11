Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFF0290BD9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744358394; cv=none; b=HTJEX49YxB+5+dkZhd2wlSY78HaLW1wP8coOBcpwu+h9+iZOEU4mYGUPJiXquxNTeyqHkzFIaj/VZEZRlRFvS+zAtM5pUa9H6Gy7/T2ZWeM+ulXehI7gopdDLBpalzy7XHbK5dl5mA9KSY/L0LbOxRZ9Cde5tSfmpEyb0+ug+IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744358394; c=relaxed/simple;
	bh=MnD8TjRwSn6G53rWG1HiNHWWyVBWQhLADIKBb3q+xQg=;
	h=To:Subject:From:Message-Id:Date; b=iXXB6LlAeLe2XwIyfhEB0DZ1oIakL/M344Rp01o8mXku8mHlQ4zYBE+6UCzIcmXNRD8IHqEk2G1HDEqxjsD75Xv4U8F7yuf3f6uEQRdT7vcp11LdI1ZrC8IT/rwsQ/V5vmviYVGNSc2kwUj8eaL2vamkOK5Z5RFkBLlITul09AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uP3S+Sj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uP3S+Sj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D50C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744358393;
	bh=MnD8TjRwSn6G53rWG1HiNHWWyVBWQhLADIKBb3q+xQg=;
	h=To:Subject:From:Date:From;
	b=uP3S+Sj2nBk4oXl3gCjJQSXpjoD9KmQRLnr0i4nd06PIsUhQZIWAOIVPPz6/1PHRX
	 ScQ+FUvbnjGvs61D6K2O7UGnAPOIRMAh+mG0Qo6lxGhHURtGDM99NmICjVK3JTRCii
	 hGj++r4px/WmKw4+ZIj3KdjhRT0/4epBHoOADkC7HToEbmhgltvj94zxnHyz4BY2Hv
	 x5byNAlTO/t18hU/jYhxVrUg7VhBPQ8O5H54Sh8bz3yCi0u8pm45bXHK9QmXzD4pVk
	 JuJGRrSEdR6P9G8AJjs4LfLMpnzSdFIvHoKEnqS9FR5lEjzk+wc2bHQ5qRMXh90ZRS
	 C/f9tNwp03cew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91988C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174435839358.17493.10223769660109073748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3d99973e3f8f5e1af748ff9326d201520befcff2e8e6c5864b05ddd6069ed5
Date: Fri, 11 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744358393
