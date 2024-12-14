Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18803101DE
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734191154; cv=none; b=Imi39dQTu6GXzF6KXaD24on0Wt1WhPTrR/XV8a8v89+U6bf9u4VJb8ENWgnQUK9F8rjOTdx8oELJsUu62SQEjJAPyUK5YxDu1zjAkk7aU8TKz79If/zaWE8ABgR+yrLn+TWTEXo0qEl9mgCCgFoKPBNps4GXxcxyjLMM7WmTKZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734191154; c=relaxed/simple;
	bh=XhbYCblvJ5n6QNJUMCQ1Z1HyvWNBue3JldwTQMJaJE4=;
	h=To:Subject:From:Message-Id:Date; b=cIgK4gDF7WSZLsBDfxwHYchfnuzym5Kd1OqcLKs8n4LYfhVoqz9ofMX9ewMoGKCSpZm54zFLmV7OcRe60B0/yJ3PO5oU3jNHynh3nGRZy9d+tJG+c7RfDnmwJgeSzAPXaIWWF8xqoQk+b4Un4xBhV7cmlUX3YH5EXVilsasmXSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zi1vODeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zi1vODeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CE7C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734191153;
	bh=XhbYCblvJ5n6QNJUMCQ1Z1HyvWNBue3JldwTQMJaJE4=;
	h=To:Subject:From:Date:From;
	b=Zi1vODeHuqs7A3XnFfdirLd6l6MoPgZuW4lSQKi4dFzPfOAqhEMzh5PuJVVlszzEn
	 7KFVk7Ze74wWN8ZfD5L9mOQaQPQlEs4SW0QCdRXZ0+FV7KLURXq0NsOwGxH/GjVdHJ
	 jkOjHBXcVVysjDstC9rc2XmH4mfjoQyTAaOdIfO6wu+y353B5OWBDxAImaM+5gDRhO
	 fKv3sLpa9MRvsFKEww5Bh4q4Rj0oTt+FNzvwoVTU+GdUPGxGctQOlkHddLd33g06Lr
	 Xlu64iL/nnVC6bj/XLQFxD53W0xJtpNvqv8TyZQjXBV3u+MS0fWgd8pVU8OxNzg0Wp
	 +Z7OCXGiGosUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95607E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173419115359.21670.4073533831226818877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2685e76b7d1abf9fb5ad8013dd227bf9ff1c0adca0161a2c7a9ee0f2922942b1
Date: Sat, 14 Dec 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734191153
