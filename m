Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F22E42AA9
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777773454; cv=none; b=Uy3qIedK6UZoAqEEeyLN1mf9slRrJUJJcUCni1e55KFiUUxl+bRllvwxOO9MVXNs7gCvlApNXqlN2JkqIxrwrzmNTOOVLFAPKVCP4L7y8ZMecpZtvVLM10Vx2IYctQJvAuDm4AEYP/htH5Ycm/eCkW+B9guz3eaOwoBfhXLlgIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777773454; c=relaxed/simple;
	bh=4tD+/CD+f86xhxmsb1RdEIuVamYXWyMOHRlUFSJo9AA=;
	h=To:Subject:From:Message-Id:Date; b=Tvh6DenDNsvHvR/JNhGmRBlJvGtnPJsrnY2QReaPHYZ3+MIG8ITFuh6d0eagnHPs7n+Q0+NwaRTKsTTglIlJ815L6M56OmPdzj1okkGET8CpSfTKuI8xo4T2MbqlvTIP9QAQ7Oa5qnVSBCs7++Ig1KOaUAiHwdWEtNrUnv/s5uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrvvq2oi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrvvq2oi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11D7C19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777773453;
	bh=4tD+/CD+f86xhxmsb1RdEIuVamYXWyMOHRlUFSJo9AA=;
	h=To:Subject:From:Date:From;
	b=lrvvq2oiLGrrIJOVlQ+aSQu5K0pqecDorF6x40tHAqNO/I/tWXEveiityqiwuB1ZK
	 fWUh3tuckTLLQzpAZpHFwX/7s4WUzB9ezfiu4oCQCcg92dgwnlw6deaUqonz+xcY54
	 RncZLnqosMl+UNtEHj0/GuM7fYlS2unp9PGiagDQnQbHJyBlyUEuI3hVqUTl3TY+/N
	 zsNNP4a8Fay4e823O5+7m15mG4JiCEFRbmO+WmjGsGwj8EtkuvkR44AECnIhbCH9Tw
	 3rYKG+Xz/RpSU9USpNYyaE0ydr3cH60MyPaqEOBUBPBngoIBR1qTf3oGPFX/gRPHDP
	 XkEfSz+yepHDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8CECD13DA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177777345368.28782.2487624619148909350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac18ec688a7b55a7cb94c35f8191daa8a940c9e544d3f490b9c05a12d5ec44a
Date: Sun, 03 May 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777773453
