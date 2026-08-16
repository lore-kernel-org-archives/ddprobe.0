Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AE430EF68
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786868434; cv=none; b=lwzWemBqJ3cnNAdRT/XsLjhfvWprVLJIOHOCsWdXYtU+Z/3Phi6jMX/MR0Nn0LactelCiHfwjzbXAN2rZAXdlGoVbsSlvCD3B2uI17aHWGzTsiYCv5s2Eiasm3uMScgz+JkOkoAsxWPBGeOQAcChVlbydzlY9zoAetUGx3usr50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786868434; c=relaxed/simple;
	bh=DME3yS6FsYdMkve9hBD21e5hUZfLJcHZlgr2Ldv7SF8=;
	h=To:Subject:From:Message-Id:Date; b=lfhN29URcEsGMB1NjXnhTYfzJemZq4jAOLJ8zSVprWvFL+Cl6kgSLbbjGEtnHNCDRQugkua50F6wo3sxjnsKKQ5QTckE6B8wwrHQaor7OzDA34gm9bS6OzbbRTxKXziJBXVMdLHY7tPxq3EvXA5EUbPZA6FCUlcAd9W3qSHPibY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjQLA6LJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjQLA6LJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF16C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786868433;
	bh=DME3yS6FsYdMkve9hBD21e5hUZfLJcHZlgr2Ldv7SF8=;
	h=To:Subject:From:Date:From;
	b=gjQLA6LJorCj6lECa1JVTvz76R5+zfRhduTFgscR90UYoaXiXMrVCTG3DdUE0+EpL
	 Y2OWQ2A/Oos+VjdUOeW0wRY0TzVT9Q6lFiseRhgfTRhv/tIdSk/0hRX4J6/lRRGDvJ
	 j8xi50WQFTYHbDsCQ2Jh3qmeZwv3huiS0UJxViN3o3vME7sdX8B8ozgOEd2w312dDG
	 DMUPe5j19CHbC4aQIfNytc6bpS4iWQ8kKuXcwzp2HZpyKNHHm1HqkkwlcudJPqwIH6
	 laq/yo4pWhrYiVfPlWb5RmmpV6pEr6k4YSxnTBD5DLh4Sr9AOfTdVHLNqIXoo4wIS0
	 txaTbB5ji1/Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE4CC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686843368.3945.8270341402219374719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee948a472c0d9ceaad26d824bf85b51490b12db1239a54a51ce41809a5227e87
Date: Sun, 16 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786868433
