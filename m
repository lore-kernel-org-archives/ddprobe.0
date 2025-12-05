Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A03133C197
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764946974; cv=none; b=fcyDZO20tEFT49MnUUuXhXE6ZDsVt8itKXXS9+2djI4TcgGi5h2XnRZfLG9C2oJtB4t2NeODaO4jJ8GAzzaysvqfcdcQu/AOQqC8U7B0ElElWWCjpt/KrfbUjcJWrDSrPP+4kr9l3BRiiUFwnUYMNJQ0VaUqa4pLivhHDFKN6+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764946974; c=relaxed/simple;
	bh=KZr7f8CD6/YwbtsRe56qlI3PP27KDKofi3Yx9pyaRA8=;
	h=To:Subject:From:Message-Id:Date; b=qnLkeHd9YgXLt5BNkzBe0bBSJSfMAsIWt1oMPipI05biFYCw7z//szb+29YEjRrjTPEUTykPVLRmeFaDoIMuuDjaAAlTTp7hlh9ocf+jhSWMDCt7FO16BF4N/Nf/oU730IVa6HGGiJtEbCpUh3yLhyp3LmZo8EaeUZtk597+lcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pePfqq0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pePfqq0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF647C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764946973;
	bh=KZr7f8CD6/YwbtsRe56qlI3PP27KDKofi3Yx9pyaRA8=;
	h=To:Subject:From:Date:From;
	b=pePfqq0h9D8wwjeaEO/NIvOV84eHr/saXMQJGZaWMkaUu0jpASqxsYZHCKWfDF+7a
	 TCWvm4gF9z2/T/ppl1pu2d6YjIpWi4ZVCGpY1wG6+mbEWPpMlW6pMcH/pe1FKpfkUe
	 yeMgovxbyYvv1uGA193ny2YEfmbxFsmhEhIHwrhRZPILOwrzYqFolt7U5LLHpgT5jo
	 qmsZnAR0EBh1akxNiqC3nuBa3GfANymZmSJgEmfMQ1ppPf6u3DuwBVoFkYHc2iP+cG
	 DCIqa+AiVzbEQo5cByLStFXl1A6URVNU42CZ3flq4Nxhzn1xUrxknnuLQPm5BXqGGU
	 dFqD+1ccHdUpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F4DD32D9B
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494697360.29499.15615096472677998649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d908307c3c852ed070fbfbbafc2961e40316b562de2c833389bd2d8ee9aabd18
Date: Fri, 05 Dec 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764946973
