Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDA92EFDA7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750192194; cv=none; b=NdNdiOHXy2NTF7xo9cQj/Egru9D4YArMoSYwEw6XZzq0m2a6/gluTdQhh03DC1rUbB5e4vWuPun/VJxHdTHI7V12XvRVvR7imaaB4EKtE7tK6jiO/Zucu1hTIYY/fQd5HgOHxTm0QJMANjmy11t91q6+vQKpP8cgYUlV9Sc+Rxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750192194; c=relaxed/simple;
	bh=RYw+D8Rw4p8EoQfXSASm0kFFIbtkt8nGZxt4TAq+pxw=;
	h=To:Subject:From:Message-Id:Date; b=NoPiIem04iuA8DVzdpp+lAXHoPPfpW8rhAUJcgD4tAUzakpBNILsN1X+AyrxFZcxl2oreqYZfCpndACQEnSk6m0Ra3g6103PycyXJZliO8vggDp9vEvSgVwjFHMnoY3SZYsB2uvD2WVeTAx+64fd0pwBTTXh1NJK7x2/JGJ+esA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/Wz1fYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/Wz1fYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA04C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750192193;
	bh=RYw+D8Rw4p8EoQfXSASm0kFFIbtkt8nGZxt4TAq+pxw=;
	h=To:Subject:From:Date:From;
	b=E/Wz1fYjHDyVhMtpmuIA2nfuRHK7vm6Yaz97DUZY2A1SUtmseWPvPZ+76bGiwn9bG
	 DJq6gikFPWoOfiozJs9g6MMe4UxfujqS1VNRJi6a+G5FJGSFh20ARKzIkcQOZjtVA1
	 tisKoaRSyws2fUQJiOU4rK+RvwENN2We7wMlCE+o/hoqp/XteoQqRXd5GqPbbsMeXB
	 Tiltkm6KbkAT9YaIoT9SuEfkdY/1etGK9majuVNI+72wk+liQju3DUsGxX3iiNBLTx
	 gg2Y1BPgNzcraX2gaNlzBo4GjcQrKksz7CDBdm1AW0wvWlOt4mZBT8/Wz3XohJ067F
	 iZuA9AjfDlGjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4D1C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019219357.9088.6493479433604239446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e430b6c97097f1592d5fc01f2a6670cb844e0c632a6821182386ed3baaea1d
Date: Tue, 17 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750192193
