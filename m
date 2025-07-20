Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB6519CD0B
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752992994; cv=none; b=DFUe2Zxje2OXM8onwGMvNCHvrJSFkhy+Lg7ch0TqwYGRrc4R1yVh1NzaWkptyPI6gUXtKg8zT9zsT/Ar8zA+M6dY9W8sPlwhthZPwZhVQe0yPvT9mROKiFDG34hsDv7IACXHcwr4nkR59aaMz0EVh08ZcBmdbzSGz8ifVDTVTdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752992994; c=relaxed/simple;
	bh=vfgvHi7M3DJvn7goJnqI7P0+/1OAmlXamWBf+T6i0zc=;
	h=To:Subject:From:Message-Id:Date; b=dak0t64AaYZp0bUWdze7e45XoeCcc7qB90jo4P4LwNjRnNLFQAgVQ6nx7K59IatWY2ZbVNTx2KGqAk/lLKDYJH0Q6p8V6CniTTMJmzvEsTCJQGeNfHkldYspolCadTZJBnHwS3nIXTU4cFY860pRo7ufbr8TwJr+vuZ73mWu/zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uz0FlECo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uz0FlECo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74A4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752992993;
	bh=vfgvHi7M3DJvn7goJnqI7P0+/1OAmlXamWBf+T6i0zc=;
	h=To:Subject:From:Date:From;
	b=Uz0FlECo/SHqmb6/mPlO/JcN4+fA0v8A4/YUppWLoKTEsBV3bWerNZosyeIAw+ZZt
	 78+07EJqnI6QNFFTQx968tjp/hjigUX2/BcWldbZRlCAOfM1hlGI4k3I4RXFcLsWuv
	 yDrxCzO/mGxIWDk1kkR2QDHinekNDhTSwH0gkoZVq2BM+2A09RlbwW7FBEozzjrAha
	 sPnhF/QK/aFoEXGKWVfn878RbgMaO2ASg8W/bkuh2nzQbY0Pepl4naRi2iKbhrxfGH
	 9vhYDHIUcujMLNvAKwp84lb7bKntTHHbub8Z28NVUkRtwRVMPp2F07vYO+6xGXK6No
	 AhuanwgHwlSMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93738C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175299299358.28620.2045238556614494013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091ee989daf5fd19e7d6eba2962d285c06016849ecb9f28b891b5eceab4bf794
Date: Sun, 20 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752992993
