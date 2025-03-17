Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B30CA6F
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 00:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742170794; cv=none; b=NjqELzgLU5xodZXunvhBqykSB478NZ90Ibydo6fdh8nC+TlGCJyhKt1JWSlBVnfq+7/ko/zEzIBax8l7jcYRlL8wvV6YKNEHjC9DxaTgrV5Uxgn9ZNpE9NNLIrz6iBV7N61SiSWrZhxvTvbn0adV0E/YiHlcdQNYq7N2ei91+1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742170794; c=relaxed/simple;
	bh=k90qPQEOzRv3k9aZqaMWeIUtJKtYiBCUT6zcTaAfJoM=;
	h=To:Subject:From:Message-Id:Date; b=SxzuEW8cN7PBW3geVra6a/fqo+6Cwfi/C6STkfPZ2sXusR+F8zDiBwbCxtoUT11PCc85FrzbwkbCLxwj0s5e3lI0cCB7p4M0aUj64dLzNi16dY4mh1l0SkHw36sBfUStt2eRt8mYz3AIUsKl0APndFp3K/nj8AQ5wyUy9B3qbxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juKGmGkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juKGmGkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0118C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742170793;
	bh=k90qPQEOzRv3k9aZqaMWeIUtJKtYiBCUT6zcTaAfJoM=;
	h=To:Subject:From:Date:From;
	b=juKGmGkvTpeFjQoRkO0rWUmcii9sPoLppoC5sKODCRdnnS+isVnw/CThDO+nlqx8I
	 PwxeLfT6Ifuk7ldpxIhezHhomI86f79oIfG3nl7yP4XuaPMW2h6Q+xCarWhvu6HDjH
	 xE9XDZeZJdouQlcqiMufTQ30XHVuLxlvACeQ0CiAWCvV+AoaFJdK/bLQI15ChcHYKI
	 rMkrjr8HeOXGBgtZcyIX9EbbzZPVgKp4jaFp2IS1BtdK0IY5nWWYoyE0TBIGLy2gzZ
	 FZrbxOJQmm31PEmdnU1NTllElOTq5szQFrGw/DH82dBlrZ8GNuXwF60gtvfYvghCv6
	 P7ivVmabC7wUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33ACC28B2F
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174217079368.14373.18124193838316756937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bae45cbc3a533cdb5deeb8a1907169bd2ce00d2fd73a7d9846d90ba6d442fca
Date: Mon, 17 Mar 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742170793
