Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429A62F0661
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755038995; cv=none; b=qAvuyXZUIH+7l8lCBkdGsqJIJHQiMd0ieblLJlfasl6pbM1kmtvCB591ugxCXphI5vS/VSzF5f/osF37dO8JW3Qq8SsSlv6Ckw14itF58zT0js0IPFZmxTOjHK7rMUmuDMCfP0xEfxL8g0wjdkUMfAM/rOBQgCJz7T74gXyU3ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755038995; c=relaxed/simple;
	bh=2RUy1gM/bM1YkszJs72pJ9huMwVJ7H1xQlcKkJ41500=;
	h=To:Subject:From:Message-Id:Date; b=MIU110V/x+vHjgEHvE8LBNv8AzsQnKydpbrX5gcCu5l/JqyAhYximQn+iqGOz/pLSYFiLM/+tUeZLm/GFqcu6lXWA/mJvO30+kUWCuTSGIQ9uoGojT+lZc+P+ZIYu3R4V9aJw57kv5bhOpWUSXNQQDEvtr+MNy7XC6ECFnAz6+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeEFjUZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeEFjUZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCD9C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755038993;
	bh=2RUy1gM/bM1YkszJs72pJ9huMwVJ7H1xQlcKkJ41500=;
	h=To:Subject:From:Date:From;
	b=SeEFjUZiY9APkP69K5haNWndyTfoM84yMNUGa9L3YZimtKMnnTXuKmhHxmIsJWaYF
	 +48RtE0+MkROcOPoEmNlwk0L8JDGLHXVYoW8GGFR5+992sY0Gy27SJxnCdFoN/sM+6
	 m5Q/vY/+Lv3Jor8WtTkD2MjwGg+mMI5XeSd/zEbUJMQ8P9TARSPJvw8SywCWdJqwBK
	 p1wC/rZy09Oxps30Wz5M+J0Re/+rHmdEhDPPEQSM/pgZyK3PFJIe54zXOZGyNodDDn
	 zqbIyN6tZvJ5P30cBCv/4eQTDlt72ggEZ6jXhtXjVLMvHljYmulKJ9ymoK1WFC1afx
	 yb+xOiXgVm+ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E08CA0EDC
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175503899357.30335.7318854319819479717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4576d66ea8fce6e166dcc8f8ecc4185e6ebd14780fb7bd43485471ef6bf63862
Date: Tue, 12 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755038993
