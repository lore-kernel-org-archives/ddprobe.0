Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F8C3B1AB
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763881914; cv=none; b=QSaGwIsNjCnnRSNHUlS1+DZPD3JgyJ6tLv8dihrO48WvA+KnZbS00tSrIJ/dB5RN4jsDXI7RexxjOm/Nod7BLyM1d5RHZTeAP//KTozqMaxMv5ACvpS1MR3aIkfvJ93p7eLZBIWokxEVuVQvqPYT7cHnaqyVL2ima30+D8S+Tt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763881914; c=relaxed/simple;
	bh=wq8RM+Ih4DsOjHwepNVI9Mhz+cONJ7/UyE5RihbKRLg=;
	h=To:Subject:From:Message-Id:Date; b=kfGC+4kDvmmvxx0qnuY5fpwSmpPAGWpFP7W3+H34EsEEJwuaQZwrByy8zuE7qMJWI/P9ZrPiqS9GErK5try0ln71NkfqIG6MiKfgnTD9nNp9AVIminlHPygOqNeRSxy5IEAyda8BBm2I4SoyqLZ/Pofi1WmQ2fxLDVUO5D3hWsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvpzV0ho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvpzV0ho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EE6C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763881913;
	bh=wq8RM+Ih4DsOjHwepNVI9Mhz+cONJ7/UyE5RihbKRLg=;
	h=To:Subject:From:Date:From;
	b=XvpzV0hoW7UErUFWTcn+1th6pg5Nqs6oN60npedYYAUYrSNv6oKibYdexS3iI7Lw/
	 CMM4xQ4nzh3XrWHCru1AQGYx6Mmk8N0l5qFX8YgyngQCrkiEiu7IAzj7LsANd3mRwW
	 6tv5OdirnO/JHHmk3f33Lb60lNqt0yQ3/BFcyoW6fVJFIix2QfpgQ+9rEdEUcgcKB6
	 CW0qka5rcyxoCsXXNE6SNP+8JfJLVVYKY2k68Af7rpHGXeF76wx7PXLFK1DkG1D3eY
	 pKNinhwSACBKPTPxI2AcmYiLUqt/ThnmSjyRCvX0MLmnD7uau+bv0HWTm+ZXczJC7s
	 ouz/JuH7+QWGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90577CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388191358.19597.9605638593732216122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6851f2fe0c8fe76c462f62f930a3ed511034e4c9ca0de06b5536a3fd82ce243c
Date: Sun, 23 Nov 2025 07:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763881913
