Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2519779CD
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757650795; cv=none; b=XvDeBQQ4bbx2RHC+Qk0kzXank5crVaP23D69/Ouuu+JzBSMqIiGsXhtapmsXlhaiy+MHJQdeO5U8watNLJrKuL1mgnUW/Yx8cKaIo2gl8vfd0xf/VTjHwFipzIU35OjSNSzUPuZ/eRHnBOB1p3BymK5MWaD9FXVbapnnUSmgy80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757650795; c=relaxed/simple;
	bh=zXygmnxp5XQBuQJ9Tdjo9/Ed0eaYHYoInCC5ayCFNvA=;
	h=To:Subject:From:Message-Id:Date; b=tZYBAach0FZt39XXUziNs3r7SUt74NYrnC0JFFExTlZZgE5GBwa5oYIAAqidvykudKEJIMDgxcUU5SGvgUJKkl6RuBj/zh7nk5qTalt7jKSBcGGNomASG5grka9CDVDaCxU0M985cdI7rxkVKIPCHk8x8OPNhX1lM3aok0w6DK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0bN22HZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0bN22HZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB579C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757650793;
	bh=zXygmnxp5XQBuQJ9Tdjo9/Ed0eaYHYoInCC5ayCFNvA=;
	h=To:Subject:From:Date:From;
	b=o0bN22HZ8GFhBd828fIJemKBOofRiAeUUQdPR2gr1+BuVvRe9mE287/y+g7EeDKpL
	 qPKfECyvJv5fm/TjXUCECS7xKX0YvQB19nSGVG8G0V4LWOWPXBbRZ3iY95BWdK/69o
	 kDWQeG0IYNOU2wWpmqQs/KYjZ6tKPcufCxeCgBAbegckq1v4/o0vV72PbLPsQ/t4ep
	 VHOxy2T4pdujdySiJrFRTeA3Z+jO1x3gYyUxm049sbgacmxgFSh92GzDZ2MuFA+gdr
	 /J97nUxALPlyKWYjAC+Na2/wNy3dvu4ETlX8G8uCVPJOyR/Lc7PU1w7eDXJQ/auxA7
	 QIIsjUQtvghpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971FBCAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765079358.17740.2484061758491430866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f734b38f6767310c630997900444f98cf909637dcd6f9e8de3c27fdf0f764b
Date: Fri, 12 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757650793
