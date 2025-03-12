Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3748123F384
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741791534; cv=none; b=QKu4bwG2sl8Fvo0m8eXtj/d9MaA2N06c5X4kE6+claiKmMRyYKVPuLfbBPrYZzgC1TbkRt4ulFfYPiu/q2A5TYfKTWmlIDK5wQAPWJiXfpdw8GeoRIALsOFPBav2aWKzBjClJ/ggwaD8B++q2JlQsnF1HR9V8WbF/IkkkNeZpRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741791534; c=relaxed/simple;
	bh=5N3znip5I5i7BKGDedC6X4blF2P9ZKnByisD5jQXOa8=;
	h=To:Subject:From:Message-Id:Date; b=ncrbwcGCCF/aQNZzgPHP/A3eQxdsLrUPIalsuO/QgjAkvZJWYCa6NBjyGL6DGRBKtObc1P9PhEsS6G08LdzEir/PlQr0JpkJ1oUR3xxceA2+DviyBplI4RW4xfm41cJDukSGwgTfyShBUn8GpuGPJguA91cNF0wR/7NSLtqHyw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlhyFSYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlhyFSYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A6CC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741791533;
	bh=5N3znip5I5i7BKGDedC6X4blF2P9ZKnByisD5jQXOa8=;
	h=To:Subject:From:Date:From;
	b=RlhyFSYJx/ZEjoiaTApziIoJ6ZSlmZbM5hXTTaHjAFSa8ulxdWcehIDpGnzIXZ8du
	 d7aA8lfYB3jcDnvfvgcy9pqAkK8W0Mi5YkJ9OjvElvjcR0831rQDBvhZ6pMPNYTElN
	 OYXI6jhD3NPLGOU3EOsg2njjFn2/H5t6lfkTnsNDpJPDgcIVrQDtUE5hPKPgsgPwmp
	 SqLmagK2XNGtWKS6S6FXusVSECZYrVMv406O88PjdwOs+VWz/faHQkRDdUAQMstj51
	 vWHXxYl07xOu+U8CGMfJARCo2+fHCmPIcA0cLvWeHqeQRx5/OMy/EYS9CzKQ+D7JvP
	 bel6hMQiG+s/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B4AC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 14:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174179153361.1625.16077930954602497262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076e124f7423ee913477d6105f79b3074fdc8c0467bdc36a98980fcc8902d9c9
Date: Wed, 12 Mar 2025 14:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741791533
