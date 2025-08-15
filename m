Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2414D25782A
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755277194; cv=none; b=VWojatW3+sl9E/WnERnKpC4e6pOHz/fKsUCaxFE6FZ9DKUWU72qcGuJsWvz6WpESzUNzDN+Us75HbaZwE46my+Y4mmslxcXBHzb/0sHQDpIPYTll2GH1YHLw+WvendhJuFOsj61tsebyREdMDHXjSYMmYCbF7QI+5J7M56qfi2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755277194; c=relaxed/simple;
	bh=tixt+vB1HiTy88FoGFVyRoFPro9AQne3YEhAkrvnTcY=;
	h=To:Subject:From:Message-Id:Date; b=D2O7jEvh3pNDvn9rpVxdj1RYogJ6geF2uQ2Gn04hw+rJGVaGFlXPo6sZcPFrOcrRQEny8gVmxr79CEjAEqip7ewVosAb4bqF60wgq1gYm/4pGgujFsnW0o+6pLylG3moVLsgMH/BoHG6e/GvSGieeq1JcjF+LxK4UC5RJxo174U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcZOvcGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcZOvcGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D63DC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755277193;
	bh=tixt+vB1HiTy88FoGFVyRoFPro9AQne3YEhAkrvnTcY=;
	h=To:Subject:From:Date:From;
	b=rcZOvcGGRfEtkMXSR+sc/SR52Wwr2aifcZZSdtWjXLoli8+pb88/MNt+pNCRAmBLe
	 KuSyJ7i1+ZhbGN/S/Ufcr0jrxft9wpTsJQFUgM6At3EdjImRH9k/JqWCpJiBA6k2o+
	 YUJDqKUIOHxCi4f4hye/m9ax4dgH9j+cK8yElwaeLfc6Z55exXfVRv9w6T5cfO6+PD
	 SCbOGdoHeOcX6+jui/bbSQHDnZkDWqDB0fusRIYuCOvEZmhqZL5cDQwBBdZNBRL8ul
	 3SqeGFb8Ex3cxkUeJfCprm2IuN3J3pWl6xK4x75Op4qj+++Noyu25pJAOdR/ETID6s
	 lXD9+gsVIph6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E6CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175527719357.19905.17241221829315969712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db28bde4843fd57252fd3ba60d6129352eeab307b7737b6bd6cfdeb513fae393
Date: Fri, 15 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755277193
