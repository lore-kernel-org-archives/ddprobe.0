Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4152C3BB122
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779805954; cv=none; b=Bk1TMfT5upIOasgrjGIH6PQsT7znc3OmkWIpjfSjyUkDKdeK3uE7SUreCwZXkK3Sbdpv6Kp6FRDe1AlVSq9QAkSSSswB//IaY2utEeKkBdhA+Ucz1K2MTRguzUtfGND0SmS+Fkv7jIni9OH40jJPbZra8noo/px9KmMFKY6nAR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779805954; c=relaxed/simple;
	bh=M4NXYAW3u0we6AfRLHgE2YK4yMrHDrplDjxAkt9cD0Y=;
	h=To:Subject:From:Message-Id:Date; b=KZP72m8gR9J/Fm41pNFyz9exkC6Lbw5jMmdGaU2VDBzE47gohSD6krLSs8QxRtrWOCZ7TKbEdxJfkr0WnYtyOWLzKhFe/6mR8vAKR4I6rtH7EQ1B1L5UJccjbDkkNidxkZNYfrqLRKkB7fAXRHnA2am6kAu8UAU0SkPmC/xsjZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSavAR77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSavAR77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0549C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779805953;
	bh=M4NXYAW3u0we6AfRLHgE2YK4yMrHDrplDjxAkt9cD0Y=;
	h=To:Subject:From:Date:From;
	b=SSavAR77Agof9wVWkqsS//mMbWg5x/FzKY6jX+mxeIOGZjHzxGG/jXUxG58J7kLGV
	 vMEJtgdGfhBIn1giGl/tNhGQq/8yuXt1vIXhkCeu1E/JILUBgUOw2ssx2CJXFm/PyR
	 E9VrUfu+SXsbeRyIQzhK0NiiqSPJcfk+9y4dUWtFjyAn9xac6p4xgSUavk4cxhjPA6
	 UG3/INp3pJDMZsD3eUZmcIKxycCLQhwf8bQkLqSl0rgoSRN6jlKDCVKQJFpKYQm4nK
	 LgXXGzbuHxbVMleBkCBbV9FU99/6LGrnRSQ2HPCQiz/NIe4bF92D72u8IFJF6fTSB+
	 odOOx3h+4D6/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1F9CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177980595370.14609.4801308297976094224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9424d37f23dcc3e990a1375bebf6f2791239d0cfa088483e9bbfdd28d29f44
Date: Tue, 26 May 2026 14:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779805953
