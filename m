Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BD9846F
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760077194; cv=none; b=irvxJvrtfCBWG5egLkNj/5xqWHyNXabUD5ekqQyREwuNAjhJd+umRBHfjGNFEb1hznV0Qy1CeJcRbF9vxoqQ6SZdYat3pRdYqvpBbZHJRZvjeD+lTnUP6L2gtO5vnz0/ichZR9Froo0DsehIURf/7EnG2L/GUSSa2jCSaAOp1jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760077194; c=relaxed/simple;
	bh=dprEhINPFNgcRzUDljaovvfzFMjbRXIJL1s/j6wdjWA=;
	h=To:Subject:From:Message-Id:Date; b=W70R4621xwnyXFGk/W9QLJbmmngvM3NqOwoLZaBncYu0dcF6pJipSNswjsx0koWwNdrXJ5vxJHhBAxRdDHsmdK1miiUbgz2n+/3/ZM6qkO30tVFe/v4EC7yLZgUw3BIXba20AKEaPW1Y1oKgRrxXHauKhJakEtuF3kQgLC9KVXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9bMsNv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9bMsNv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AC1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760077193;
	bh=dprEhINPFNgcRzUDljaovvfzFMjbRXIJL1s/j6wdjWA=;
	h=To:Subject:From:Date:From;
	b=V9bMsNv71rtYDrNFEsAi3UfsqlpdJUPVns5ByNq2EG4qYWEMaXyEPV9Km1LXZgMbN
	 +dWrlT7mtXlISCZ5VJCnQYDgEMUwXRaUPXMo6jmHAADBVRdNa0jHkRfrNZ/HFjtO3z
	 +8nFHa2qsi4XOALZHIjhWJlH5IEN5lTyT3DgvtsWhOBMFQIz4YfLL20TnEQinMYR5u
	 x3rot7lup3R9TXFk37yDvDbh2f+Xz3xV3VDkbjX107PBkrLSnFrNOssHyJNdFsBK3z
	 tzgdgkdVQM6/JWBcd3/IQLQ1x7BUA3LMZAitgOLT6FFUy2asg5HRFGjHsMvCJzCjDE
	 ngTpP2NXa1yxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967B6CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176007719358.1822.9421202187357331863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7065f498b6bf0061d68376b294f72a8fae6932f665141089d22090a5b2591b2
Date: Fri, 10 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760077193
