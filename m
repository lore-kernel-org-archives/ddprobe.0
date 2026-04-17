Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A84D52F12AE
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776445054; cv=none; b=Oy+bjgOn5MVivmc9xGA9JJVmzhCVrzfLUANO0gw9ed0AFXtS/ejrGG9E3uyVFo7pIgjJROaGHnEeBQ6Q3qqOVc5czeVwzoQsMxs+wcsUpMCQ1HoaPtV6TfnwQXz2zjPYQTlry/0uJtkTtJ67iXAOY6U/7mNNus7owIpAglFBDzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776445054; c=relaxed/simple;
	bh=Wfym/ELhll6odwZtwsu9aUjcL2urzdZw7pfE9BiENoM=;
	h=To:Subject:From:Message-Id:Date; b=ZwMlefV1mKFWBpfy0J3p0aOMZKQIZUdvE8TSWFfx2Bluf51s9Ii+MnisuazlBzdIjf0eOZUti6OYBSCdfw2IQlaxXASD1PkfWaSNysGWAzoWvKETI6Ew5XN/ZywCbtx2qmX45R55Mipy7GZURaDWdQJJGO5rRYxRcJlGztiM0ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbryhN8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbryhN8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8128C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776445053;
	bh=Wfym/ELhll6odwZtwsu9aUjcL2urzdZw7pfE9BiENoM=;
	h=To:Subject:From:Date:From;
	b=YbryhN8cgpfSAIsILJGTXTCbx6ETW68B/+F0Vi+kCzjUrpDu0FiWhMAEDogvNA3pA
	 VxwdkJxzjVd15Mq++DvtlZ6OD23H8++FbRLls43RXi534E/c1/dKvLaTdu1xMBV2Os
	 hw6hWyFVsUjxYHFdPG8AqMZdcLEduCrIv+EzMUQQqxmzipXfLOsv40vf083K7TvZjp
	 UxTTb+tBbX2ulW6uu1jRDZ+vlaF/nbngvJQ5Wf3t0jC+QJmtH6A46sNhLDvEua88Be
	 0uR2OtSTOwRfJ/HtPyuKhxDNukDMqBfK9LFGT9Se40Tc3N+YwWQ76zrg8tEvNJzB7J
	 rBHJc9kffvBxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F08F436BF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644505368.26121.18412655647671236960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc54e9e44f4f20920ab8f24434b3c790b12c3e19978a91f277ac445eaca2d395
Date: Fri, 17 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776445053
