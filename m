Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0CF231C84
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728805554; cv=none; b=Nk/gqRGzTaIvt8yuupkAFq1xbcn6hRVTEVFoNFMFG19Cm2reQg6sk1eKttOBxIhERnaex7mIL/SzrXygjsVNP+4wORGdnD+o0OgzHOEvp5LxnoIzIsyWnyEsU53NOfHtwbrKvsQvdBdYCayE1e91En3kNAeCS2x+9uwC3nqvq2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728805554; c=relaxed/simple;
	bh=T9ZAluT5wHcM/CGrL4NygOFWRMtjVeMkrsNY0vOiiYw=;
	h=To:Subject:From:Message-Id:Date; b=jSbSCnOMzUxrUH0ukmdMhzum5iGjrbWx4lHa+H4+c68c0s6W0CIC1a6RFmIXAwZ9cMxlvCVSPzVA7dSVjJVeQArIVaR+Jfd8LBRfiBtgFf/wxEfA8wKj2kSyP1g3Ous1uPiKfCXRx1nkuqDdl7YY8t3/6GxUYY/GlDMSHAWCw2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkQHzJb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkQHzJb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96D2C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728805553;
	bh=T9ZAluT5wHcM/CGrL4NygOFWRMtjVeMkrsNY0vOiiYw=;
	h=To:Subject:From:Date:From;
	b=XkQHzJb6mvq4Pb+l2R/07aMeom88Hg06sLdmeh2Rs5cHmtRWhFad0tfVJQEu/bDVb
	 tPEaDCfGLi5zRffczrC3QgUkmmyC8oWwFP1vjwvkIZ7MZna5jUzOm9uSbqx6n5oDpT
	 FhudzVE/O9lUlIf2lgel8dNIgu09RRVobI0OSjEliWSwRoIZgQ6rb31+LdtK5iqsH9
	 fNJLIZos6TU3DS05dahJlzC1+C6kVXvQFUbDU3NvzOgJwfsMP+wcCCwLi0eDJkfgVI
	 pxEL51fvq4JGJ+Arz3lzclr+mnqC3val2QuQpoIVXACFgp9EzoKSCpoGvbu/NtkVdt
	 iod5eLrMaj+XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F99CF258D
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172880555358.13983.15376902461383230714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9bea25945cb59baa5d49c7216d274c6edb67c8344c1b8bfef4297ba6a4bfa21
Date: Sun, 13 Oct 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728805553
