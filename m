Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CC2199FAB
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775049334; cv=none; b=tWgAmKj0e/G4rFjhzWH6Y8adV7vYHxTK0r/3vevYQTUawI6GZtpXkODUgnr5PoK8eygjaEUxA2Z+Uk0ZElik7xLPaLA7JapIr6E+TCOZ/yDm1ork9a6K8Ytg96WDSJ6xxj5MWgX8ka1QLbkaXjfq1Vf/U7maZTLILq0CNXhc5kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775049334; c=relaxed/simple;
	bh=8qkqdFd+U1hXGnbOLKfll0PK0gmg5cIAoXEEuFNtud4=;
	h=To:Subject:From:Message-Id:Date; b=lrzXWiibo1/lNT2UuYtCbwmKpqX5VDVEJd9xWZIHOmxHEhYrHs8okjDF5Gky0lJ8x8xcQW7M9I7YmlAthVPU5mR5kdlQnoS/vodc0btc69yuBefR/kBCb3jb/eMbevsSSIxMffFSXpco1UoBV1aUXX8/PXs1yGjNKWX4uybWYak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwNV/cpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwNV/cpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF7DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775049333;
	bh=8qkqdFd+U1hXGnbOLKfll0PK0gmg5cIAoXEEuFNtud4=;
	h=To:Subject:From:Date:From;
	b=EwNV/cpJjrf4C6KqeCydOSbuzr5e1L1hTag4eN51YJK5oz2mxYLAXLSzLzin+LI+p
	 6exmZPMXAk4Jp1UKiJrY5wBGDgp2E4f0bntKNMkNnwhL5TIb1Z9h3yZM8kIMzCm6zv
	 0bbLISF0HMVGMLLA74VtCUh2Dkhk/3kJ/cI9cYwmNUwtRgQJVILzblKsBZv6b2kKCw
	 l6ZsOigN6TGBfOsBp0YWhlO6RIweVSbBo07vqJ2rUYEYIkie1Qtsea9Ju4vl303K+I
	 HnOxne1HQG2dOuC+fV6NqNVoRpOPyBqeKzytjXXiyiZecmWowRjFcfGh4vIa/fEv3a
	 QUNYvwW0Zd92A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA63D3517D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504933368.14124.625455350089060892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd1540fa7d753dd62a79ca09f2dd01a84ee34597780c4626150ddc1296dde3b
Date: Wed, 01 Apr 2026 13:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775049333
