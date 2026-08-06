Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CEA434E33
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786057234; cv=none; b=ERFYoncTAKactZCyeD30nGx6viPsx5JmHgXmMnXqwACutUwN0WAv5fSHRrI4k/Npv9qO1qiZ+gR1yzU4r/iW4XSRmxkC7mLJqiIa8gTUJYXdxy4LD9lxKguttneHEflKHwQG7oZ/Voi6ORjlOTTnW9BhYK8E4IW6JP5Br+v7Y2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786057234; c=relaxed/simple;
	bh=BzcehahjPiLBrv6wERTId/qxk5EhEQuEohSFHWMwhEg=;
	h=To:Subject:From:Message-Id:Date; b=kOBARtbwIH5GgHWRrlvtdILkmXr8t180BcsmZko9DaWx36/7fO1/2VDC/DKHAwCzGcd31aIBhVxNAI6l/DzqC34+zv+Zk3yLfASuUhN16COwC+s5G1putKW0ZFNOL5vA4CX87pc6je8JMV3wi6+tTiHJgmA6l8lr2jDA7AgpRh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbdpDcBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbdpDcBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7615C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786057233;
	bh=BzcehahjPiLBrv6wERTId/qxk5EhEQuEohSFHWMwhEg=;
	h=To:Subject:From:Date:From;
	b=jbdpDcBl1g3XFPuQ7hHlv+qzXPnFdksK3THqQ96jwdf9JtxcJ4d1Q1Tpg1AZUfW4k
	 ubNKAJ8svWYFB7GgxIDLH176qKFGC+ZmqB1V6dyXX9jmA/eH11sVSuxqbcmxstY9k5
	 1og7910W9F67Pci6qBbvrOvheI7TCs4XZdFknV12xwAECXLPRmwRiK9V9IMKrLEdyd
	 GKv1vx4reuGBO2c+b0fidHR6SoQQ0LuKC/S+geKudlKorfo1AtbZemNydlw0F+SuTu
	 0ebwhyw2E13EKyVzkkZWO+il39JavjCZ9vRrcMj7mM849uKXUbbsvN975lnxvC6MKs
	 YVnNluR4sidmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E65C5AC7A
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605723372.29565.524926533105269151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f642bb9af44d5384f7d457906ff9091d059a4caf4f650726062613372f0d3d
Date: Thu, 06 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786057233
