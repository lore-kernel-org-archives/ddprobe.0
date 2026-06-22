Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2EB21CA0D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782089794; cv=none; b=TUAKl0E5/EgbwJpr567HEBmtoZV1URp0mm+bYGS56WGMZZI2ApvJ1oTOiwgqDpLlZ9LHHCUvLt3z9K4vIboda6x00eVqsd91Je2XDIlLJ6wfvYH6uQYXGgb6pOMudy8jpe6MDDltx7eYaAZhSZYNzGdXM6qt+DVaffKr0kHKzTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782089794; c=relaxed/simple;
	bh=3T3sWfphf39DrBrJLjPbJLUASaV1hl5GbhjAeByfeRY=;
	h=To:Subject:From:Message-Id:Date; b=UnGZmgwqoH2Xyfwdgbg8FtyN20lEWiWgmCFkUDUvtOLLVsOCHmeE1u+Nzl6c3VDb4mWvz37/cYzGhDs1JumLtevfYy2MDoViyFlgCDbhRvhu+lIC3BOOjLNWfedHrlpJzwVu+zZJc7g+l6Z1YsO6WNMbrHnRfdst2JZ+FjTRV/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8JXugTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8JXugTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8EFC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782089793;
	bh=3T3sWfphf39DrBrJLjPbJLUASaV1hl5GbhjAeByfeRY=;
	h=To:Subject:From:Date:From;
	b=t8JXugTN8rca3b6JhHgx0sE+7nTtmkJ/Ln0F5MEoAtH4fgV7XeVUT9nNEsxatzH07
	 sEFSSD32wyDgdH6jRQEccFfh1HbgYddOd6HzEltXLhXIo2+hLCnRcQ69TtlhOmoNSH
	 rDQrNrBNXS63Rp1NSnbXEXfdIksf0tmZ7bekmYd4gC9x28rwWS/fNT7e5Uc+XG9W9I
	 lp9ckorxk9nTKe4+LhUlfMAC68Jcxi3K9fkeWOekBDNAn+RRdOn+Z3lDNuHHv0GbmF
	 j2hCCDy6Mo1ie7VtGRQi6WQ5/vmB/ycIo67nZbzweOdoh9OgDBaAPDU1vuvI4rg7dW
	 AfIlinYRKTCbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF86ACD98F0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208979368.5302.16945299957995892317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904684720ead81125a28c3482b3cd6cafd99b36b16e9adc52356aae23c21b649
Date: Mon, 22 Jun 2026 00:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782089793
