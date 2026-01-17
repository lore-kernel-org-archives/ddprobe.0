Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13915219301
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768641234; cv=none; b=V0CKaJjKzDR7Y0kklGqA+QOo9hXtQjEIne2hZa7C/M1fc3FlurroIk1r35xOLgEtUStfjQ+PSPPxeRvQoXNRvQERG9sivgrOa2yrDD+0C7oXgxs37sYPTJ8kA2IzU+mnT/lqNGvPNNHEpXcBNZkbXP+UC3ScJPUj5yfsSm0YcCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768641234; c=relaxed/simple;
	bh=bf/ixYWQFFXfs2iC/+ezUDso+OulGvE2/wwlT9DF4nY=;
	h=To:Subject:From:Message-Id:Date; b=oA3/TgDxqKVgDZq37SGz7bQt9/kQVisucqhHahENHeGsYoOF8WlN+6EjLBsTWppdI/6BGjjXJqLmNQ8xUOY2XTe9gbo1lCjgH7VkifKyjk0oFY7UOCLzxCrC7IYKttF+zOSaZm1QItkpCuvTAWcsGleCGpHTjyC5BEIEeGOzp7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvbodZnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvbodZnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91F1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768641233;
	bh=bf/ixYWQFFXfs2iC/+ezUDso+OulGvE2/wwlT9DF4nY=;
	h=To:Subject:From:Date:From;
	b=hvbodZnY53irR/XMJVQ677chrysXvDqEfmQ7qpu3NfbVpXuarAVtI3U2ro3JyeNnD
	 rDVNS09hT3xCx7QI35XRCRx31ntNGimJ2wV9XoSO0x6M1CRIZf0aCYAeX1MobHGfdq
	 WK8k1Cj/NUXDK4V8yYOFJvEK16N+tVQAtqAiEGMBeEgFO/Rsb0/1fimORODPJsqgaB
	 8H9qKo9xLBkBji28amaa9NdJ9XgwJNLOeu9+Iri4VfgksrCgMVmHk+C0gXaLk2JKfx
	 UMrxm2sZ3m1lU1ESayya5S88vc/JPCXDo1f8T/BNM2u42BfnmTfpv8X6j9FXKRgTev
	 ZJwfBnPzER2BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938ACC98317
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864123358.4484.11146508857434685275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75bf2449271cf3e1a0b8e6a43df9851410325b4fc384dcd084d2430b3322b0e
Date: Sat, 17 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768641233
