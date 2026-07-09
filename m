Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12405379EF2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783600114; cv=none; b=GjtnT0igsnHEywGcfZma/9gY+xFjJCNfGUY7Lwgl7qa3FALnmKArKhAwdfe2QWWMnnuI7UGSCGm4OBcIHpguejzHrJNlqCt7PdDUboZI9kW5pBQaKX/F917OHLOGjWjuNtOG3AYJ4hzzW4Cgk0DvGcVKkFShR1VyGtKJMLAiqQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783600114; c=relaxed/simple;
	bh=w5KQ5xVpTpuAVpApjYq/IJ1s0Dk4BXjIOpSM1/5mpfo=;
	h=To:Subject:From:Message-Id:Date; b=R8ET9Dwowy/t7zyCIvtEL+xFvSs8Hd8TKzTBgXZvDztru+UwtAlKn1XLiBC3B1TSTtso5H7lEcaMwt/p/Fj6so1FcLXjtPqOan9P87GegkQnTxrnx2GKAUnj8gySQiBITsIUIJAg3gChtVGQgFzE/V9otyfUMN5p3wbpn+husno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9Dum0fB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9Dum0fB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6E5C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783600113;
	bh=w5KQ5xVpTpuAVpApjYq/IJ1s0Dk4BXjIOpSM1/5mpfo=;
	h=To:Subject:From:Date:From;
	b=A9Dum0fBnxaS3D3lsCrJESFjQyTXMM+vXgHSxYsxOCBmNICUM+k5hG8TfaNDje0tL
	 1NwxbL5eSBfGdAW3fhzDIum8k0YjoXA9HJGXTzFeSGcmFByy+hI7NmMbRfXM5j5oFH
	 BJ6SQ3DUgKbJa8CPE+YAkkM4MgeKsZJ+7uJsB0U7TazLSoUPB17dIw+UMqFG77mwI6
	 Xx4sFigy6CM8dLKBjF0l/JK9JOUm8KZL76MGbgeirvB8EGSGXSVQ5oitnRUEmM/+uF
	 SKcN4TMHDiA/NEsAy8vsXChgk+wBdc98P6M2GmmekpRm7rKyCK+m/4aSsosQd9+cU9
	 D3nuifW1bgi4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F7FC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360011368.32683.11328884735874931658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4cc32d097678c8ffc61c776be2ca3a2c5a7b69b734616da58cf6c2204fdf0d
Date: Thu, 09 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783600113
