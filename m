Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335181BF58
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761974994; cv=none; b=gh6PeFaKXMX3u9ruU6MkrOuB/yDsy6tr0RECHVCY73vz/nuOkmvrAs7MHbyLz1cXLWCQCPENWVZ6oMY9PNtVn0KyeAZs8HG2X5API8LS18nu27TlqWPzOpmIMDkZmv69HZ3IStE42pUN2G298cgo792NZm23/p0M/Fm5cb0MAYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761974994; c=relaxed/simple;
	bh=5y6hxIdg6e01f6gxny8XWf4POFNG23tgljU1ssJm55E=;
	h=To:Subject:From:Message-Id:Date; b=U2DxoMH9fPdIbBWFWoUc7SskHlxRn0YT6GLM4AX19D7OxPMgQOP24Weih20I+9fxwM2+eONXiU/PBeXtFrlScFH0nUlHnYcREXKogVmOMvYh/x/urnIerMe96j/vALZZ3W1r7+c9QgQLTs2n3AAWWmdnEXWWttFEZpVHI6NqwCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6f5Fnup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6f5Fnup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA63FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761974993;
	bh=5y6hxIdg6e01f6gxny8XWf4POFNG23tgljU1ssJm55E=;
	h=To:Subject:From:Date:From;
	b=E6f5FnupFnkz65JDlRQgdxnTGCSt4DFjIQYtlRsmT8rOheW5h9eyozNQNGpaj8dYw
	 a7lNC+990NccLEJJ4tND5h93/tZ27pUuTYE2Pa7nKFb/RB7vhexgnGu9Dt1BW2WNZu
	 bowqxzL1nDKqLpJP+h1u4Ydgp9bNbTtzs+oEGHESU8FDRP8KkyhF0aOwHePMhpVSeI
	 ydnQfFES6+5L6Mxag8YNVzJz0uj6lwJOgIIwBVUCDLq8mz6W7nlaDqfteo6h2lTQjq
	 X6F3C3yRsKtI6m//umaFVayIxOsusiCmEX5YFdByqEQfwDmHfXmfQdNuljw9s3ed74
	 8DUPs3+2/uMeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93611CCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197499357.12089.7969333556975369104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5552b099fd12fca8cd3bd16946a4e4ced70983b681e93aef07274c5a3b10b6
Date: Sat, 01 Nov 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761974993
