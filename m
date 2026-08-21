Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD6834EF05
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787280634; cv=none; b=BAq+Ex4Sg3/9GlrLD68upH+yXjdKHOjehIGthPDrbnPWS/hs6o88QevdhK1cgEuttGJV12/fQvkAiawYobb8eQArDIfI+OeAgFepjCLz2wz5pB5XF/c6CClBugbs7LeypcEGNW10enUKORx5F1CPI3PdWz3enqRLe/Jncj8yAlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787280634; c=relaxed/simple;
	bh=IC0JMQN1fFsOXIwdKyzPuBW9orrgFAIaJH7m2bqx8MY=;
	h=To:Subject:From:Message-Id:Date; b=oHGBZ+vmPky8kP5EC7RNzI7um815BD3so/4PJSRGsIC1UaT4bvu9+iN69JPTTs9G3sFwsnEh9i/TZgGqV1F70VOgCvdPz0WL83RsViQkhIijybrCv2SyN2VX9P+C9vrsOGZ580Og+mqLp4p7VOt5G2TcEgixs+r3b2/AY/MFIJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgUQbsIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgUQbsIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C47C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787280633;
	bh=IC0JMQN1fFsOXIwdKyzPuBW9orrgFAIaJH7m2bqx8MY=;
	h=To:Subject:From:Date:From;
	b=jgUQbsINNdZWDkiio523LUhCU5OrciQu5WDETrPA8+k551GSY6dbJhtvXRoUxOhMr
	 QQ1OxRWN7tlZjoOw23NwVzzX7XYa7WrOfQzToVn6iDmMSnhQSBve1IJjUBMYqgLJbh
	 eAuLAFwfUfGi04g+ZexqA/RAW3wBUKa3Im9qkm6fLcLadwATLdWQicA/6+1UUGll1W
	 6fSE4zLvreiBKcAuGJ8crem9TPEI+bAIPyQiwPjF9HHptQ5yTEQhkOEiqhNMP9EH3F
	 yxn0fiquExyQy2wJH3zEr+DSiOrDZ4ESbQOcsnaah9H2dL18wcQildBydDi0ul2uD1
	 iGgt4Hkqqb6Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE26C5DF81
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728063374.23846.719293669543233228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a52018048f1765da479713a55dd7a30f8a3f9b94b12417905cd29f7d8ca5ddfe
Date: Fri, 21 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787280633
