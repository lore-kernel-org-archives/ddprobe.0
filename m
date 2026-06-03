Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60226320A14
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780473274; cv=none; b=a66OBc3dBvnSD0xLxLW7MYveU59qgHRKYqgQCaQ/2SiHkdQOsSSlm3N1wxd66ktvWjOxju82vtVk2JO5HKA15A+YF4Gbl+MfF6bEAajxldyGK0QsxokTo08hUXQb8QmdxahWyThh23wtu8R5qy16H0ZfbsSDFIwV4q9H2r/xhLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780473274; c=relaxed/simple;
	bh=uW0m5w1AWpD+GECFRKbksW1ksLjWpH9ZGAaOZnIsp8w=;
	h=To:Subject:From:Message-Id:Date; b=qCs7lJ661qfjl0sKrkxiZzHEkJQGMEXEU8z02dLyByUcUdZ/3klTZZV8dz35ZdtuPQxITLZRN3HGCxBghdnKzfIbOBuzScoWb6CQzOyLaLmtdpdhL0leQJCl/lsgkhdJI8AU73GHCWY8gaa5XJc3tg38vJxHD5C/RU5u43uV+Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kE4bdy65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kE4bdy65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF97BC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780473273;
	bh=uW0m5w1AWpD+GECFRKbksW1ksLjWpH9ZGAaOZnIsp8w=;
	h=To:Subject:From:Date:From;
	b=kE4bdy65Cz2w345mtl7/HLRkx5FnK1XCqletILh91H4PQvFw1TBpgKDblaG/ycE/l
	 byG+q3I7scsxeAVVhEky/IkXeYUXXekI9OWlDst6EfdRRBJAzbEI/in1IjZhslZbgp
	 6fEeegkOD2KfEY/dZgf9F4KMlWyjMmvt9lBjMIMf73BysOHdw4f4hYwUPaD7rYeCKU
	 d+cZ+L8jKsxPj78fXMYfCyXhOwj0AcO0YQD9RfX49fRMfpV5KNDKZpzDbhCQSD9tzf
	 T3pF6fLUa8blGUZEuB97vh1MjZ6njk+HsSV61APUBxdbavhRjenPJJsex0Ki3WoYq7
	 X8xBquSH9mgpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A915CCD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047327368.1807.12591749350945992956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a926e18a4f27775f71314973c6ad662ecf882286318fd2ea26be6978a1dc846a
Date: Wed, 03 Jun 2026 07:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780473273
