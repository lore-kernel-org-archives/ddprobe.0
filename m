Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4439D547050
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789674034; cv=none; b=c42ebw6UBzLznjSSIonr+IlMAMU4GV1x2pWpvNLy2EUuu++4+h7wLJLZ3evXsMXo++2S6Wkx6702udpAu4BHzrg2gx2fyht0VySc1IlZRM3DG7aa9aTgoj+AJHLlCsQaT3TM4XW+wail9wh4/MZPalvc+uwcDO7PAYfLYkOg3jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789674034; c=relaxed/simple;
	bh=sPSa+c1WDgmiLNLdkibrXw9GaxksOmL2pF3dBBqmo8o=;
	h=To:Subject:From:Message-Id:Date; b=o7wyWSRXprL1PDz509WGiHAqsAZcOf45/VvCNxvRV6a1Z5Cloxzi7f3uTUWeKgwTBVN+uiDxmpNln/cvNUQqB+kq82HN5ymjWmLDun/6IRaNmr7aR1hoFeMNEYWwlEybj8ZTyu7nrHYVzwSoRUby/9XvOfSXKZeDCbz9al2yvRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDzdpMzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDzdpMzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFF9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789674033;
	bh=sPSa+c1WDgmiLNLdkibrXw9GaxksOmL2pF3dBBqmo8o=;
	h=To:Subject:From:Date:From;
	b=JDzdpMzny+kMq2Y9LxXRDZYjjKmc1fvvnDlC2Ha9RA9XqckaXl0QlB1LHR8AAZRF6
	 B/8qcQ9Jm+51SnvlbN6qX2+KKqeUW3zNMqpg8T0FCjy4ZRonIoVghSeUBCFUkZHz7o
	 TwfCQnpnz3gLaWpMLoKAo9lrepfi3oe8IrIURNhrYRzxPOpSZHVIRk0ae3r4gU51rb
	 9Aka+LoMM7WrOMf74YIH+PZlOtMrfFs5nBSBlzSEgFi86bqdZ/glp8uobM7wxskq5I
	 PYGVxwqoTVVLukqdsA12vUGkTa42NB11ZT5J59MU7RbiFp4nsMMB3x2JQm+mav9OJP
	 dpKB3qkFFFY+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6C7C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178967403369.26096.12593798385093125779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51420ef9d6dff63a6412b867cb56f4d451721c7dcc89ba6a70069722ef9e639f
Date: Thu, 17 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789674033
