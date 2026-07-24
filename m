Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599A239EF20
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784876434; cv=none; b=pdcyHilNgHHzSrkUjRea8IAiKhjdMq4WE+aivYw+zb7weMQwqvsaOi5hKrVYWz1HfnIuH/kuDgw2YyUPN6GiY7SRYFBWKEXWgaH8IN7BEyXKgQVMXcZVsX385e/9MvqkdEqIdjLoOW5+mM2oldCdnPcgsuSceWv6YUERkV4+5sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784876434; c=relaxed/simple;
	bh=num03OQ+j3u5s6/Dh3Evpd9wsu7wmAJHUmQhhdDVLHo=;
	h=To:Subject:From:Message-Id:Date; b=oq4hR2hroJPvmhfG4VYuydmDsznSYp832L8FRhd1Xd5o7uUg724hlD92vAAIfMcsmWzc06hA0JVWpku8Ve1ypNeVPbVhzV8riaLcsIy5hUX11kuUU5KfRa5xsxVjKERoHtxMdSUCF9dtDhwcDl1+uZgHeqAFAjXqaD/PJG04hqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlFzPvQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlFzPvQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0C9C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784876433;
	bh=num03OQ+j3u5s6/Dh3Evpd9wsu7wmAJHUmQhhdDVLHo=;
	h=To:Subject:From:Date:From;
	b=XlFzPvQ7gPRhDR3DMyYrWMTe8rA5ZdQUlUuuO4gFPDaXGJDlQ9HSDg1r6iJCj87tZ
	 RwcCWPq1Ncd66qmTnPXNOfEZ6Z+tRDjuuhA1qjYGvHAvI87L+YmLOHNMBu9OTC8BAP
	 NVkuFTFDtWtWzQn4lexJgET47oAk05DzoGuFEdQCKCLS4EFJV4/KouqikcOf/IO3EQ
	 1qIV6C/n7N7kOBOypWMY0NMm+Rb8hIk/uwMyGlHBU0j15SR4yWTjXQPOUEmWS+6YXL
	 o1uOpMCUU4P430izzXvz8AvSZjr7V7VLmEZ6FXnB5zFPxtaqooUQsDQVlqLFXUWMJ0
	 +iZgNJIJw5law==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BE5C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178487643368.32584.3161468310450294958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02650f05a80d512ff85d43c8a644dd60df8fb84f6196c32ec055e7b5f6094b26
Date: Fri, 24 Jul 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784876433
