Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F5F3C1F
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788157234; cv=none; b=Ez9qrw6NSci8neLBhA2w7ZF/3+60rrmZd8qO7EASbyOTI0rxb1/fVAJ6jwe/6EGnZBWitdHi/ORE1K/dOZHIW6q5dmJOgf163afQH/I3IF5tmlVk2Z5aJFLfeEpXbjvPGQ2s+hTKCY+j9aT+c0tVVO0EtizlEXO/iwVjhHZoAW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788157234; c=relaxed/simple;
	bh=WqQhDYkAg4nnI8ojG1+Fpe4qih2AwYxKi76/UilArZQ=;
	h=To:Subject:From:Message-Id:Date; b=fRpLJWr31RkH3yXvxZhiOp1hvNVhKODMMj0ZWSLJlbfZC1jjXgvE/M446tECDli1nAVlJrFVxApV/r0toiY+mPnaXXChyUBwJHtR9WeHQLyaGFD6lAS5GICWTnAH6qFVVQXXDltSnz/t/ijwBwchSO06KZVRMjwCd1kSu4a0lWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1xr+Lrt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1xr+Lrt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE4FC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788157233;
	bh=WqQhDYkAg4nnI8ojG1+Fpe4qih2AwYxKi76/UilArZQ=;
	h=To:Subject:From:Date:From;
	b=D1xr+Lrts1H5rGa0AfAlSPGzmHhnPR3xtE8dNHL1vGfsCUd2ucQMRu4D0mj5WNyVx
	 cgqhjxdn1Vet0dV9ND5UKdC42/Ewwl0ywc5qBrhmt8ebpTbWs09GRK8xj/9bc0zZTL
	 ec9fpK/2hzcUNFq2zXDRJnoaM74zwsHvwNPq8S8FNDXBd6l2XfUWHlhOvVCdVMvtAU
	 qTkUeJ8q+zii9JcqX6CxGWrb8Bm/b95ysJxKu1yhPoybHZV7/OtECrd/CrTegyuMlY
	 yhgEkIFYFr/nSCmSha3dCLjlFIdMBY+j7qtZi9tPBaGObq4vFKi/tK7kQcUh3IJVQL
	 OQSOYKB2WOz7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3FBC61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815723368.1091.14302692276475385811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f32a75542d63ef7094e5dd37c2b58cb29099b83d21756a278af1286a3d49e8
Date: Mon, 31 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788157233
