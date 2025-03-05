Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF82198822
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 18:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741199934; cv=none; b=MJwd5yu2Vuxn8fYJFOtYU54qfWwgrQRL1zDxUAOCv1QnND7EuQWTOSJDZidU/KtbtvW+ykhxLhHcyZUOovwRFAKAyijuM3nIf6VXnwjI5tLHuDLmUes4mOq4HTF5a14MX8BF5YhVGaGBJWFmzJ8pyoC+xRRwPyn7FmP8K0sn1So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741199934; c=relaxed/simple;
	bh=CwjNijjJBhAsS5geX7VxWY27bEwr4I+GnlASOAwpDco=;
	h=To:Subject:From:Message-Id:Date; b=gOg54QhmzRQii+1MyZFUachipcUs4EzNKGmNJIYYLaEk0K7gh8F7YN4rIZXQhkfKzTZRSRWNDHPNzqgCXxmC5dGquE3SorGeuT++oLi9Dy0vJbsVEv2bQS8SjA3Xey7Y0mtTHaY9Te/j5LtZ/a+BChXFpqmQSX6+fmruTpdcOxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r35FkE9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r35FkE9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FF1C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 18:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741199933;
	bh=CwjNijjJBhAsS5geX7VxWY27bEwr4I+GnlASOAwpDco=;
	h=To:Subject:From:Date:From;
	b=r35FkE9VRG5iD/ec9Pqn1PuOA3UdItwT1TYW6+xeix3b4v5QSWKBcMJGFYNsFrkQ2
	 gbUjUTNXvlgOJ0C2znlSPE9VWT7MOD5NcW87yfyZvKRnu/PN+YiqCKTXwsBivOJJXh
	 nDjVh1IxtZ3EhFvs44S9fmdZMSh9NcbEnXVPjBhcCb5Hx4ANtPuW4nACy3fIebuqes
	 Q8pwrM8HOhwM6XAoIIeNvZEVhuGsPEy29pTo1cFuAyU/jpoKZNLav7qo82iGe9kn64
	 6XaRF5weMzdc0hvkgwtjSmQ8BZH26hNU2uVzeogi+e3359S02RxAqJx/huLWgcQE8O
	 6Kw79kd+IrWog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0FA6C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 18:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174119993364.16970.8274644721698741656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 871c20bde93b7d2c2a51faf8321434155c09966b4680822b146862963440f582
Date: Wed, 05 Mar 2025 18:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741199933
