Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B062F12D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769793834; cv=none; b=A2AYUXGsqOrtmPXjy9yZO66TpZlEZNq0h7xloGr/rkwbR4lixwhQ0iJsXOGI00BAVDyklIEUozVWoRzQdf0XsX+bNsqSemp1J0LHvSmfxiu/ZY9ok3GrcSXropUDoTHMXD1UrKrWGv+5M/l98WXN9x7pXLjV8MZD58d8WIwMh0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769793834; c=relaxed/simple;
	bh=2Kv27asmsvFhQB3QC7jZobw7DhlwBW0Ey+CIrj+tJOI=;
	h=To:Subject:From:Message-Id:Date; b=UT42bhp4+p148PFRzC6sv2GghkfySoV22o9wAFFw4ZOEtRscGkDn8rHQX3tPslMCmBK9seI3JLUyRg7mus1PuZpndYRVeZrKYrF/qV3+t59tSR2tNxV5+mxx00FR339nWXQv5kBE++HOhy2Z16eCZwJmN6tTcvkO+a2Sg7hsGF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVDyjK1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVDyjK1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70CCC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769793833;
	bh=2Kv27asmsvFhQB3QC7jZobw7DhlwBW0Ey+CIrj+tJOI=;
	h=To:Subject:From:Date:From;
	b=jVDyjK1QkJeGKFIlAZozA9+6QdgyhlUMIvqtpVcPq9VwQAKdx4UDROq5CzfFEb3LB
	 9m5D8w1YkKtBSfBtrxlAMv+MRgytvNPb2OqQ8xDsnGMmu4dUwvwJQU/9OXHcBeJVps
	 s9NIAXddvSNseFmZbl+gKOYFeZtL/3P6AV9STjCdZMDgImyYxqzz+zLfv9kB0VvqfZ
	 BaAvYAxuS2S9wpv3fbGeWvX3s4RJ9kI3ncF/sQMoRka3KmkDtfgxARPw6qlX+maT4U
	 O+hAvRGbKxWUdOXha4NHgGK6VD7HSH7EoLWOpUu6sAXBLS0WjUmFcbTjA1M5Yg0rg9
	 fYxr5cTPDuuHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DDEE6BF31
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979383358.8588.3649456449538885173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39fca26638b9a39f97fc39fddeebb6b66a0471ebad3256b4bfbfb98c48642b48
Date: Fri, 30 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769793833
