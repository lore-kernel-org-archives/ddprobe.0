Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE8C1991BB
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742131194; cv=none; b=AWly19Hp4np3aFP+PyxxNDzBchK6iqnTZzb0Vn+Nu9coyvPcuelDOW9PyWX2GxWHuNqkoeyjkQPKAlgV8ix1tzTcm7lsNySGwyUsCG/FAj6AJKGP2FwPrxYIMWkeP+jhmuc2+lgrIvjkT/zTjEaYDrmkqNaSNtgX9S4kiGCPgfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742131194; c=relaxed/simple;
	bh=/nnQgoKj4MPgIKGQay8e27bI10KWXX7qvRHvABAhcWY=;
	h=To:Subject:From:Message-Id:Date; b=PVyFSKVlb3BSf0UuddFGQTO9cirSXDz2So6IZ3d+QrJHvLakXGtTgcot9jrYIIrZ5Il9RtZhZX7nV3gSrKXD8cbYfz0xIY9BytNEKOCTmv198PFtXDSv0AqPWtjfJqvYGm1Z2Y2/6ECQIOHEcEzEZM2G3r3L3AcCdhkaY98e8AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5W48LKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5W48LKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3167C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742131193;
	bh=/nnQgoKj4MPgIKGQay8e27bI10KWXX7qvRHvABAhcWY=;
	h=To:Subject:From:Date:From;
	b=Q5W48LKzTarHHKhA30YjmyUpQYHK7ixhaC2Cv0o0XqGLTGceH7I6vw3JWg4tuZTyX
	 wl6N1PmoZVJTolG3fYUQlbzx8A2x2dqcVyUI/eg/ZEiiItVAr+ZRxD2EX3+eWTaQKx
	 T+cotIcKDpyWPr+HGE0+fxdHwrripy3LmH2arN6fRQCyB1dpCqBKY4cTu+OeYhd+g0
	 16ks8dbvUAaemsf/vsu0L+2EXadkmzQFNDMQxLoHt5DVAu+Mu0+zcYU71FRQ6BJkY4
	 XMh4YnRNo/yaN0GWyxdGFAE7T3oJ44SCWCSfHjcC3sOXy6hOz3EI6ty4pDm042OSct
	 9b+5kwvLERtgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5ABC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174213119366.13193.2976829404317416880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b843aa23a7f31abed6277eb2feebfa4a7d21bc736d3fc10fb6197e4f08e42465
Date: Sun, 16 Mar 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742131193
