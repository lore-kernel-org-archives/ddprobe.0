Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324942920AC
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748006394; cv=none; b=US0IYvfh8iV0Y49RNeJrT1I4pYhKPiZVbe5F377x53MkmmQAkkLfKG4XmLv4BLLdZRDpzTfwlDxp5yn3uKeAXwQSHdsgrCyNzU2+cSMIRRFsJ/I8oPCVNSmeQ9dSskfzrpwNmhY/G/Np9cJfSoxnK/eBgLW2EPfxwLxFN36Dw80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748006394; c=relaxed/simple;
	bh=9MZ3OdhGI3lpT/nHlNSyGRrSRMurbJJq2o+f0HGleN4=;
	h=To:Subject:From:Message-Id:Date; b=feSUevPSsO2jBQ2rloZncwAwNr+zSnjcqQyV8FQV7HXu3karYupcCGa8k2LRTzKSLU2bTT+deZ3pLlPTEFhrU9LLWnbmfouDdgkEVof0f8twWdGptox9mIEVgYGnt40fQjMctcATCKnETvkQcFjxLFNFkm/dkpBQQVrk0hGpbYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrdDtOHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrdDtOHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EF4C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748006393;
	bh=9MZ3OdhGI3lpT/nHlNSyGRrSRMurbJJq2o+f0HGleN4=;
	h=To:Subject:From:Date:From;
	b=OrdDtOHAvvnr5HkKq5LangiyPv5rTWlXvOq8d694j67QhaPtk4EsW4GaNtalOa3SQ
	 mMOio+5jImjYg6WJ8t36BI0IrChmwzqesmAMS6am0N8I8bOV1CqprvX67NHdtxZ5PW
	 gmV1sdZLFgOPjujMlEjA0NTMMraMWQAO8KAcSgkVJr45SSc/r/J187yFn7yjdyAxrM
	 fcERY94spXLIPWHpmKs09m0nIGQWM7MlygPVX2X+N40ExHPQGTC3fBs/4GbctizGWL
	 hdWwvZiMvleiqMLkr5430YpsSHNhZ7EDU9ciOV2N0zPwWomxlCyIFGzvdTwXZZX1U2
	 9v9/xjL+GiM0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F017C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800639357.26506.16546384527027803925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a18ab04d848e3601c96dfa86730c730758f9ec3d555a98b00d35156943ca9de8
Date: Fri, 23 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748006393
