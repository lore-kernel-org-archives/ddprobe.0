Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAD3215F7C
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756359594; cv=none; b=d2QNB/OZpp5uKAYWwgfLH38lXd5VWGxOhqtP0gi6Xpn4Ds2PJFqMxEKEKiKJTUpkptJ7isRNROqdFVOZ1QuXZeigdbemDfBV5QDwchHXzMtP5l9MPt6wa1dW5ubsCr5C5hZcVNTkPqiAhrWK8SwndWuTeiMcgxtS6Qq41LVlwno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756359594; c=relaxed/simple;
	bh=N3fuMkZGPUA0DHU9rbj0bJN8447vAe3t5ze4CguKMFk=;
	h=To:Subject:From:Message-Id:Date; b=PKo8KWfrnxAHXAGe5fsUNnw9LOzxZpzivHpEMDO9lYWM682J37UGg9ruZgjNTP1AdV3kEXvtGISe3c9KSUQes6nWiNeB0sRJ1MoI4DXss4h7FRRD0gZg5ve1fAQEBrvITgADqZrYkfLxveUG7CWapyZ6jxVw4CDMHB42dKHMFXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3fzw/um; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3fzw/um"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E27C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756359593;
	bh=N3fuMkZGPUA0DHU9rbj0bJN8447vAe3t5ze4CguKMFk=;
	h=To:Subject:From:Date:From;
	b=k3fzw/umovrF0rIr0qpXheT5tZRt9+jytJjvCwErD9x6d1Pr0fahxg+LSe1UeJe1U
	 R2gpwOid8pGlYrA2F+FDkH7Qt8Gm0bxHq9ma2lvlcWJ4bmblSlgPLEbDgC+fqK9HuG
	 P1Imx0ovdrBRxHfXNcOYkCyM2k6P6u5BYed+zyCy6L732LjlQBjhZSV0XcJvTIutkH
	 Pcl36MBpyVwQFIkvywv2jASguyLgG1DXVFv6YdrfLYYLHNz70Vg1s7PFSn8R4ME6J5
	 sjb+JZF2ZbY2Tw3wVKUs+C+uV7voWefxUwppwGdarqdbFcdOk/AWry/v5FwxBozMqz
	 7MdutPN3EwK1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E224CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175635959357.22629.12894820881768192408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f5aaa5e6fb2161de07925eb119d006f45513866b5cd0bd763b4704a7dbb1c1
Date: Thu, 28 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756359593
