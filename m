Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E81257AC6
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762259994; cv=none; b=naVkLlXyHOk+let0PCm/9S42TJLzy7E45e3Wxq31nARhah7NYYc1KU2aJS92oYTgegaaWGCRAOaJ8OYBq7DX6zvcOjgEJ82zfO0sguQHZ0rZXqhCGom8Ze0IL+xPE+VY5xVxAuWksNY6ypPhcQ95UVDlmSW2Z6w0Q9CsWjT3Vi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762259994; c=relaxed/simple;
	bh=5ZNjwWT8EsTCaiIZgzLDAr/PteMIfmQU+Q6TZYDS/A4=;
	h=To:Subject:From:Message-Id:Date; b=XTa46NyD5kWz24/xYo8thtNecKIx+M/tnXpyZLo5ZNe0X4JU4UDBwwBVpv/dtazoMNP43HNMG2bX8aBOyilb8MWRV2XVuklDSfnsgsAAKZwLXMVNvgKF2TDrVTYGLMpeuhHNsfdG9SBl6dGax3Zjz1CNqPz8jVlpAZsbcLBY4Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esY6rYcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esY6rYcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB8AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762259993;
	bh=5ZNjwWT8EsTCaiIZgzLDAr/PteMIfmQU+Q6TZYDS/A4=;
	h=To:Subject:From:Date:From;
	b=esY6rYcSITg5KYaIKg0QsBEvUSWfk92aCG06fli5O20IUdnAKYn7VbXZwJQGVU6cA
	 yu3S+Ox94oVMPDpuxsw3IUvq3MwYZQ2qyLl0ufkVOg93ZEZhnOiLk5BhTEtwhU1iRX
	 vr+lzT/hSPoRQgH4GfxqsXLC7S5Pws2/7MB9CpyVhgBbCG4HoXzYyDY4qH4KTXxDwx
	 Ld4hQok6bCg/vhsgQ6ypl1WmGUqkTmqdrX+ZWpOyArdCz0j/6ccEq+R860XlAG0VUm
	 lCj2t+GOV8XVmafhwDa8Ks/GZZBjqhYovSV/HQEahDqdnO7dr8IIlKX5zAY4WrlAXS
	 NewJmeukDhXBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA87CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225999358.26192.15549775352364538223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244fb6eb85adb5fcbee1d25c735e2ec3f35dd781ac513856a95f60fe1bb12fd6
Date: Tue, 04 Nov 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762259993
