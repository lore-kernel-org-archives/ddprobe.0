Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570EF3F9D2
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 20:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716581603; cv=none; b=G64Gi9mvL7e6ptji0L3hIUvBvM4EHExGbaY+LFhtu7IwL3uACCj+rn6oQLdI0oMiaZ6PVWOUK1s50L6i5VoCsh1xT9VUgfnh5qG1TDqsdg/7Ayj25e21SnWTtftN4/4/mFz3/4nhTZovgoCGIieDLOnF6oTCjKxUfAPlZZgCVak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716581603; c=relaxed/simple;
	bh=DEvOMCabSn7YIr69dnxw6tEpeOeA+BGIrE+8wcbmaqw=;
	h=To:Subject:From:Message-Id:Date; b=DSnbqBH5I3/ihOH5Zfj4iw1sg3t7klOjWtwedhqbWZYNN1htfUDJN/SiUHmuEpRL3hN2RRm609eLRQvREBZxBCrizBe6rymaKhnVaSOFGNpONea4It0DugF5kbVVo6t3pAhsuL5YxlY7o9Mvg6J6oA6y4kCdL0oLS8Bxr/+cDi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyCCnMlU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyCCnMlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDD7C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 20:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716581602;
	bh=DEvOMCabSn7YIr69dnxw6tEpeOeA+BGIrE+8wcbmaqw=;
	h=To:Subject:From:Date:From;
	b=uyCCnMlUDVdtCx5sfVVDTiyy6wPskBH2E11JSO7lqUkGAIIlnCLHDn8FbJvq0n77H
	 Up3TdUhVanK/z6Ndxdem8h1PN6h1RWPR9roL8z/x/vXmDF8QF3Cso+P57nJmjI2Yoa
	 K+nbS+y1EvrA6fUNOFoZ+D4cty3wbOr9qm7CIqMItvgonjm10L654QeYLrIbRprOwF
	 gPEXBJK2RYxdcJeJRA+RSw4/Ucuv6h+BUdkhQ3DVwMIbXCA+FnhL3fBnHKGWTohZyJ
	 AdrYq6IG9lXKNV6YKb9zeSI7R7ffoJoxva4P8m3cFFvvtocY1xZHp55VSQgLNr+JGx
	 3/HnqSWaCWFbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC317C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 20:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171658160276.12938.16423862166222592931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36638314dd63722df82be5d29152330fbd16e03e15a86c81bcc5161dab5b9696
Date: Fri, 24 May 2024 20:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716581602
