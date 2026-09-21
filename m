Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E0B4DEC1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790009434; cv=none; b=k99NSAuErKv3soVUo2vHw7NvIyK3dUsSIwa+alP3oqcXDMrbwgEap+bFLk0U8DhMN1BpGUjQE6gFtlzFSQHKCaUBjzgY4Znfz4bgIkFAtCSTbnw98YhSO25KBAEOQYGa+KGkAh+9AESKdSXqdmMSUSjlRHETRLjYNNWs05YDwe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790009434; c=relaxed/simple;
	bh=fi17swg57JFnDqL9xJhwT3xx1zP5HU/7zfaI9cSWvAc=;
	h=To:Subject:From:Message-Id:Date; b=XMvGNrtrRZDQw3eCX7gk3DG0Er7E8OohEQ1eS5rbXgr7ZQkjNm3Cxa9Nkw6l8vf7AJA3yPlr+AF88UqGkbu9hRP+MtXNnm8++HO4DfgxOqNhdhxnplvQsQUrZzxMHPMfMV23kwh0+8SGNIq2wiALenAUeT9kJNSJwir3hwWbICk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qojj33OZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qojj33OZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8ED2C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790009433;
	bh=fi17swg57JFnDqL9xJhwT3xx1zP5HU/7zfaI9cSWvAc=;
	h=To:Subject:From:Date:From;
	b=qojj33OZLPTqc8x2dbqORPGCFzic0kARoXI0UT+BxazUyOp8J2FmWgSeyoeiDdefW
	 KkpNn27WlE+882krcrscEQFRgYfUw3zqxzpBtVCQW/FlhCdZJUo3Fm290Q8eJ997bm
	 Ls1W6to2/qdIJ5mgmEX3weqDa6R7edo736Kxdos+Ixg0Ts96ZccVHoU15ifvmhcQqe
	 xTRrGXcR1ZKL5b95Ntic/fhq9UG9TuOw3GPRceV3mNMo3boG3lsHoYaY7Bx+qVySLk
	 b7GaFqS2Bc+2xlEnzn/WiO7B0Dxt4WkY8KCE0f+BTa3MVW4J2+u45zRut4/ahXi2Xo
	 3jWCgaIDLZyMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2373C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179000943371.30166.1265325136224197722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff06223eb110e53d57f9d77328ef4f3685c8a76029dceb6eff1a0299421f5719
Date: Mon, 21 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790009433
