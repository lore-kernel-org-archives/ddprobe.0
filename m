Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2785084A3E
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754350195; cv=none; b=a+Y0lhzcHZTO81l2idAaVCp5m9krXXbn39QCKdiTLSFO6bM4p7MV/wEHbhrYYSSjk3hg1mWcke57VytcUmy67K8HLo2rygSw3Ctt36o/Pcusdc578giwO+asQQhrUQrfVua6hrJu1KfoMKdwj30AUHwTbMQ5FjZzc2xX0TXWeKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754350195; c=relaxed/simple;
	bh=DQorXvQw0zldrdHAHWp2gWVPZAkjvKiW3WZxCTh6mBg=;
	h=To:Subject:From:Message-Id:Date; b=r7gXt3hTqFb3yNddG2FwSdh93zXvUz5M7TsaUMsSqPvqLYjUzi0DXcWQBv5WTgQeSErHOLdbiLGNbC5MoqtKx+Llxq92JISj2opdxXWzJbUpsBG/7c1o/OvaCoYmhoYDW1RZlrsv3zCakV1niW7Q5yJUq+9ZhN4ojCjVsO7Uzv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aujmksf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aujmksf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD403C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754350193;
	bh=DQorXvQw0zldrdHAHWp2gWVPZAkjvKiW3WZxCTh6mBg=;
	h=To:Subject:From:Date:From;
	b=aujmksf9P284W27Z+BUse4Py4uCDdsAkc5jMyYTO+nIwRRmS4V8jqi4q5SxcAQh6C
	 m4o456g1iMHrL6uqkrXahXpQe0sMXAZYJBYJTSKfBtGFQEXnOZldCXWFPhzBnFY8lb
	 AvWKTZpya0DoVDYc7MBIwR5WDnkKKC3xhjy9bqG9gvsQj9LR09+Lr7narKD9Y2xAKM
	 hYSEeGVTGutR0GKhWNSG/Nl2/FrPx/pr6/oboWw7SEjdPYOk8bSrAAQCMPFI6A8XYo
	 utbcisJ/9asxFX5fY0mjQaLBl7xRgti0/GdmMk1A42yhaHdaqPDXdYxm8jCprRAm72
	 YWPSB3+y9HJKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997BCC87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435019359.11922.13614461454396910240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4b4e1bbd5e151e5106d0172d9a2e04f8e42834c39dd090e54f40b09bbbb96f
Date: Mon, 04 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754350193
