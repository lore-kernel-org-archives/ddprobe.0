Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D70614B08A
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765745574; cv=none; b=Dt6sJs7rQF9KE+GGUuzn+FHfk4RJ5Ucz/vuOqohrgteNmpKJTsN23IPXTYQzzxXpL5pbiLkZJkF6VZfclPLNRCIScU/ELK329qURMfTNX6luoGmXp40wbb/qlSu91KX/O+g5X9ggD+gmqCt7JoLO3XpuJ3v2WJ8TzzYN4DeMwF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765745574; c=relaxed/simple;
	bh=yYDWEgVQgbTWmqzmk58JQRDAr5Z5KjfcrxPPInsCP8k=;
	h=To:Subject:From:Message-Id:Date; b=TxVbdV/m7reQTLZ2QP5183D3/rGH0YoiGLGCv4O/JCr/xJdUTVp8KArLK7Nha9/CtzqL3w8VJbJxnv6eUTQzcRTk13sDt2Km4c0ptQ174nlSHgCQetGozg8S8Ocjno92AXUFcPeop7Lsr+1S6Ox8KxWxRM9cpSsxSRkjn+sB7U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwSv4AZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwSv4AZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFDBDC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765745573;
	bh=yYDWEgVQgbTWmqzmk58JQRDAr5Z5KjfcrxPPInsCP8k=;
	h=To:Subject:From:Date:From;
	b=HwSv4AZ+E2BllFievkkvEvxdRTBQjq+BhZ1DoyZ0PQWfJ8gPyqlr6+Yh6C/WkJxe7
	 UnPKsZYq+/wC/1JSLWtNobuy6W3YOUuXhJ1y5n2SJpgvYACW78lIeadVMrmkqea7Cf
	 xcSrTuVoXiVBi0l1M1vsUtUXG47sOj3HMRKJRkjYxdfmXAXt3IIKzPm0NcIUfixJdK
	 tts22UDNhCjwTtq6oWv+XoqUcdk5PGvYnOnelJLuTG/NEp/gSoLqtDVsVq74wXih7M
	 B2LVgAYnaqxkEI+iUfn8sv21v9rObfgDWhGv6+su/gmsJIdX8RDZ8pMUCLwsr2wfjK
	 +ebm2dCOsFEMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D27D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574557359.28689.1490802208194931996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca86d38047389cea11318956ae4f6aa3a7bb454ef41ab4f5724eec699cd12f1a
Date: Sun, 14 Dec 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765745573
