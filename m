Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CEE131E2D
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757119194; cv=none; b=fxrC67Edjsttu2tFMeej5Tp8IGfK31joAQnLVOYE7B0pUhxr4VnOLkGtDsvu9yUiL8wQwnDeR0cUDR6Ue0ouXsP9zcr3htbvaMD3e3vioOt2OcnzoKJFYYvIZMjIrSeRM/1nWe6D56QSbfxdklbSCnqtjWRLdVfcXSYq+Gu7nk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757119194; c=relaxed/simple;
	bh=KATdnBasLwqqm/uT2S8QJHneAoyNuEoXpLV5+UzoF+g=;
	h=To:Subject:From:Message-Id:Date; b=TOzm+n4cUzf+ahLCuq4v97akSSCt7zV9G2DBBQk6oFbi5XKan/gzo46mFOnhjKMmm60eJy9XYNV17uRNUfDJ3HPk9sJAFyfg1loYRNnOXDXf/6Tltlsw/yNojoEf99u7I8LIBQHlvghc06syBPqXe/9W5PuLs+Xuf3StE/wE7a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqTO0t1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqTO0t1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C90C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757119193;
	bh=KATdnBasLwqqm/uT2S8QJHneAoyNuEoXpLV5+UzoF+g=;
	h=To:Subject:From:Date:From;
	b=UqTO0t1f9DP8FTKku2u75lH7OporzbFYpHP9jOw9r+0XaCZ8Pf0eYjA/QasSN66r/
	 m6aLzfeqQZW7gDGMkpQQmSypwWbsSRxTQLMpK3LMGTe8088xEpsm7bX3S3LqhvF7qQ
	 32ehDFpqrmIpm/4aeRwdk9f+kS07JFG+V2UkbjeZmCD0Ni0Di693o+kfr/kRo5JgHT
	 q2euGcPimBYSwLhxbvCSUCwrZB069FPia07ldrQZdoLu2bif2F4KE0Te0Sv1zksW7O
	 V6cl/4UxWk8UOQfQJCKx8oWBAtgOYfZ7GSsk8pVoNGUXlkOSG7eIKLZUpbIP6DKJXw
	 H4ToD393+U0gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B34CA1013
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711919357.5775.16131444188439869750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102ac6e9adf7834d5085e5c8b483cbf87f14b4146b81498f1466e34ef178fddd
Date: Sat, 06 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757119193
