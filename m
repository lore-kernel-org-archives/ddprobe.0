Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAD42DAFB9
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763036994; cv=none; b=Jl16gON2cP1HrRC7ZJriELmEQeUXiIRu7DlTLIlf3wdF5IPoGk66E7Tc9Y/zTsW/gVeSdyljvfHcwxMGAap9J7b0kysMplsyT4s1kmb8eo9ye/11qiXqg7LuQ5z8fTCRjUlCwU9bqGQzfqf/BqnLdBGYN0PCzMKKXIMXD4wAvIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763036994; c=relaxed/simple;
	bh=SoTlcfnkjzNB9Y+5GvwGXSgmhjyzswxUD6c7QDVrn0Y=;
	h=To:Subject:From:Message-Id:Date; b=VjbSFGr4v2apw5/3M+nsXjPx2vYyhzUo745xK1pmSxVsNVVztweWFhpvXhS0tmQsV1Dlop8JGvhIt0vJBvo3qBl/NN8Yxw+vQpdfB3aEbNq+kyb0uE0wsm/Yzp5MI0q9prCJ2axIYi+G/GS6srDCXtCyW7pVgFJYCnWlqHg806c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ni8wDRsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ni8wDRsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0F6C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763036993;
	bh=SoTlcfnkjzNB9Y+5GvwGXSgmhjyzswxUD6c7QDVrn0Y=;
	h=To:Subject:From:Date:From;
	b=ni8wDRsSHnk/zN3kjUGc6jCGONDGaHsMpcDNiYdOudIFeA6/6GTUSQHnKve/+se17
	 MV01QmcdnJgewGsXXi+UqsAKFGII0kUefqifhztvuPCW/bLq8v+oWPgUStRKZKRXX6
	 XGGou6cWXmhsPUpUb7FByycXFK9aOa3V2UKNP0SJu4IXh2Vf9U5R7sfc2+dzBc6jdd
	 hMq+rJc/uA4wxhShnHi2i/W9RmgFoa7rq7skgyh/xY47LmSw91uM3RYVQYP/xGagWX
	 sgthvGWvhk+u2vBohJTw3uYBXCKY67ia10LP01rVTlnziUdK5blbrNYgzRJCR3YtK4
	 5sMqZAfXm1hXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DCDCD6E48
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303699358.23458.4637463323826996107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a72939dc9cd182d60b801a6116d53dcb0a54e860a8825285ce145bfc5b476d
Date: Thu, 13 Nov 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763036993
