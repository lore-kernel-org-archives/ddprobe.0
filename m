Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CEF0155309
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 17:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714757543; cv=none; b=MaYCnmnrwQWIFbcNoO0Dl/wlr1/2xr7Z1mTyzfWcTD4eKUGrJZ9+nz5VVpb5nxWTFIiEom4MfhDyceQihRvI/dry1x4+BQR+QKQ3Mbc8y+I8+0WCHEQr2/LfVOOoaXm0CbcQNHUKTrOSKaDdSxQYkDqTG14pLlM6omaMLXtfnNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714757543; c=relaxed/simple;
	bh=9PPpNTeagT4nofh1Ap5Aih04iqPQiInUbF9soFZaedc=;
	h=To:Subject:From:Message-Id:Date; b=gxFKsWZepNRjDUDOAkOZ7ryhtVeXP5MWwj0K7TkVqPfQQqxCOnvGcn44KH7BU8sd1kmNMkpKhyxewHNBjrzWYVxco6879mkhp6alLmqqpoIoDVekdHw1TZUPHowAbIXNZz3dVLslF73QIV9hFfmfHdlQ06qCiKi9gHSAAwHsj/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIbGncan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIbGncan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6708C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714757542;
	bh=9PPpNTeagT4nofh1Ap5Aih04iqPQiInUbF9soFZaedc=;
	h=To:Subject:From:Date:From;
	b=BIbGncanLQ7qHGGEUcUFxBmg5OYvufUPt2xj3DcG0U1NEKtJgwGRcRtQGEq+lVnAA
	 S9x2EnVdQxiD96zx3PHdQ4SHlIp/40uazN4GQIu6EVQbbpctKWPyu7ii8/cbriQXqL
	 E8VitDwolVO6tIPokof6IxrHNRUamqPZzuVpzk6HI9/+XjRTIoEO+4XM0ih/tk6RZx
	 j+fyGvd5pmK1e2xESykQMPvX/rFj9IZoKFGIwsuPK0Jc0nuAAPNzNudqqLbIEamYRx
	 Ol+oo2hsD/lZRTBtjJTaI8/dhO8WbBZlLNLw8bzP/DD92p2y3/oHVpAeZ8uKgoBNo9
	 HdBlM+vlKkc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C361FC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171475754277.6276.12000418956229225189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8832bdfe726e6babef62db3f85650a1ef9e126802085ab7936a6fd4ebf80a4f5
Date: Fri, 03 May 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714757542
