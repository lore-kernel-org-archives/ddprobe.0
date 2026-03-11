Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154BA2DE6E3
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773260094; cv=none; b=VOPdT1wk176d/ayZupl6Z91hLGIr305XBpZyisD673llYlFzwUCzrv/7fk2I0+PXAivGBe6e5tuJIzfWqfX8RvoY5R8SNlJ2QlYfR6gtUb3D57AsRssqW37ztRuxDCN9VmzFBSphuf6ba9n7xPnBVO1NQUC8dDEBf7EJ6iKFAao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773260094; c=relaxed/simple;
	bh=2ldgTiJ4HAcnPWIZulkKo6s5DhpY0fxNinirLEZO/xQ=;
	h=To:Subject:From:Message-Id:Date; b=U/USfNMk5rfy5yJs36uPCxx4OqZ/7kRQhRmmOX7ceNLfADL1QHOwZ3EhJgGUe3TS+VqSZoYSnDGywefIDA/i3lz+TJHX3kLp7xgBJEZsuJJ0O3hbthpcKhB60n/yiEkbiakZ5qi8ZBHGu3EVrihoOdw4kXKxcpwoV4ZHYnQXme8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjza8UdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjza8UdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A404CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773260093;
	bh=2ldgTiJ4HAcnPWIZulkKo6s5DhpY0fxNinirLEZO/xQ=;
	h=To:Subject:From:Date:From;
	b=qjza8UdAcBVi5rZVKMhGgCHHN/g9DUpfRIPYfWR5o+eXnsI3+ANWTcnqOVN4ZRjom
	 9xbcyRuIThsnvA73Zmu5o8kePpPnCPgGYGLOwdsyXAdDhzwoZwFVTTYigey3qpm1Uf
	 7ul5tUSI0ttS6jwBnNgJJkX3P45GxspeMTt9E4eqYVt0jqi/GEfw9rdAliwLf3k/X7
	 BF/krLsszIHfIrfG44vBX9iQmrbT9jLfM64guyOXH/r9JS49eQgJnU15I1oTkaUOJp
	 1BhKxD5kzHQJ8ehUEqHvFjYPVg0z0qcNf/sR8Ct+J18WCLQ8LahI0qtmWAxFqAb8i7
	 oUg/GMX2Vn2Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903BD112588E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326009358.30360.6319449576834237971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01e34643546b1c62ef7b2490ff5a3704ffbada95b335c70139773b790392f6c7
Date: Wed, 11 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773260093
