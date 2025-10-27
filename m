Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAA72D94A3
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761602994; cv=none; b=CMeQu4jzRBbQd27pdkD8lP5Py3yzuZJXNxnByA9FiXZPYnrf038DxzPYYhhkRxQlVpsMI3PFrNqSd3avrMLUZjGCH5r565aou/hVQOoogMTCQov2CazAZQDQpO0dUPDVDOo9MNcy4ZJaJPFF/j6js9Zf/k/jrMuZVj7ZmdxglNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761602994; c=relaxed/simple;
	bh=1NRA9dBiSpraL/QqnkDx8O17J04kAsBugNXv+eG4u3I=;
	h=To:Subject:From:Message-Id:Date; b=svlchx+U+G5SeAIRXBIEKKgvlQAp/mFf6rP2bfnRThv1JJlwh/d6lQqCRqmnL4b2UTYtxqH8wWYSV21gJkqoL0ND7tptAUowuIT7777TCIS4EmBskTZ/yq0xsWh/znZ7TsS5i7qDmWdaKmSh6HTny0GOl58ozMo59xzpl7zZ4cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtWnKCAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtWnKCAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9388C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761602993;
	bh=1NRA9dBiSpraL/QqnkDx8O17J04kAsBugNXv+eG4u3I=;
	h=To:Subject:From:Date:From;
	b=LtWnKCAV02z1Mmsi793IEljZv3MxsJgxWkjHAso8L9HU3o9G09GVorQPm/7FoFswr
	 RxO5HXuyjXnabstSOQEiRddV5GcEWvEpYN6BsIwh5PNXv8NlN/JenZMTQZlyT47jtC
	 7J9C9qkQFgaiCsYmFNzvsjFC7zwfyX9o700ot6IwxVJjrFnyKPCT7t6gkCC4eM+dMY
	 m9rtYUV9KZjeN2M5CwuzYhr8mL6gBwNL8aGuXVF32wBV/8f2XeZgu27ewreu0TuYqZ
	 Ed4jlnLWdWZ+Boz3brO1r1AGGeqLlX9z/DUiEYOZA7hjrjGhUAZjUFyZDhpDPXL7JH
	 N5LpfKcB0JUmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94169CCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176160299359.6903.12888472488184620482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c65d485e93a2e2f15c493a1ec1f0172aa8a232acedebb13fd0986195dfcdc3b2
Date: Mon, 27 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761602993
