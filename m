Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B2D3750C1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773347693; cv=none; b=Q5thIELspF2dcUAHduIi7MM9xAZGE9lJclK6r7zN3wlPru3PlCvOzTNY4KUf0Gc/a6YOErnuv/uwM4zUp4pW11RJx+HVr5L4UmeVkrmjjhJi5eWMTvF1Eqbv+A0tc9P/1FACCVpo0PFHtf2lplJ1l85thKRW82CsrPzhwaITiw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773347693; c=relaxed/simple;
	bh=Xrq0eF0b1lA6sMn+CBWSdkkOEGJRCcKf1pnmdUZvfe8=;
	h=To:Subject:From:Message-Id:Date; b=j6OzijUDFYaBgKox5JwQ8sds8dPkMxkY7g4afhzJ229yxMPnfF3NN3fzEuJUWPs9QCao+9Sjrt+2Uo8dG/IMLAZ579xohKPZlqp12/44lSfT2TIJL4KtAIct/fhJsw+RjTu5OqSehNriwbmtIQfeTFgNzlpAtIaKdo5MEVoUDH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GD5Flg2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GD5Flg2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E35C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773347693;
	bh=Xrq0eF0b1lA6sMn+CBWSdkkOEGJRCcKf1pnmdUZvfe8=;
	h=To:Subject:From:Date:From;
	b=GD5Flg2RzOk8gkuoNl3Qe+KHhrslAgDDNpY00o1Oe4vjBzH1c26zO/cvLapvwKXKt
	 MhSP+Zo1dTDR0jUGjv21xYugTXou6DryzMYihmpyWuVq6W0jHhurAmRix7TopIuCDy
	 6RDRpH9glY6wohfzoPndnOikm5yBn3gNZCkXT83WYcoWeVO2LlyG9VWns8tRZ2rs57
	 gD8bm76HGkF94AA18kSsUcZrjx/JySUvvQ0EUOXUus+B+yE3/p1ddOntAwXb+D3HyJ
	 drqxXtfC08YwjL9YrUrETc/c3nC069HkhUlQXrR++R//rJS6fvejFON/xdKqLmIe5z
	 s0h/fD38R8Jkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95778106ACE9
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177334769359.24099.6748053915011191217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e61f1a56ecc994b3ea7330c47500bc2873c690b8de2feaf6893288c7ba4c3797
Date: Thu, 12 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773347693
