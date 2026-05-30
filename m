Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4551821E098
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 18:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780166014; cv=none; b=gTByzECMcyc4UVsHMKCZv+KQynYpWHNS9JcsIneYUGCFP+VUJLoRV0dCjlgThib1o9rCYo3+8hOh0081UmvMLIzsoBEX5scPraKP6LO3N/A6rauR9yyMO/7LqMIp94EFFynkpyGaLprX5t/zet+yxxmZBkbh0aJuSbraZMHmRwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780166014; c=relaxed/simple;
	bh=sJ6sjESW3zpQU5PLYoWPfnxYlNOmjnJH50+ciTyMQLU=;
	h=To:Subject:From:Message-Id:Date; b=jqQdd+iZxuX9tXdAZfZWfsPseqHTm8j964Vj1jClLdyWz++9ArEDvvMab3aeCft4S6urfu2lJTf2XuDnPNeo8G47NHSp78vZ6cKEjUh27LxJ3CZzGSug7DQzbNGkzZYKRKw8Rdp2Q7w0xZoVwuBRJ4LIWfEcP9AE8tzXbbXztxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmn4nDZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmn4nDZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E353BC2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 18:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780166013;
	bh=sJ6sjESW3zpQU5PLYoWPfnxYlNOmjnJH50+ciTyMQLU=;
	h=To:Subject:From:Date:From;
	b=rmn4nDZlMga7IpLg5gIiCBmKSHnqQOeoT/d4pJCT5LmnBZZLBodSobipp50E0TnSZ
	 RwOJ0QFcWfpz1f2FfGTgivIN4ESM3z8Re3vqhq6QALDRsOAn5iQDu6BeKMd5zLXK++
	 lh41aZRn2julc5d4q19Ob5g84Js+I16PE+JDqwjJHS5oXeVUwXDF/YjDB3TAxaejMj
	 ElQFmq5HIdVbv1iSZgDVk9qwgDUPcoVWUmzZ0dxK/Qzxr/X7G2KDT8mW0j0tmvR6zI
	 eAxFTdqb9yuQzjbKuCdwsTn2DJr2ZAyEf8SpM4DAPhv0o6qZX/FvP0EPySas1uqu8c
	 DdRPg7oKzD+lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8CCECD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 18:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178016601373.20822.3563788053556451960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5140bf76007cfc8c1c4f6a4385db4956ac7e704e2453552ed352b5cd12d34a56
Date: Sat, 30 May 2026 18:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780166013
