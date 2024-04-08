Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50033C470
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712567297; cv=none; b=tRQCRPw5/ws9guVyh/ot/yNP24SPhPmNDw1oxT8QjVYED49y5Zcu2BsewWy8aC9SMSsHBbQ+lTohLPuHEzaoazVIxMRIRIIAnOTpoZO5Z8pfBLZeZr2GKUz5UHykYuI4qg7/S0eGgsM/EtJFKy6QrY31GyT7AWpNWDLPIPvng14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712567297; c=relaxed/simple;
	bh=7TaPN0jXBdSzUK8P1fj6ChsfNx2Vlq9zqfi7erPgVHY=;
	h=To:Subject:From:Message-Id:Date; b=fIzmyR+97SZg/ck8X6tzllgYC+XKCd1xTlfXV6ADiCF+Sba1zlfnvfL7LPSF9FAR0wE968yajq+LMg+XSgaX50y1qjxLpqmZK3dbx6caXXVorj7Itxt+CLN6seK9Lw584mp1wbcVdihzSoOFfiA8fnS3K6/+BJ0WUh1ZeufthrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwdjXDO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwdjXDO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB6FC433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712567296;
	bh=7TaPN0jXBdSzUK8P1fj6ChsfNx2Vlq9zqfi7erPgVHY=;
	h=To:Subject:From:Date:From;
	b=VwdjXDO/wO9yH3hTdhpyDquUlxEN1K/QCjZcQnbBLT3vxto77G04NHbkDw53xbcNZ
	 dFZm2AxgQhngvSnuVXh1nt6f1TJd5udhA56TUUUHEoajyW5lfXsM38Vk166kYv7U7b
	 M84VXbwgrHrm/fqxoPehfxn6flHpLyJ4fOn8w79czc6FTfY63AQZ5l6LkLCWD8BDcU
	 cC/p6uVsBVaLZD4dwis3HgzXMB9pMfE960muoRzEVc88ODhhZgOtj+SRko6i6rwT3w
	 TJzA7UBwA1IRG3A7xowBqu2L1c+OJbsK5ixsooLqIqqEd1r5Bax5Yt2Y2uQJqbok7m
	 zjLzfQ1uBN+8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CF66CD128A
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171256729637.5343.18167503799633294124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0befaf8a25858c38e2cf806c14aa90c3bc03e17e1b415741ee576b62ec9cb78e
Date: Mon, 08 Apr 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712567296
