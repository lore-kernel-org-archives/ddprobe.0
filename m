Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0CD1DF75B
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765836774; cv=none; b=XNZeHxxNCYxDihAmARF14U2Sw4q8q1zWx4pzPTAXH3A4ZmG0ZKfj6zHRpTaPeYGJpGU1kdgGRtSgJh0vIbw288zGiLGkRwqdDg7/ad825XgABVhcvq5YzYOA1exMjKvz0K2s8hSxRO98we0cP4i/BTY89+W2qJhqCu+7XJovxfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765836774; c=relaxed/simple;
	bh=2xxC34OzT4ctERfbzHIfynx7F685JtvTbH5vau23UTQ=;
	h=To:Subject:From:Message-Id:Date; b=bcVjBTcQ8IbkSnhd7KYpCP1Rteh39GCFlo6Sx0WWApU+8+LnqDe/5dWqTuuXl9N6mezzKJq73QpidqsC4Ux2zm6i63mrJNEHI9MH8ERoAY5er7nkKfVkIkXN6pFtMku1zBlDlYRp76daSn1eFohKPAdzRD/neDOUHY7kn2R38QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlO6PLRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlO6PLRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68DFC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765836773;
	bh=2xxC34OzT4ctERfbzHIfynx7F685JtvTbH5vau23UTQ=;
	h=To:Subject:From:Date:From;
	b=rlO6PLRzzvrjwMZgJH49KFNLE/JrQBqLi6hgSsGuY2P3b534BXARfX3lc863BzY0j
	 HJaglp0mSI3ThLQ5axZNi4NkTOCu5l93VchGDLgOADdfkHaKaA/z4Q0RLjlarxqeM/
	 VxM1pN2DnKMyVUBUBxgsjXonE2vWpra9IqJoeePHxuG7I2xco5IUETHrPyo8Kp0/Ms
	 ZM96Dvuj9gRY7dZimdhLwt5FSZUpNDQe2zkUtITCqxyOJfpumnkbpQDD9BX7ToveVy
	 7yM5t2ayXAURkAq01qrImT6DF8/HX41fo4Jr/sCX37/A5xqlWDN7aDSD3cGUBoKtGe
	 lSDPvckzlFh5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BD0D5B86F
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583677358.28088.5025713290192939396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec8a2a33d00d0f3b7f2efd42edd136cba21e5c46d846f0a25b18bd897ff162c3
Date: Mon, 15 Dec 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765836773
