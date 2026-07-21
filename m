Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD3A326941
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784638714; cv=none; b=f++DfeaPzZo4CNcrqs5poqCcDke9Xhv08z+2kIo2i/L1h5NS8mR3SrwGxUDHg3JjE7By8nOSb0t8AhGJ0NnkKAz1kb8Q1wClpCIwUpt1MwLCOm3uc/1wyrlLu0ygmcHEYu+JM/RAdp4A8CB2CZBjo5/TgozzEgJ08P75D7W7C6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784638714; c=relaxed/simple;
	bh=KQKJbOH+QIhdoXuJ5JrPJpG/z8VJIo0guv+UAMBZzYo=;
	h=To:Subject:From:Message-Id:Date; b=XD0ekd3yYq5S/Nmel+CmSEZbwa4dQS10ylcwbtgfli0nMs58DQkShCgZuB/e+pPBoSA+dUW/A/SuADeielz37l2mf1tThdTylpnD/5+KhZCGQGua1mK4rW/E3JahaFbw3PEmQsnrD4X8+rkUC/8kjQjlvkFPA8FsbuFa86RzGhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7Gj4NVL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7Gj4NVL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1824C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784638713;
	bh=KQKJbOH+QIhdoXuJ5JrPJpG/z8VJIo0guv+UAMBZzYo=;
	h=To:Subject:From:Date:From;
	b=Z7Gj4NVLJCqME0Vb+xH4NlIs+AmbwTLoL07cUS2T30d671FR4fsRbuWW8At8YkInw
	 KZjvzBJEidDfAqDJfdqR5SwFJcSOpatFRxq+Pxj67WqBY/OoHkuwm87Qyk/pR1IjV3
	 ghNqbaC4Nru4l/rTxvYdhiNfRSznmZ9kJu2NiXoopqrLLOmxWCbuQnZzdPmRv9RCEC
	 lOvYJODYwF2uxa++kwvsisTuEDqp1TmRVBJ1/bxXnorueBN1sLILmS0e91jzwCyYJj
	 Lc3a92WhLDeH7uR+35dBFKsVwzU/vaYUo5CjUhF6yDyzRhK+YgiFTRyD4KUgz4FyzO
	 2aMQ3po5vTiFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC814C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463871369.10777.15985322173733644953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193135927c7b32626fd6348b7b3f79e0da06a270305e4d369fe1c244012211c2
Date: Tue, 21 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784638713
