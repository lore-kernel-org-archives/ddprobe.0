Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5961E492
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 06:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714027283; cv=none; b=uSsUnPn2QQ0F2aH0Bwli6beS4lPpy8yQCj8PIWJOm6G/zazmoKj144nujjzjV5M2B4u0nNOIi4Xr/lBBAyl9/GeK4vDFS+Mqk27rUq07BT7Oj0EklKtMLYstACIEWqVbyE8Ty+5vJYlqvW/3dGbAfY1rp0DZwkBf4QoSZeRm6pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714027283; c=relaxed/simple;
	bh=A7f7gTCOuy9bTfRh4MneqFcTlGeGgOwpST0ulaNgQTg=;
	h=To:Subject:From:Message-Id:Date; b=QHXXLeEdRdjPi9VD9mVKx8VG3AOA7Hl7j2OgddY7ODQAbOcdHt2aXEKbpj6X2uHcfo4BicqsmSoGapaV7OVFuS6P3lifqwsYztBNmuBSWtdIW/pCNFqRIhdxP96TBFYm/ZSrWm53qwS9KBNzc29TmntUngBxXIJVeX7242jX9H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FB3cwNZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FB3cwNZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB66EC113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 06:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714027282;
	bh=A7f7gTCOuy9bTfRh4MneqFcTlGeGgOwpST0ulaNgQTg=;
	h=To:Subject:From:Date:From;
	b=FB3cwNZcYvH83V0GaS9dIWn/XuY07XWPdaQYnLVKlhYxyThDClWb07afKAu8//xuS
	 Ati4F04Q7gs+8DRaN7rwOn+IdWu9sqgGYx3YRD4k8GDbJd1rURrf3euHsZ6rHqcqUx
	 9wrt5fsYXUpLt1QRypFWTgyIG8AQXyCOWxagFxVhnkUvMwGr6UsPpRM1APlKSjnBWu
	 WeDs9ZS+5hHS3WJ6pHoySBmqY832g1rCBxGN1fMjkuRqX/tUKaHRcWsT7qT6AxoYkJ
	 20GoacVpXuCXvI0dj4hauFmhXWqD+N7dcFvgbsH5Z65rgRB6vVdSpHZNMWKTQrmxhw
	 IFHfqO0C3KG3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4917C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 06:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171402728276.23035.10608561382709518757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5623fd617dffab73789eb708c4e8391bb993b91aaf8704d8cd2d966a7ce1f2
Date: Thu, 25 Apr 2024 06:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714027282
