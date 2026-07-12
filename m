Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415123AA9CA
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783859314; cv=none; b=U9w9v9q/gTiqM943Dr/BQO6bTeozw0bH1aoqGrEJRIZ43N0GGp3PVz91ahS1ZlN3+Kzaw7ObvbInuL9QAzTGcLllN61I/qelyp8xqqRbJq896vMbsnwpyl6r9y+qIZdOd09ku/vkduXVZlISEbZj+8AUwwVhcyXH+gak2Q0+t2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783859314; c=relaxed/simple;
	bh=HYmzbNSBJYXgvBJ6460+e25pMc1Z6wBJVAY9vASsZLY=;
	h=To:Subject:From:Message-Id:Date; b=SpWVW90e03vMSYbxJSz1c9y5V4KSBTI7/ZNpQOm8/orK49I0CJesWehcmnOPNIqayTLFkduX++mLxKV2IvRv78f6TpfzBhdGeqSlbk+uLpJuPglG91x//O0NiZDqRqKjdPxlqx1NTI4Gj/F7oGufk7owndoGmq6KWKaO8BhGh84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUQ9OIMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUQ9OIMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2AFC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783859313;
	bh=HYmzbNSBJYXgvBJ6460+e25pMc1Z6wBJVAY9vASsZLY=;
	h=To:Subject:From:Date:From;
	b=cUQ9OIMQd8SKn8jqT4w7ANFBLbT3r3LnXEz6DQo1DLM+C6//rvXN8hiHTjAS2bEaf
	 cMTLhXdkiviMRe7Q9UlFETyy6mQW9oE47CwjiElJ+UE+GOvWHMMKU5gCwyLPfOtlHv
	 FDBAiYUVK/H2WinneC0UNNYL960PARRQR0sV41zmYEaWdNy4/guwyLO5hXZa0dzYcR
	 u4XIHRItd8NbhOp0W+2CDJS+VMFwirFhqh29/RxoDShlkjOXUZzumIumS5Z+5BIR5W
	 cdVpnVQy58eS7UVgnZo6ISCuoM8VVKy3WsdMXaxQoAYOTfLgTFMs3qRpA/vlxBPaCJ
	 fnhVPWSWauT+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B7CC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385931368.12265.6519214178205650772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb43504e0fc506269c0babb1baf3ff9f41107f028a28f99810a0a7d1d26c866
Date: Sun, 12 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783859313
