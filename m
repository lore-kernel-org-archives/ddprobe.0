Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4207199920
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775555734; cv=none; b=Cejyc9rurynFb34G4EOyN4HPqwhPzm/zHWQrIDfKihHeUstPnznpYcoM+3zCSGpQB65xmC2oiH3yEIP8eCas52QBBvSSZMTnqc8mG9KwzPh5k1XQF/zbldjLPhZmUHdcW2EfAdAciM6YGf4X8wkxssItnpk+ysUlDAemq6If1DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775555734; c=relaxed/simple;
	bh=JmZMc/ZuSqq5fKtMcjPDDNwHAQsKZqFdKs01jub7VI8=;
	h=To:Subject:From:Message-Id:Date; b=IMNucYj53nt/OxAroQuN6wICoLbpXDxbjoKsmSqFc+k4UYscMODcjT4b6j4EG/fX7tjxpgmeld1fccaxkTUwTkRb/8JxAF/m4cKa3FqgPKG31oyt1awTmq9rOFULtZQmHf//YmNm/xNlUM8MOqrjKCoaxc8aLQbSfT4FRE17Pcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQy2MyOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQy2MyOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BECA5C2BCAF
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775555733;
	bh=JmZMc/ZuSqq5fKtMcjPDDNwHAQsKZqFdKs01jub7VI8=;
	h=To:Subject:From:Date:From;
	b=jQy2MyOLJyyAe8OK3VUHxni306vOV0XXMg2cwfF4D7yjy6N0OlzNv4Od3ktHlkT98
	 csO+YA1OVVzAeretupD+x0/zqgvPONWmo4Z/2YCzV1ofhbIiZKsdo9wIXAplxkKYpn
	 +g574s4puCgS1VwoCmUtevzCfQ5SFm5nM9Ja24tAJhJt12Q/Soc5FwctIKigt21VOy
	 RfH8pKjqf7DynMmdz0/DLKYwCYEblUQmcvG3Vzgr8EDG44hL7fEDTJ4VDOzSuXeP+/
	 vArZorMntdnD8zO5k4fEOLX/0pyDR3yAikID4yDhYSQWP4UVJof0CedTvOdW7U7wa+
	 bDom2RXaIHZOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB79BEDB7E5
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555573369.3389.5931237366325864773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5267f870fcd12a08af13f1e15560ce3c067105ed30dbce7d9de40dba519da56f
Date: Tue, 07 Apr 2026 09:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775555733
