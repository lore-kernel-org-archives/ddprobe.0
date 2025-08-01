Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D80426FDB3
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754059794; cv=none; b=NrGBCoZ3ypLnN4ykxvwepouo9uuBvC+m0XbTiU6cIVfvr4XkehyUvalg2fVwx2vKKamWcme64z31sjIOMHC0BF6OsqQ68Yx3bXOG17lLuaaoZa5G/r8UMg1hZ2WXIKJ1WJMiJujzbNKMlInqcUSH19gBEbntfaD+fwpciKjMnKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754059794; c=relaxed/simple;
	bh=P9qPP9A3UIYdkXG5INl5kxq/3I6ZGSYwSBWzytcFHno=;
	h=To:Subject:From:Message-Id:Date; b=ByqK1/WE48BFHzxhH9t+2YUkqSETky6qKhOZh3mBPhkVoViEDZhlA0f4UQrCY1XKJTNpDCvzBKfYDwaFB8IMq4yBpJ6b0kS4AE02ML2hkh2gfjWNjk8t6phZXD65qx7r3f2speDkV3iVbiw1Y0pkQAmpPGQNlwTduEyZTY3948Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgZNyYAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgZNyYAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37DEC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754059793;
	bh=P9qPP9A3UIYdkXG5INl5kxq/3I6ZGSYwSBWzytcFHno=;
	h=To:Subject:From:Date:From;
	b=YgZNyYAwZCMd3t55DAJbkYTmBnkfvJ9/cuexsykUG7rD997SyGNtL8dCS5jZOYToS
	 QNQD+bS99sOhCeSMCNLd+dD0VMoRSzE7XbQ7rB4NXOKXnpj5YWlFLokERZINWs2Kva
	 2nsjoNh6482FqrRLC+npjv/jipTR6TS4sN5S8elXJUu1IjUXWddVXZHp0Ted6lEQiP
	 1oLNS/eOfjnR+0tDGFzKplvkg5XeH8jOv1IM+mR+l8h29p1a2gWZ1yqsqI4IAMWoL1
	 VkW/ezjcPzIy8jAgTBWJyom6hO7LvcSzLTQZlzmgAZs/o3B8woGHxkbzBXiNel28f8
	 5s6Kd0cop7VAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CE4C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405979358.29391.1139795797114435921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9174ec0615c17fb8d49839f4752cc13234b75931466a2e3c102afc372973dbf5
Date: Fri, 01 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754059793
