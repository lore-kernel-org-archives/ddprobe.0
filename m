Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BA7304BDE
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779421354; cv=none; b=NKgIDJyjrAaN1rGXRWPdz6zOt4dolWROh0qcn0DTSLeMsUWunIwbNY+SOP5ebP76nP1j0TMqqal32LWnhPfeJDexsSoKEDevs1C9oZN0KQUPt8SFYXOJnDQIDMlS/6cWzVcTbLusidhZHzO1ypLJ3RBfiuNegI+vCMxYMDF/EZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779421354; c=relaxed/simple;
	bh=6W7MI1/3mauyOX38TV1XBoqORoasbZnr/pslrygs+PE=;
	h=To:Subject:From:Message-Id:Date; b=W9LJWMqJVsn6GqSQUq/rW5MyrF9EjfRgcr3naVCYQwHXaOb5qohTrL4bKKQLP+HC5mgYnRea8cjxnnPU4nHMxH0Kp5yd9gwZ3vee9dDhMKvDkfJPm117NWHZn8jX974P8kCWkONHYqlKkB48GbpBifgg+AKTQB4ojy9U+jRY0Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWcrlSPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWcrlSPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02D2C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779421353;
	bh=6W7MI1/3mauyOX38TV1XBoqORoasbZnr/pslrygs+PE=;
	h=To:Subject:From:Date:From;
	b=gWcrlSPNkjSdAryqdlVPQDHWha3QUDea8zbvJHVli6+dDHZFnaQscNPdRcqN67P5z
	 uzJz9woGsx1wNHoLc5ezwTO4KumAzSAkc6V6kveq5gdP0yeu0KcQprfIctrEOg0e0Y
	 B4Lwgl/tKJlW0U8ihQ9WJHri7Nx0bHC0osoHQuBnTLl+7ABGJX52Uh5iDoFINGvRXx
	 dVaIA2ZalFem2mJbGjFMqLk7dyO36aulzh/3ZyLpvjc9eFk/BB/GCWdn5cKATfXlmR
	 qlTvLkiTx9uImwtKftmXQO28Aez4Ew+xiv6QRpivQ6Qk/jlidOU6jGBIYTFT2vCkOp
	 K099w7vO3Cu7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A935FCD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942135368.10770.7167269217140583661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef4d0ccc3ea6c67d85d1bab839100795a4b782127196903f5dc7298723fe487
Date: Fri, 22 May 2026 03:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779421353
