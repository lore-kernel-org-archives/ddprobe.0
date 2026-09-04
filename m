Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D543E6DCF
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788555634; cv=none; b=niBIrciBJeC+i00sNK/ENQpMkuzNfJIaga0i0stBU8cWex7JOL40L1mZruzsEFLBjBJWh/Ba43xqaGlgcPMRIhuxJ8R4Jg0GOec2I+okHfALyQHviRRSll92Of4AO7WlhiXmyAW3TIvFNY0EM2BcjTHkZCK0/rO/bBDe4bcwerQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788555634; c=relaxed/simple;
	bh=23pf2uJKsSp2vMb4ymRJ9V/8QEYbvKD3HZZehPPtbjU=;
	h=To:Subject:From:Message-Id:Date; b=KDRgT6ingV4T5cFNs1UBjGV4IfMKP5Bc7sODhKgblIr5kPl/m51LSR9tdIv2urlTdPE1ROEJ3m6dSLhiUIZ2OKDv0l6PNjkXBKd7rdOPduHqUwUKRwqO9adX8qC0uA2abRpW12ES7Esu32CD6qn1/6Qe1tXk1KkhYHG6QFEcfWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovMSC1pa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovMSC1pa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAA9C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788555633;
	bh=23pf2uJKsSp2vMb4ymRJ9V/8QEYbvKD3HZZehPPtbjU=;
	h=To:Subject:From:Date:From;
	b=ovMSC1paNQPd58mPaUiOU2rpcsFTdEleK5Zgjk0UopwaM8YdYvOEMy1rzlgvtus0G
	 W8QQOlgOOAGdlK0qJi1IFqzVd7yIw2C8Cf+fVEHQeWtGccfrWrFZfURHD0pvL/6GL7
	 vRkTjeHqN9F97aCt1vImAZuwMiUDMVyP5DE3qm3gvEYAErbp6kauLcEYNU/yDwX+aS
	 Fv/FaVuLm9w1cuwzBkq3ULM8AAAmscAe+emQgtTj0lMmdPy+smRWWENV6srK/jW6yb
	 l5KjTt6GlY9z7wnVAbzXyRhosLfs1SlugMXNZv5WxylsDT148CS9bOTtsZaT1fJFR1
	 ckYcnU5/Pz/pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8449C79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855563374.14075.7179346296505718621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885002f0de432a00dd6a8c12213c58c81f0270f3b0ec243585f9537b7d023adf
Date: Fri, 04 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788555633
