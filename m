Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308D5218AAA
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745606995; cv=none; b=nxcmZprD9mMgvdmrJZaSajtolpDa5BaF2Rs+rd+hzsD6h7M1AOUdbAJHxCMM/bzO16BOw3m7kEIxNeFt+hr1sZ/f+MNM8LTYC83vI8dYb9kvGctAuCpDErp4pkZjZFst/v5uVrNURV8iKM3a41FRV/WbFUI6gPwxqm+JNwIlGJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745606995; c=relaxed/simple;
	bh=5qtgMK+kWXG5qVyjbtfFyqdSoegjuNTGgFjnswnZDkI=;
	h=To:Subject:From:Message-Id:Date; b=Ki+os/KRoqi/SGqurUP/ymFN0K2ExsLorNKoM4XnrnRGm0Uf7sAg51l9J07cS6MXwycbJyPhGGMiNXLjwxSUgkbOGYeV2zsVnFHeWkW7iu91n+pm6APhYHjl6ORevfx62SrhhWn72iWE2n6RZXXzy5ebRTAPdqSnZr9DD0zjxkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eF/5dEJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eF/5dEJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72ACC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745606993;
	bh=5qtgMK+kWXG5qVyjbtfFyqdSoegjuNTGgFjnswnZDkI=;
	h=To:Subject:From:Date:From;
	b=eF/5dEJyP7+030MANDw2i8iyju3IxuiLTwusGdGuf1QOiQr46zizePwdSlkWXyUcm
	 5U+l5JGx4rX1EiAUreLW1z31dFmz+uXqLwuq84JmbcWrc4SJaUAU1IyW9yeysSJYGP
	 cLpYIsmW/ikmg+aFmHLN3NA8mOHBXcpVY/NR7PeZ8G2MSg4DYn6K3CL7CsfRpGe4G4
	 GFP9qZbOrNjTip/uZGeq2gA0oC0D2nOVKZaBViegNq8qmOdTkme49GRV8kfxm3TJ1T
	 BIDziy6/5kYm8Xqib+b+5QXrVxEeRaKqLGzfuRARlZT3Cs7KZ221wbBxEHaN3B7iMd
	 lHVbyaSZbLuSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BC3C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174560699357.29712.17752207792010284788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aedb6837a4249d1e146276dcfc61b619966b70f8595bead34fd7eab5f78507f8
Date: Fri, 25 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745606993
