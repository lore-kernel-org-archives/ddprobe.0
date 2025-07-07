Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2B821B9E1
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751905794; cv=none; b=ur5101Xzc3RWkn4gDG0HGdN1qDOMVHozqpSmnwWvnPt384wXo8/sBnN+mY90Godj0KnOf4dgNYSlGPlgDYEIctybbuy2XLYljdUr23BdQK0W0IGs9v8A0JoykKbN/NNdFDSlgpRC3+CTSj+u1YLCVFGnH6Kwas+O9jRD10S9EUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751905794; c=relaxed/simple;
	bh=QXLgTlPCKjLiCS+NiZUY7H5BlK1UboSdqGpfmG5C8FQ=;
	h=To:Subject:From:Message-Id:Date; b=HeGBKmsmHB/Z9/JAeXFHa7SWpdC8UJvYJDyxhCr7VpeIYq/BFpuAxlRJW+ggUdib7ws/XAEe55DD8lPwQZh7AvoVN7Op87BusD7kqiYYuupE6S5mL8pY9G7wmYzAMoqXX833XJzoXrcZN91pCeA+0Zh3ivrJD6VXYFnRxOLowLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKcGiiDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKcGiiDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4027C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751905793;
	bh=QXLgTlPCKjLiCS+NiZUY7H5BlK1UboSdqGpfmG5C8FQ=;
	h=To:Subject:From:Date:From;
	b=qKcGiiDToPEZ17XaL5lTHWXmvvP1drQ5xn2tN78A4H930wdESXRtTpN/KawTyUo/M
	 3a6vBfZwlYJ8tmFpJEseI5tPyjOcbzK7yQ1/xndsyHyru7sdTEgEiY6TqAUXGgOwVU
	 uhbBfyn8he0JG9EWv5pgRM8vSP1xljoqyJGQBNJ25JYDUtw75xQL/tJ4ErslKs+XMO
	 BaOFTQvuvPReA062xXyKz7QwLhmCKQAC1/gBY4/vvcF33B58Qg4kW17WtnuSpXeYtL
	 2nafj1gSsFW+hpCJtra2sDt3ZAB5pDkt2pTBFZmESJLrOi4cWdV1bB51PohxSl5vcP
	 Avy74SUk0UAfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90925C71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190579358.9680.12854959482239316708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943f7c08c1689ca5cdbb6b0965fd35bd15a3512ddc6c2601db68fa466312b22c
Date: Mon, 07 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751905793
