Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6AB224AFB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746742194; cv=none; b=iIK1Ac3GZbiLzvZT/Ut7QNzwuCPZj97T1L40gl4wlgsibGtv0w91k0XNcKeuBp9EUsDNI1XuyfKDPhksVpNp6UAIb2kU4dy18hpGwF44nJalIq1jomxyecg4dr5WklAw79TqaTexQKwAeMuZd3DWxEkxMcsAW3I7s2MDa62yuoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746742194; c=relaxed/simple;
	bh=3hh4AgUYzKZ3on4Ym1SVvWxpaMxiMZw9epPw9WVAbMM=;
	h=To:Subject:From:Message-Id:Date; b=Lvw7SCg7yFOTzlKMqmSaLfgqaSCMXanuAwCspUuu0j2p1Bgq65/jRFppQHrWSM6k87cCaH9x7NhP6AqIAyEIPsNUdGkiE+MjButFrt1nsXZM/xHu7Ffl9uaYIySF6CgreGFHRE69lrx59nvaSfNF8BXnEBwVNEwiYKWA4ZFxtLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqrlL2gN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqrlL2gN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A789DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746742193;
	bh=3hh4AgUYzKZ3on4Ym1SVvWxpaMxiMZw9epPw9WVAbMM=;
	h=To:Subject:From:Date:From;
	b=oqrlL2gNLUnrvQn00NmT5BKbyZyeuzZCDXpaVwyP2jm/9pcSze5mrPqRR0I0rtgCz
	 Rwy1n/U5dGnF6o/4mpXt3lbPt/UxfdaeaOyROTrdupFjIH7JR+oNT9Xz7EaU0Yi/bz
	 o5KpR/JqlYgWi+Q1udnIbUlMVeyEZR3uZ8wxbb6ettfS4TfXfrevbwXEVVCUeKPJEs
	 DZBwnAGHnLD0jvk2ZO4U4yItyIml9etwrHF3t2ORg/UhVdRW+cJwKEESeHv9zIyqyW
	 NDVLZWEnpfJgOrMVbRyVBST3grux1TeodjD2i4SlyNTs/MGlWFFG1bKtO22Q1Pw4d5
	 ScP6y8XWfmm+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9357BC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674219359.10679.6687034407410000311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afe016fde1889edc57990c5155d433f09def78dfc49879f5e568e4b09f8a1f3
Date: Thu, 08 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746742193
