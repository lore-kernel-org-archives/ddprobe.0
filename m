Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E4C38E5DC
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779626554; cv=none; b=f0rTDzHS7ZvkcgTfpZS4bIoOdBpwrQk/Bzn+R2CA9VzRN5oavKETB0FSBBKED6NM5M8P1UALBf12bLyWpD8jHp1q8nnbvdpNawFTTL0F4B62SLy20/lEsU1ybqLL3CIPXDvTHQmk3GiCj8RfUiB2E+7bAIC6cTsStkKIvJvpaK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779626554; c=relaxed/simple;
	bh=gJYbzFupHXqzhOYn5i3TQjPLDa57rN7hroNCOkjGElA=;
	h=To:Subject:From:Message-Id:Date; b=M7cISfR2IsPleN8FT05Lbfa0N4Qo8PbDUIx6Su98qNO9wHe4QMW7zKg/hcE6QZbnjWBpSJz9gh64x+dzsYiTfgxEbCY4CFsgeeDDXAygCU3PzvUg37zKSsbSal+F90H1IuEJE3+wzzyrCQv9e0H43nR/vb756B1HFBeGJ3+AhZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfl+Td4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfl+Td4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8771C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779626553;
	bh=gJYbzFupHXqzhOYn5i3TQjPLDa57rN7hroNCOkjGElA=;
	h=To:Subject:From:Date:From;
	b=gfl+Td4ETGOIHEx8Xed1wi8mjRDiyLtr1xmUbiyPuNDJGuL9uygR2QC7OsHgOzqlL
	 3GUAxeK3BoBndvk7HeHu2nlhOiehuJMlY7e3KJvtNGGdA7lQoIq0v0cEefhHcWEXg6
	 DwmpsGGciYDS/2Db44hkAkMapQvDGW9K5lUY9XQPtixwHL3OTods7dJxvP27D4rQa2
	 tTm+eeRuXBvQ/3CAlunC7GE3dzO4Xj2bnCRI9/q6xrKsuTLggKgCaCh/iy1+AdSxRw
	 kwcPZpQtZz8n2LMwANVPA/6kGhYuOjKxKi4y+lzNVKm53c/ZEDiqGsH9/z4FS51dbA
	 DwGJBNa7Ak2XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB67DCD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177962655369.21847.4452229723789155711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ac653d4375d043d8acfd55d64027dc5fc8ec7ec6831345b096983c23f77372
Date: Sun, 24 May 2026 12:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779626553
