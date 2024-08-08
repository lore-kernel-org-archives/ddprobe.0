Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295551DA21
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723131954; cv=none; b=Z88XaUsDCA5ypETSkCBItuJe68thtEFIutC9/ZhIgxVkn8CSUSX6GIs02u4sAQkAih8WCkM2CKZUodce127dF4A64+f4DZ6CpP7/46N4e8fQO34RggasujRqzCiMS/A1Yw7M+qwQbrHC652M+U5R9D8Dpn3Ea8LMwrclieW0FJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723131954; c=relaxed/simple;
	bh=JtY+i8UJA5XDXus9h9ZH3VSCxFVsc5fBd+uBCJWV5aA=;
	h=To:Subject:From:Message-Id:Date; b=tG3Qcc4o8LYDDSY2JdQqvnc4J+qWeyaXNfw38hi5RPRvU4ulK7/Up0kujeDOou7eOrjjGasFRr194eHQvPDbdV4BUS20TGvwhu1iS0Wt6I+3HwI9t9wS6aLP7pGeNmDcfA1II0yfth2Y7vUhK12eW/NIoSmvKmJOpeKgyzRUglQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OS8MlWss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OS8MlWss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A886CC32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723131953;
	bh=JtY+i8UJA5XDXus9h9ZH3VSCxFVsc5fBd+uBCJWV5aA=;
	h=To:Subject:From:Date:From;
	b=OS8MlWss7fuehkP8CQh0EV4m4z8GN0aY/gqZtKrbeq6mrNlewSyihiMkXnhQOTP/Y
	 L36+NfCfAL470rpCEnOBsczP/EgjmUrIUxO+7dQ79ReO5V066cJyxKeQnbQ/aytAOp
	 1cd41ESXsXra/pb35BCg62MAI97QoOiJvQ47s9Q/hBjnlZukXYFGOKZKUazDoXwN3l
	 hl/cS90VYwN659R0ouVmj+QIDeb/VLfAIdVIVdFis10ZCjK5oug2BK6P9ekKsDFcw6
	 K7M0+/CSKauPkWHt4Gdk257YBk/YY1NFCOL54p9A1mWC9JW+C9hRoTgibdK0jg+RdF
	 3EF15VbCByudA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95924C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172313195360.9018.5705842644962722473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667e1fc354ff10930b47c562fdcea6ff2ee8b8412db9f3b1697d33de443c18df
Date: Thu, 08 Aug 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723131953
