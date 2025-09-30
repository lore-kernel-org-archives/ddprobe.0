Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F20C56B81
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759201194; cv=none; b=EeiIr2aoKPNslIkG6TzHmXmgMutI0GXwt2m7PwM3FnGqSckNbMj9I7/oi0kUyWxxRS/HfvKq4NCB9k8xj1AFvNfb5ErGTqf43mvHL2jTNnG7W9IlWeTbt8PeM0FB467mln6isWwRp/CJot0iwAX2iEXZ30+lK+Bsf6S6cugiZyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759201194; c=relaxed/simple;
	bh=JnrXSNj1gXyWuoWSc+QjDxMmaVC7DvzfQ2HNqN0yEFE=;
	h=To:Subject:From:Message-Id:Date; b=qUOUKFTlQvFzG9SqHbMPYY+Cqk3SiLsG5hYf5V5T4VBkspysTw7La9RSAqFOE68jx+uAUp3reesAKQf3Tmu5AfJmIfbIW5pmWlW+O8z/3F/XMoCTwQlj35E4tLYryeNxD2ypNwGZ0XeaSolKbeA7+I+RYMR7o2GD4LK8BCFAUC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbnUXaIq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbnUXaIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0535C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759201193;
	bh=JnrXSNj1gXyWuoWSc+QjDxMmaVC7DvzfQ2HNqN0yEFE=;
	h=To:Subject:From:Date:From;
	b=qbnUXaIqGaRoilX+MURwRL6uph23MPegBzcwhW1YLVPC2K4wkEJBNitn83zWINRNS
	 Mg4eL/yOWveQwRXPufs0eokYQNVBBrzh3HQPaXdgbGGtohdODVC2Y6KuVIvL8FnQw2
	 2SNf8/CSsdFDjQ4NrDdrIosTaAxHNuyZSBjhaV+Gxjjkb6+wCH0db03zbh+ARzdLUS
	 cjJtjQ2uf7wCi28tOw5DzsvBVmd5ZnXpsfRP5KSHPDhQfFY3Po+KDvUqwIo1y513Ba
	 elfnpg7c9lBau9Pdtm3b9V+3qCjELwUrSn2qRiHh0v/iTqbsJJJ4pDoiaWyaXT20Hc
	 yQ3gE0VHw2T0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A8CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175920119358.22693.12885908456722400362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc64faf09f1c0b7a72619986bef29462e9f2e2bdca7e0815b268d767d12b9fa
Date: Tue, 30 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759201193
