Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B95A189906
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764472974; cv=none; b=QtmXYN1FyJAfVF8v+Hs9NeaIVmsLqA1NMQkrEyKl4ww0uDl8i1W2mLcdQdulcCmHFTX2DwwvsX3yT2q2gDe6aW9kCC6ZkiC3b6NTDev989GFYsgT5NnieGOE+NLuTK+Cn2JK3TpZqUVSeK/qYFLmGBPSI7Jz6L0HDwbzjgPaX5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764472974; c=relaxed/simple;
	bh=hz5tXrEVz/JNEEB7WdC17kGnXPnrMFB0uTevzTAvNio=;
	h=To:Subject:From:Message-Id:Date; b=IpPI7nGhbMs9gcaIyVfWEvHjkJARMYzPN8yMSStSoa31OMfAWCn38uRFjVZhN8a4IWoOWP43Y3Sm95rUW5r/ZXGSQsWbTaXoSn41InQXfVpXidBRJlvQmWRcqJe+uAsTu7q0h9ZJFda9D4b6T388vJtPboCTLnoSDjPxZuG947M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udC9aIue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udC9aIue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A818EC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764472973;
	bh=hz5tXrEVz/JNEEB7WdC17kGnXPnrMFB0uTevzTAvNio=;
	h=To:Subject:From:Date:From;
	b=udC9aIue2VOYxPzu4UZ3gaCbdyNCV8ioHqWp6+AFEkukd9anAOcYazQvInAip9dG9
	 YrEi2MS/QETxDAMI/QgPlUXkfckIIUcU1ulK8j307GtB3bLljE62f/DOoSIdbH8AeB
	 bqqV4CqwMfQrnkKJ9XfIW6wXnack3URaF0ER2UzSqMwScjlzwkxKjpGE0FrNk5wIp4
	 Man4njiHA2VL+BRcpzZoI8KaVgtYLn5OXhZrLK754/Wt9ijB1/jJ49khaLF3oelzuv
	 pcc+kN4DwRrfW2g3c9/hu9D7bsryslwxEm02uCf6W5YVcoCcIMGJ6d9cjhlKRso8qO
	 AEtXeHHWtiHRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9309ACFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176447297358.12903.11249157052165937688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ade31f38f81646c4e5a0f15d2680b3fef50030ae1473760dd2051cd55f718b
Date: Sun, 30 Nov 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764472973
