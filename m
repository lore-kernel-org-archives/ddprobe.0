Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6F425A631
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755580194; cv=none; b=VPONXZ32jpf3zW99p/NsvwfeaAYWa10HxAx7KyewkATfGDyUFGNGqJAyin7cNJnjSYoFGli8kReaVFlzvZbx5nhikLt+7v64nbQhX3hWyztwIQKtt3Fft3Ns75o3hSvDEieQJNME58bGBFN7NfhBY5HMuQjmmKO5KR8CKT0IlnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755580194; c=relaxed/simple;
	bh=eEBZV8v3pNbMQpAOfjbYDCmiv/eq6bkFEgHH5xvugP4=;
	h=To:Subject:From:Message-Id:Date; b=Z2JVgICOXXqfWocIIi0drzABoo4Z3NHZ9p+F/xQZCUf4wz4Td6Ooh1HFJz1oZB/Xw0t5IUzcqHcTjMSNkzb/Le4EWajDgzaOBjJbcqCqQl4m//x7B8esDLo6lIIRuZtS8HxuwqJ5ndk0XLEk/xC9dJCHUtVmMRAlGbFPCDWszuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npZB71hr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npZB71hr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B7AC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755580193;
	bh=eEBZV8v3pNbMQpAOfjbYDCmiv/eq6bkFEgHH5xvugP4=;
	h=To:Subject:From:Date:From;
	b=npZB71hrQUa4kEuavvF4/acIGWDx+cKc8nPZeImi7TyuRZromNGTfJfETN6oz4wu5
	 cCdmDDOfuLdzFsKKCSpxcmNXKd2eHhN7qfICExSLLZXQkD25ZMOPCSxCQPwWQ5JBAH
	 a8R58K9LJV/2bKvS2yM9BztiLg50C/BvLSPpP56gYH6Xmwo9eOOAiOQZ4c69NmYm/G
	 6Io1BGHepdBCGO4Kq4lqTTbGXoAFeJzfzbHoLCASM9imyv+QRiJpvUcxaMhuYQ7HDZ
	 SaP5jQJTJN5MBKGbZ1fKyzD9pqaF55hA7Tik1bWA8Rq/GzlyqWZ0UPPrLhXPQnzuIB
	 8AxLlQa98gs6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94042CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558019359.5002.1252436730457470354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61600a4c68475799b7ebddf66eaaa22895cc24038d60e3a6db3e4f3d459943c8
Date: Tue, 19 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755580193
