Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2307116F288
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763341314; cv=none; b=ewVwtpX1cb2hDNapCFIyMCqS4mMn5SFeN59EG+lnCFCKzZHW61E6T5/DfQW+6D0d+lSXeV51aQvVGG0nkYv/eJFUNHf3nM8SfkQKTdTBBsZRjvXlvcU6PuJp3cJfpf1z2odrbg4XsPeMlfded6WaTkamjVNdmyMrCiGgV/tnVcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763341314; c=relaxed/simple;
	bh=SMp81S1iIrhI5YrzuOSgGl9eHYoaKEI89cztwevt0k8=;
	h=To:Subject:From:Message-Id:Date; b=GiEVmVSpGXG00u307eAKj/PQl3v14r6NEq4fOBYqGg+Tj1CXcKmF9ywaWbZMf4mLHWlOSV4cM1j93INVXaGqrtBgdohTNswC/8Ux+K48LEfYRRlk5+iotiWcYY9cOsno1RqdcYrgpMqSju9VwwfrLJgRoHNuSLxvJMl/AOsk/Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kd/oJ7AA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kd/oJ7AA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A64C116D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763341313;
	bh=SMp81S1iIrhI5YrzuOSgGl9eHYoaKEI89cztwevt0k8=;
	h=To:Subject:From:Date:From;
	b=kd/oJ7AAohNEQfxLWkW+oRa6OM77G1Hg/Q/OslKoUlhQOVh1rgDnc0TmEesa6A0tO
	 gMceKGoH6AuSBKXk2vjAUCbUZqWdGSvspD9tI9EmIwPEy7tENjPIM19jS1JMyMXLqQ
	 ee4gRU5d23TpKi2KfhIlXqFlXiRe30DujdxTyneTkkFyE3myI/K7QZaYKcsY4vGkXJ
	 wnW/Eh5tDEWyF2Qc3oeivHYFh2MqixQmCgbuQAVxoHv8nxWLexzCj4iMhSsIX4sPiD
	 4leFEE/UiZkDUxuMAwr+p7WpFVRIelPvP7bviwnSF1fagEvWeOfIDpSVO7VTLwEfoK
	 PTch/a82OlRAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ADCCCD19A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176334131359.31387.14638510214077152322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb5262071d6861c6ff0f3405734fe8d8ec4551eba915b236555b15d3754ef15
Date: Mon, 17 Nov 2025 01:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763341313
