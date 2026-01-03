Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387773064AF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767437034; cv=none; b=tCxl8qSRJDZHHc8SW5TiPU+KtOQTR6QCMnn1aYceeizqc1cx8nHHGY9FoF5W9H4ACN1E7rE/5WsvlBxuZQD0YDCAGdgbs3LzM4fFWvXOL1xDzlealN9ARQ+unUaFJGzq2a8ddXVDkjT52LqW76cxkVnn/3ms10Jj/ZZ9Z9dVsjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767437034; c=relaxed/simple;
	bh=tjzqQ262A6Tm27ZRTJAAIpWUsTOkh6j+cTlZ3UCEDuk=;
	h=To:Subject:From:Message-Id:Date; b=fgL34HTFtIq7VijwtM7EEtnkTV7C4LlCl1C7mW5SlcHqrDbaoY7jL/3dpDLr5sPNqmYCUg+J+t/t0/oMIWuyBkz7r0vQ6knEj/x3p3+2DoIYCO7TCBUHAmBlgzmrP7OGJXzQGtlJ5k/DwzAH/4iCB4WeU2Eb23Ndk8ivOaKhWbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUA6dNBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUA6dNBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6541C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767437033;
	bh=tjzqQ262A6Tm27ZRTJAAIpWUsTOkh6j+cTlZ3UCEDuk=;
	h=To:Subject:From:Date:From;
	b=ZUA6dNBneNf0lwRqsmcDvnX1UqEpb7YIPyomZrhC1vJUTQhnGALt0r7kebAsftJH4
	 dVbnmB8R7fVcZ+AfY6jB3sb2fF8r3Ut4syL63KofTnm+gkkJWCynsL49/MypWdW5KL
	 TtAVdHrxhMYOgyk1MdMwOpAQHxqB3RTS7g+2uReMbzWpLVm9vsMDQcGgfY/mmINLnz
	 Gxfp9x4Cd3HwFHLsCYFSU88FdDdEczKyWdnVmC/VmrF/HiNg0pjUxuUgS3/aSmGRRj
	 TFjDyYazf9Xzn/c+gEBVvO52oJcrbmLhmhyiYW8/ykKipVaMA5IPWkcZDrO0zvWSzd
	 894c59AnjpEiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D16FC617D
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176743703357.25276.13595102365364553906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7503ce01db1fbbe5b7df4acdeb9fa77b858212668cefa2041e97a602a95ae8
Date: Sat, 03 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767437033
