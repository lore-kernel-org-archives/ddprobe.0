Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBE3263F44
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770554034; cv=none; b=jkTrK3LhYbjqErrQRxMdlzQuYuyCBgeqtHA5Gl23By6YipjH0j08gyiYBA0Zz0s/pQh3PV5rN2ZYxG/O5aFNoaTVQ2f5JI9pajaCb8rr8QDGVPp4IYVe9QBE6druv7cPVfiujUPyY/oIwngyrITAISht/wL7hwnfxCX+3bicM/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770554034; c=relaxed/simple;
	bh=/MOPILrsCtNAVh7B+nHlFhKpkdYsmHQHCWj2PHNnOWI=;
	h=To:Subject:From:Message-Id:Date; b=AQJfHY4q1ng+pYtdFl53Xb79gPPCNXbvI4s0ZzHE6Bdx//jYG/lF0rVAkTLK7gI7M9s0srqj828TY+cBVlOVzF4ABXHHyO9jC8diNtNQ0oQLvSCKwLd30vs0zHxHiMomL/pRA3GzGjrJZB7s9pkGnGjlMWZgcJvGSMXh6fbSfO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IifbPwxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IifbPwxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CC9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770554033;
	bh=/MOPILrsCtNAVh7B+nHlFhKpkdYsmHQHCWj2PHNnOWI=;
	h=To:Subject:From:Date:From;
	b=IifbPwxsWk+ZFYw3+gT1br+8ZHfCQO14ajw8PP6tdTzBD4HK3v9MSoshJGozpswzB
	 evYWYQqqxwk/6AUauNJEes5QGYRPI99+0FcWi8vQOV3q4QhZNXR+Y0BoRU9pV70/3D
	 ZqHxLe8+MzpzZbYT4fXrQcWRjw4e1xVgc04iiky758xfnnTMc77PcAlpissKaQAs2u
	 4z7eeXLcIXY62YiVx5Y/Daq4vzt6fIauGlqZeWOte/P0nCMOvOAR4v4FDBBO0SaimJ
	 Q5lf41kyxIIAI0QLdRpi6RxZ24z49TGtnPjg3qBJpIXZrUleedCMK91VTfiD4BjDiu
	 x74rxrOYWNPnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A88BEF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177055403359.3723.14092552363535425262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74c370f753d17a64c2d8cd27eb90d8275d10bf8d915049490e1c49282d96b669
Date: Sun, 08 Feb 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770554033
