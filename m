Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA31B13AA2E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748858394; cv=none; b=D6ukUS1+iNQ9RbPRCqQjmwBuLa6nAcSX5DwgX5yoTwHrfPVM8NEBuiXwVGcsXYdRZM68AA8DpSrD05tfuEpSf7uvXgsAOV6NclKNgsiBSwSCJV4V3eGrdrmfduZHXN43hq5C5xHCdaaIfLKFi8OPN8b6GIBCLN/z7G1CXIOYl3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748858394; c=relaxed/simple;
	bh=jvN0APBZ+LQlKma2Pohvg743UaCK3oWZh0fpA6BjTqE=;
	h=To:Subject:From:Message-Id:Date; b=M1h1fM5bZ+1wCPCBq3x45hMlTyWFoPxanQWwSdd/dDCJHrpP0KDx8Rakq4JIQ5qXhYYffeoc+IpuYIbsSKA3S7BPQorlK2tDwDjYuXCHWcHQ0XOX8KXksymdkeYVV8oahk8+3o3+aHVIwJm3yNLoUzxUlrsL43w6uTtgWyFeTUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfB2Yye5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfB2Yye5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F61C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748858393;
	bh=jvN0APBZ+LQlKma2Pohvg743UaCK3oWZh0fpA6BjTqE=;
	h=To:Subject:From:Date:From;
	b=ZfB2Yye5L8E4wvbotE7PI3Xoo7Z6SwtP7yhSXIhz8NJC18i8CsigqpfvsxBelW07G
	 vcy6C1xu6wBIShVUwtPxglv4mQivwkQ3cokWnJQ2kAWZFkRGmFVJBVFHvqRQVk9p9S
	 uZ9uFkmxhXBMkNE/xle5h6kLWdONDKu0XHJFtgH+SJ2ZBosMjH3Kwa2bppsSE1oi1y
	 Mn8EBp6HQm0mN23AWzCW7JkV6iCZrjYcc28e4iHzTxZGDwpaHJc3Mg3j/4m/qjWw//
	 dLcn7nvV7PL13cNe4x16aT+JO+kMEQO4/ZeoqqWWVh4uxgq4QwbGT2hD8SpRVpVxEo
	 55X8borwI4oXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C07C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174885839359.14869.13339510286346421070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b654c6da824f4104dd22c496fc78bb27acbdda4f6ed7d2e534d2331b32487e38
Date: Mon, 02 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748858393
