Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174B32D9ED9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760456394; cv=none; b=QE3SBBbbDxbWkRsrPCc5hLUkU7xFz4G0ZsE1rVmQqwgP9vPWwNZvhewfoJiJJmawwLao5vH21mkClAC2SrbE8LhV8zDTcF1u/p6W5dYh+L0txvtLd5pNMtYwbP6oTu4m8Dz/flT3lRc98zWnVgesA0rdPrSItixDhWQb003epBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760456394; c=relaxed/simple;
	bh=fLHn+WiT2BVmKyir96FgTLbrhp10thTLVdKky/q+fZw=;
	h=To:Subject:From:Message-Id:Date; b=gCLs5FVl8z7MgphCKNP6Ul9XYFnkhRlqSJkUOBNZukVH3BZyn2XSER38YngQX3/6/tgCcR8IO0l2X+E9+6fZMGNWFz4Z7x2jmi7A0yEHiITZrW3GXClVm9fp/aVLHlGpO5rJND77Tl7dENdGVg9A9BEPl7w4QbXTxYcWFEu0egY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMlMbCb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMlMbCb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10F2C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760456393;
	bh=fLHn+WiT2BVmKyir96FgTLbrhp10thTLVdKky/q+fZw=;
	h=To:Subject:From:Date:From;
	b=cMlMbCb++jevu41vwbmtn6P4YRfHnBdRTG5UXYuEtzw7hc4nlsOF9n+Fuf8wrm4mD
	 b4zKr+fRoZPz/7Kp/Je/96hS3y1uOW0rF0Tb77BjwhbWBZesOeQzJlnH5DYA5EvFhW
	 5W/3gJTWPsI0Kn7xajQhXHec/k7z3NZKh8XlrAaoo+ZL98VsUgW9kTTR18zV9QNyxB
	 ApNIS+shPXpZVOBwnTcXZwLmb6Tuccjlb0Jfs+6syEO3KWN6BRN70NOrqgn/pbTzNM
	 YPiRVHRX6r4KWAgQYlMX4rWUa+XUeDy03bbUCSZ1Eyd/Bljk4Qjnt2DoZAh4CB8zTa
	 ki9fvyk3Vk5VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FDFCCD192
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045639358.6426.671587605497558586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9885417841c6cec12827c0c5bf23e8ce634d3ff820e032e13a1fcdff24c188c2
Date: Tue, 14 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760456393
