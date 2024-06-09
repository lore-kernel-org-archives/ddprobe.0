Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769861DDCE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717954043; cv=none; b=feu2DJfTmN1s2paSfu4NDybgZbnAeKMMAP92vvuwWmmNp2ZfKyA15wCxoT4YVY5SOfVwKlhKBBdUpSEwPTsl+i5gGBTHWo4sOoBppaCbI+iCoSCwJoyY2PkUrae6Tov4XLxpUb3FDMfuUKZ6RTb8K/dLKMZ4QnogYcNLuY7PYk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717954043; c=relaxed/simple;
	bh=as8ixP2f5/ej0KXKwsQmIBNEb9MEMSJnPWbuncSQh8k=;
	h=To:Subject:From:Message-Id:Date; b=ZjdL/mJQ5BXcr4Iduu36/I/dYcFANFFq3Sy6L3HtqltS4/K+oXxyVQUsiD5L1hLh51SFCC2kpGtRtyUTEFUes1Ne9XlQ6oSHkUKMQjs4orFnt+VB1gzQ8ZwCi0DzddZIUmXXCVxOGo1/OmdbKOrntPYmAWaKItGCUv6HcBYFI3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebj5msp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebj5msp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E802BC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717954042;
	bh=as8ixP2f5/ej0KXKwsQmIBNEb9MEMSJnPWbuncSQh8k=;
	h=To:Subject:From:Date:From;
	b=ebj5msp4HoCdGpOPATWY4EIVQYS375a/lt5vwZDpaGwrpuPwGkHdQHTFqX7+BDBZE
	 V0i/2bxUiQSO4lcHdr8dHTfPRh7aS+ZpgbJJESsc2iTlbdg26Xd5JaH4+xMngQOrHU
	 WCL5mmVuGiflt4bawImMBiQZ68hN1yhSmle2ROsFJhvXlEV4pv6SZ4Apfft4X071RX
	 /nvYt6SFq2/hATylN8CHU6g1ZsiLySEny0mR3YBymIFhJljZq/vJzEF9D0hU1rFMUa
	 KAlmgKmY6ypFYOqXy8Ys9W2PtukIww0kWE6rut5kQz8R76PvZ34luVWEr7GelmaApJ
	 U0SvSDXN+nS0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD65C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171795404280.1268.463505957568976736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c886917e9f35c155b04efcadf07d81a4664296a45907cf11c3702a78360a21b
Date: Sun, 09 Jun 2024 17:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717954042
