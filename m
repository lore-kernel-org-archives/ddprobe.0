Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4752E3451AB
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775276734; cv=none; b=Clp3J1vc8rh2EMnv9EViozdAgpb+Pv9fu1vcsHX/VgVyu4wkXASME0azmym2jHVTfjPCWBq2KhSgnag7VzCOk6IAi5WSlTtkOsSAz5HaT8YE995/EVX8FX7nPvlUFbnqQMjoXiur0stEhvZJJFNjX3E/rnkxBMIOW8xXV+Z4f7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775276734; c=relaxed/simple;
	bh=Iyrrpj4tJRdUaRNpA27i6YjaZWyvWbz9M3LxanH9eyQ=;
	h=To:Subject:From:Message-Id:Date; b=CfBRQlJNinRceTJZIZj031WzqfGSRU/9kFqpR+w0iisjTjUV4AQkbBfauJdll/tUxXrbJzhSol2ycUWE9Ow59IIcmrCHLNvHo91n4aHoUoPucCkcTOIaHCyMiCGx4S65CAKrfJrab9IUxvAvYv5cRXgmX+NOzo93SAt3GfHQDN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gv/Z3U+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gv/Z3U+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DD2C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775276733;
	bh=Iyrrpj4tJRdUaRNpA27i6YjaZWyvWbz9M3LxanH9eyQ=;
	h=To:Subject:From:Date:From;
	b=Gv/Z3U+oZ0yn/KgBD73UDs7bT1VCUxYWLk0l9Nno+qLBea8fNAIZeyWtf/yoaIOSk
	 REs+imLg4TGyHRcQlGpQpXIvWZzuikGGdZzKld2xdfPbNdoigbnIHXVmFSfIKQNgt8
	 aEeh8PW9yB2f73QUxm0FFb0A+fKNXrpj9hlnbuAGXg2ItTegsOQV/GCQHTuD1Cs2JC
	 oa1xVCsqdTCBuqPmME2NOcBeINIbFgV73NnSpgWQYPENZTE7Eet2riB6iXWrCGTZKj
	 8dxXxCdZmyJ/dtchowpK15pfWXq8FFSyuktFK2gckr3QoigA0NQg5mmdfB8bhYwEYw
	 JOJp0EgglVTRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0307E88D7E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527673369.14159.663187809934544502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61fe14d5c531c87f44f5b6949d617f60aedc2142eea1bb7f964a677b82219516
Date: Sat, 04 Apr 2026 04:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775276733
