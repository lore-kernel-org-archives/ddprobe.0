Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACD3262A6
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751592595; cv=none; b=DeWbpXJaVhpxPPo4npZUauIa5LEE6nzRNMGQkNPdYjB80IBKb5Hd7JG/5562FcsnL66rzn5PfJAGilV6owLov7CGAs1We4SzDRr2tArG3a9llO3O1QKkuu0WZguELQPlbweTzDNJobBb3CE7EjQoSEXrU7TnqAOThJpTN7T88M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751592595; c=relaxed/simple;
	bh=+hLGyeeLV0PyUJlSfD2utBGG8M641My5+4s4vldLSEI=;
	h=To:Subject:From:Message-Id:Date; b=t0TGXQaRpAliAiDkQJ6Vlu/Q8xr3vKSUbivC5VVvGqOCJngvkgyuixbSCJbar4c3vNHCW5sA/U6tE+4EwPr4a/l0XLkl4Ur4oibjMKr6Ni2gWqG/ZZ3ICCTgm+0O8tlM2mxXXdH921uL6OesOgkIwZ58idC5RZX/A6oZ6sF5FNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOz0Bjuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOz0Bjuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1015C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751592593;
	bh=+hLGyeeLV0PyUJlSfD2utBGG8M641My5+4s4vldLSEI=;
	h=To:Subject:From:Date:From;
	b=QOz0BjukDT+gEGkLJrco+evGR0j+ya8hh8/anRRbsit0KMsWH8tHYGkPkhJOqvy62
	 Es+Gdo9n8jkHq+JdqR+TWtKVf+xIxQMl12F9y1onf/7MQAUdKK3K9kpK6dl3K2QkEf
	 NMc+TpSu5+vetyzcrK4jSclllww1cjeqm3CvOh65AoJq2lEQud2ycPbuGkMLL2gizl
	 X8t3/pM2DFztmm2QaUev5N36t9KNYGfd5nz2uR73YzDyKlFsTFPXXHN2sj7BzP4txV
	 8uC/z8+zMaqsdlkm4Tf5JvIiBKf+xZpbbXAQYF55ecRsvg2fyuKcuvrZ/agTFjMKJh
	 hZlzwSca1hVfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E60BC83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159259357.32079.11965882800805727606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7824a01f44d2b6f50d4de5c34be79a8f4a81a62eda062cd524f2c254a39a62
Date: Fri, 04 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751592593
