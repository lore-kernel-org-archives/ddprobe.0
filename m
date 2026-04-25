Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27728EEBB
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777151854; cv=none; b=WTYIrEzr+74iK2SIdfnUT2dvbAHxtXp0rv1vtFakbHjcF9L6gRdvFccOU9I+5esu+3TAwUxbhZxQ2l2+WFTI7H/o9TLoa2w7Lk+lTbF+OO++yjeB+zTYUTViZAfWVIxw+/qYYuHaf/XJTm2Ij1c01rFxSydraN3XyNsZnPWJ3qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777151854; c=relaxed/simple;
	bh=sLPVVb1tLxzMzyj+zV20K0UO3QHVDCaK4LmE6YqtAhs=;
	h=To:Subject:From:Message-Id:Date; b=Yw/u60WTXXDtwW0bW3SUjAYeVEd4W/aBSr1ErcZIwp6xq+vrUtooYaQDtmOZvCDAeOGB+HNmaKGbURLp2Hty6C/sY3kD0zDuqLt9tXzloLcEkaTnA4gnS8WiHdIUeCd9Y0g7QJabxdLtlLc62EKQmLMShy39gYNZV2+D37eqHMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUS4cDEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUS4cDEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EFCC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777151853;
	bh=sLPVVb1tLxzMzyj+zV20K0UO3QHVDCaK4LmE6YqtAhs=;
	h=To:Subject:From:Date:From;
	b=JUS4cDELaEwuS1HiRV+WGA2Ms4H6xedTmdnwc2ZwVqEERaSRsZhNSVqP9pH1YNdYR
	 N88GN7kR2aITKUiKqnqJC2PPsRf980Fli5d1mEF5JrBBdHjtioQ3OsUj9hG6H6JsZU
	 ph8KKv1jNuaBiheuNwzWZdF5PrxDi3XpJ6h1NrxVGfnam2x2et07mThif1BS2BJoGP
	 8gZpkTUcITZTTep/XKKubN4CUIZKVc83BFu/fZdxhKNaUWXs4YQ0cC63xlH2GE8eUg
	 9eO+IYnMYx0YtdVsdWXRrxHvX6iB16byni4OaI3DKGodEXWPx/pkYmGQGwgbiuv7qy
	 Df0Itc11DXMmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B88FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715185368.5639.15946126440279705796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45d022c7c4f4be7ba3736b8d5b118886447cf9408ca599fb6af91ccba96cdd5
Date: Sat, 25 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777151853
