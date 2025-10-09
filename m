Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F0DC2EA
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759976994; cv=none; b=c0VOOatqvVYr7UihAaJlHYVNxQheHAPJG9224TCazgMvLmZHJ652Hxs4taPNbGhcfASyXrkRc7hxqz8HxTkab3mgGEtUDaHw5KCZ9FaSqFEXh425AsAOPssrXF2oApqP4YFqA6wwQEWDuq58MpWdf+4eDGZ5Evb2Jk2CcyQM9mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759976994; c=relaxed/simple;
	bh=mniFnR78cJBGZCUJa1wATnfosW12a15lP4CUjfWL52I=;
	h=To:Subject:From:Message-Id:Date; b=pofwKsS+HjcBNCzv9zp07HHE4VgkBbkjU1aZGOT+xMuPLOXxvDs/UQ0WOCiURwjYc1v/Xd+N2QbRyG0r0DLKT7fQYPpsVk34p/VQWGhXC89yU8i+LrnLBbYUy2b7+Cz1UeSuVtjymZqAXm5u5KOAu+uMQfAgi1gsiILpEUEHLcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uG5hbX3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uG5hbX3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC19C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759976993;
	bh=mniFnR78cJBGZCUJa1wATnfosW12a15lP4CUjfWL52I=;
	h=To:Subject:From:Date:From;
	b=uG5hbX3hVDWb7Sjp1Zc4H0nhTaO4AbDS9vbJq9aqCGX/heLRn+cfKqmYKSG7qV88/
	 7HEI9aMu/BxEIGpugkUWwtmQqUH/0fWiP86wKFQyFpTInyxsRmIjVim7ri7O1ZzGTX
	 X0o/DT7IGI5Wj5BGFuNvWZKaT2bctoj3i+p0VKg0D+zjhEx5YXq5wFw3VJ3ntlycBU
	 CsXnCb5N+HZC4YWO+maPmxgWVAMvMk0b9fNVLuAq6a0BXs2Y+F0FlDrzfsZEe5OB+Z
	 rqdAIO3MvU3gEaF5U33O6blV1MTXxPFp7twWtoY14sipT0ohZvgNBgfLpTV0oaI+kA
	 KAr93ug+H16Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9550DCAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997699357.27295.14223154359285086528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e67ba5d80d079aa8e353f7a81b976c331f52a69a6147c73a93cc54997302a53
Date: Thu, 09 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759976993
