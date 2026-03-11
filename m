Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024403314C2
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773261294; cv=none; b=fNhwUfJRz9B02FbcPwpx2kVY243rpiEq9R0CB6UOJUe7F2ok6+DTL+UktwrtvqgyTlFgvTY7W8iluzxHIEgzoJcFuijvsFmqOCteFT5lHA6DKi9Gm8odtSq/Ae26ZHpWzAEgw36nttCCnTMSRBVGPlRdl9ZGDtShlLGGA0I//5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773261294; c=relaxed/simple;
	bh=ka/iopd9xK8eYkLaxcFZY15pdbQDb1lt9G+wGV6g+u8=;
	h=To:Subject:From:Message-Id:Date; b=g/Uf7jzdY+TeN7VF2Fhd2eNbSjyPISxvBlBlP8LjasFbGfcm0/SxST9DM22l5xEQ4bGiWxcbKigQCef+2GLly6fVytOVIUCcDlYtEmxj72yMOlcxI0t20/mpzoUiKPqwrI3qf0WMy+vLdgV4PpLO7Paw9J+NDAJzvIBprIU6KsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdDHKO0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdDHKO0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6420C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773261293;
	bh=ka/iopd9xK8eYkLaxcFZY15pdbQDb1lt9G+wGV6g+u8=;
	h=To:Subject:From:Date:From;
	b=QdDHKO0ljByROC2tP8mU6NJk6ePhg7ARhJRCp159xeIsgl6LTWTlT8IBHIHK7oTmt
	 /htha2h1u7BbiPrcYFxuYvNA0L+byTg5DbSo2NkST2S1KxV5ARnQa1cDKTL2J/fWMP
	 uVnxZf2sWsPIEmjotbyePxNNh8SquvmirkyEWX9ZTSTbSLdPbEPgB18t/OOdUb++2J
	 Geub2UMnKSlsTrRd8xNCduSBlJ6sDZ7X/TLpmzE+XdFJPK8EgdjLy4RZScPTz39GbN
	 CQenEK0yyyWcBrHD4liKUp+o8KjOUPIYf7ofkLwncKD52OymK3R0MWg5j6YrCrFpNs
	 sUcO91zTKyj1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A95112589B
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326129359.20969.14532086184603922608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53700e85568a4cc264ced90ba9efbed2ae27271b8a13030bffe17b4aac47e407
Date: Wed, 11 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773261293
