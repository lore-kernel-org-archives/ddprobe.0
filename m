Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E29304BA0
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761170394; cv=none; b=DqUo4swH4dZL+FSg2dr/eOkcGNw0bpp+sHI+gYgdKfx012ryBnC4b/LcPlw5UNT9p3Z3Vp2Yv0S7qEWbEQil+MSQrY35yzD53KIHt+I7QIB8m1wyNXv7YTHiQfG7RpDLfhSrouzfpe48U7Ypd7s/XevsuAdPUcIN5Rf2H2VXylI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761170394; c=relaxed/simple;
	bh=94qP1rsBXeVy3CKGqD7QA98fBABKs/5W6rUMkeC/64s=;
	h=To:Subject:From:Message-Id:Date; b=XsUYDsuRHJ6btRHF2KsrheF/tesKGhvosHPPiaMqPqDyQ6rV71INu+vwMomVm4q17aVTcsvAEV25zaVut45I/bk99/m4/9QHRjTsKjByDQCEIwbesI4N5ncofC4Q45UsMHd3dDLODGAUcj8KjWdSsTQISUlVVObqhRglzjSaaEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVmgmb08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVmgmb08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AF0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761170393;
	bh=94qP1rsBXeVy3CKGqD7QA98fBABKs/5W6rUMkeC/64s=;
	h=To:Subject:From:Date:From;
	b=IVmgmb0855EENxCd5l6PHBtwz0UatBAzbLSC3lLTAAHptPRrCvJlrTgIW/TU0EdqS
	 yt2LLb76NPdml9vnPQ5x9a5XEhPXhKdgRfHf921re1WabjucrpzeBYjpvidc0VZmoJ
	 9Tzn4lRTUdOt8EuLZEB+nHmlNTTxYnLbeTiizQFfAR/1MMI8bJE9734jXHw5wQ9BJj
	 7IxbKd5Zm+FH6IP3nt033kdoOd5mjSCJRMoC4hmH/iR3FqYHZfBGgjeRcUwUL4rnNw
	 UMm5xazEGJbILMQiwlyHx5YyUufSWzSVc1YBthpTFxxHjRcW6FHYykNa4IUKmU5jKp
	 Haj5ZDhG0OZAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C46CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117039358.21206.10382259266749012625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ffc6f36a7e4662eb3d2850a70cada27ae1210905d8b948e36a6b33a4e73915
Date: Wed, 22 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761170393
