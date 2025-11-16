Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357F41D7E42
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763257254; cv=none; b=DZJLRLHES06/QbUmig2RfNIhj8jPJykFbQxd9wdPR3F89jfK6+9cchnalWPRQaOBUZoug4XUAKxeIXg+dyxWXY0XuODxiTDH/yP0vwYQupguc6FQbWOI2oh/q8b2mMMr8tAu0I9mMFLUFhM8ol+p1YoPdNo/UIDbdN3IUhuHB7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763257254; c=relaxed/simple;
	bh=/ZkWx+vvzqkPzHPoMUDdBMwPII5FZ1Lmr0uh9Fterbc=;
	h=To:Subject:From:Message-Id:Date; b=C51jmxUNunGetFANVr3LfMuyUEqYQtoPdKnVHODNQ+GqLOSLL9OoHVJ+4beRKi/3tTagEfKqPvRXan+35LsHdY1GNDVkJjR1juDT9QHcqPLeNGOHuJ+gc16wOo26R25Abcasmbf6hbzRyYu40B9YmyUlK/2K8SdB8hE0sWMg+jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQ5JUVaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQ5JUVaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D675C113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763257253;
	bh=/ZkWx+vvzqkPzHPoMUDdBMwPII5FZ1Lmr0uh9Fterbc=;
	h=To:Subject:From:Date:From;
	b=aQ5JUVaQCRM5npDRqD83xQKO8fRp6kMnvrBRLicuerudaooLQNBo2HsEK15fbjsLW
	 DBLDsk7ElBqLPkMCMZ/WxRy8SKhOZKp7QHf5K6YpvSZpliTZcVamvcF7H/676WuiBB
	 Fvz8IT86S5a6phvlWDOpVm2ExRZX3L4jbOY6HFA8eIzVd2hx6LZ88RBJGfeYpryG1T
	 9QYDPJCMGK2qtpM3nEvgMQ4mL2KRFuEeLYoIF4mmZBZfEwTQ0wxis+jBKrR2SWWzcb
	 Aa6mfSaXgfY5vzeFnTtVmUoHX5idiejjlbtrHUOtvp5LRbcs0ZtEIXH0voGpG8ylUi
	 lvQ5b4QpEddww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906B9CEB2F1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325725358.4845.4522711497098496783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e56c68fc66918d9915dff5c4897293a92ae6a00b9f4b6d5d7366cb30409f8ce9
Date: Sun, 16 Nov 2025 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763257253
