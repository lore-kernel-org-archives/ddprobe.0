Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E48437F313
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789199434; cv=none; b=SNNkEq4OvEUtcnCu/m1slzC9MYuQLD+Zdf4B4NALUDChtDsZLu3CZyuwjbmqODOH7aCBcijKufDFruM+RBIsgnUpq0NlR/vjaEd9mnuI8MUoMO8S/rZ/n8Go8hHRt/ESepCq0/CK5ywzVc7X4rrCp2EbEnuyxqhkEqu4qe1u6AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789199434; c=relaxed/simple;
	bh=lsL21HLSFbixxaSa2pg+QJzCXnIyqyCKIThIBgvdoaE=;
	h=To:Subject:From:Message-Id:Date; b=ITpLezhxiag79kcJFH7cq/99jIOndEJSvqlqEm4NvA4tvTDI9U59yKbeWjbGUYS3JY/tfC+dOp00Mbx8fl/F84xQNbX3SypOOoaK6y8AEYoiPYRutsRojTBZRHT+b8vey76bkQVo34xTJI8yMRqGafTX6/BTWw2hIMXIOE9rjpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ne+UJ+pk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ne+UJ+pk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FAFC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789199433;
	bh=lsL21HLSFbixxaSa2pg+QJzCXnIyqyCKIThIBgvdoaE=;
	h=To:Subject:From:Date:From;
	b=Ne+UJ+pkxyBAapif8fRDRx0tJUOPl6hkeKIK1JOco6QUqRpbReVSeaEVsbT4EM6cg
	 Ujw8zs/Mk8hLqNiLyq47QyGv9YxZLoATWXVm/CVzGM/6KD104sQfXPEWfZN+H9Sh5f
	 Er6RlzZFUZwl98oY0xWQGgqot6gMzOwzU/929itCZlYEFdGVoNBzem3gExjJ2/PGLG
	 zBNZLA14NgW70sB4p3gJ4hBf6bUdCTiE+hUDFpyrsRLliusKxcvLdU1L0MBpzFUsaq
	 GeyTj84R7G+gsnhiaYfJDxV3hst/3GF22Yd+w2inwBV5nX3aFG/d63wHbGjIJlVRcE
	 omd1Y/47hQIbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF170C88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178919943369.27042.6177081341248630100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e623f776e582c14af7ad17cb32128fa613ea133996eabb1ae1d4c9c1b4f67f
Date: Sat, 12 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789199433
