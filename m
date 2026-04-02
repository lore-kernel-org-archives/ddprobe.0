Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2356D42050
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775094334; cv=none; b=nAddUJYHFnuXvp1yxx/quVDs8NpbTW1eP6QgnyHSOp7nhKVkavgnxHRBNrZI8hODTDNydzJxiItpuaKXo8vw4e0j8zk9u6Mn1YmBP1hOrcpNAYv8Ohd+D0QkRjaBZspjXztKlgm5tp0UamTg1c+jNoG0i1lmgL9ULJb4gjR3Ld8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775094334; c=relaxed/simple;
	bh=Jd21GrNe76Hs7/+tR53W+Av/z/x4AVTH/3Hp32sSxyU=;
	h=To:Subject:From:Message-Id:Date; b=ltIw8i+8DEq0io5m460mnyqtQw3gWnZWXY10K/v5IHZX1hBtMiYDwTVx1lp7zhK0Cns+P2lzjZB2CvWYZajeswchka2OBhLn3GpEugV1RQbvN5yfIvkbYnkb9DIPINjYZNl/iqysxv3Uk+2bQMa7/P85fIAo7ux+gs2F8PJ1oiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFTByIi9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFTByIi9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47E5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775094333;
	bh=Jd21GrNe76Hs7/+tR53W+Av/z/x4AVTH/3Hp32sSxyU=;
	h=To:Subject:From:Date:From;
	b=qFTByIi9a0vvUTLoBh9iI50BTowqksGKk3q5x/djpz6G05L3Bc8NLsTFQpxVMrNW+
	 qWXohPd32oOFEgawJYEbTxjKGjMwsaKAPOqtktx6+XAE4Tt0nM63uFDbG4oofxf76R
	 KqBbenWWoAK8dj8H5FPGxmvbR08tJChuurMeGXkPhbqCEdV9FbmUADEb+9aEudP4cu
	 6BC5xdlvlPla0vmMyeYunGf2op87Wfm2WkUTH2MJ6lKJ7y5nsp3WdcDVrFSch5F5g9
	 8zZAoTu1X0gwkAJ/EmO5a3g0EmxBSl3ZN+YopJzYwtAD7sXmBAJ2CZwGGbPCcyPh5Y
	 wllQ3HBHMfnUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1402111224E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509433370.10066.17914110422622855250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2433ab4aadac74f349c92ee302396590915e6a719674e7b4197d2d6675ff9542
Date: Thu, 02 Apr 2026 01:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775094333
