Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A92204583
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736778354; cv=none; b=ZtDHw7Y3gYZVaMylZRrjekiHo4e3R8tMudTuZ1pE6pBouLUMHU4ukq5gBrnHurSBbFwSQLu15MJVREXG5Zni09Na4F6i0rdYLXwi85f3EB0J/MzfgJrcC593DzqIoX/Oap0p6QTWc6C0dQo4Z4lKUWxBvkSciXZxYwP22PKrEh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736778354; c=relaxed/simple;
	bh=Mi2jFhoAQH14ZSKG8dU+YkAo1zn5ElZp88thEiLdn/M=;
	h=To:Subject:From:Message-Id:Date; b=FwmIWfvrnlBgJZFuQN3oe8QPbLi6Qsz2q06upXFmIdpEHwMkDPg369fc9+NpFvCtdhq7scduvCD5tdCgUGinIUUC1jY8A1HK7JnfxftNMjrmJW/OiAtx0fRYqorfUd1dYiAYYDJYOWsWNwCTxjLoeCNjMCzLymjhGBS+SLBRX60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/mMgwLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/mMgwLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21FBC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736778353;
	bh=Mi2jFhoAQH14ZSKG8dU+YkAo1zn5ElZp88thEiLdn/M=;
	h=To:Subject:From:Date:From;
	b=n/mMgwLEq2EBk5g1PnW0QVvmZMfojopUctzMXvU9Fw+YDeV4LCOUMfS9NoJEY0qhN
	 xCgyGAmV6jnhyO+mEQSizJYCGVH5RhowBpydrlejEN9f7Y8a5MiQiCe2TPll2lM4yj
	 Ycq0PHkRtkkceQFQ2P6APyLhRwE7bJRUcnFXw9k0YbCJuKF5hq64zMXIUL5naMUwa8
	 Nie69EOxdW+hpO2SPvkJTYGQzg60pNb7Xpx6OhRydBdB5cxl9kwBOb/XWzmw8Gp5aO
	 NLEERiSNS8wilYqLn61iNrqrHEVNOM57zlrBIJH6VBH1xoFdak8TJED/Ug2F1mygPJ
	 S+mzaSbi3Ngfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9026FC02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173677835358.28780.10470922123225342275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c0c5d99451c7c84b36e5c6fd60ad5d3e844636dd4c34929cd8294fb6be6dc8
Date: Mon, 13 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736778353
