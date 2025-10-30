Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20046167272
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761786594; cv=none; b=dfVryzDnTIEu/9XaboUtvkFDxUJCqZgUMpaqPqKhNAmOP/sjil7m5LIqZy8jUlaoGq+pZ3V870TmpvMndXySrHLVTgDFl1TvoFrxzVsxL7DMoepMyYa5/aw+Va/PHd7Fr3nDneHGbQXCeJ/LuO+scwm3r3PCO6eavhjws4Pvrh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761786594; c=relaxed/simple;
	bh=wU0Uls1iX03N9xLAP8l3gaIOdK7KnbtrwPpkSn4w+x4=;
	h=To:Subject:From:Message-Id:Date; b=cc8Li+lBrYqgAe0jtuDZk6D7PsQ6+x5l204PcB1pwphM+MLSCDW0PdsUTNuRHgxkbVx9RTLNl1at4wbSrxjy/6FEw0IMC1eE1SmyYrgCllUJ1Cnl/T5kCkNDIAicopy58Eh2oVtxZSjvP9xmnKQ0956KH9+tMFrvj6hMMCWCb/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpmrJvds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpmrJvds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2377C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761786593;
	bh=wU0Uls1iX03N9xLAP8l3gaIOdK7KnbtrwPpkSn4w+x4=;
	h=To:Subject:From:Date:From;
	b=PpmrJvdskgSwmgR6UT4TXUu3hNjyiQZlfS8n2anXvT81BRBCfkyL0DA3uEV4+fLex
	 yqOpqaVANDbgCQg4y0YEC6UymfZ/vwpNSqihDQqHH51T1aM1HyhI9NnBvfHNdYp35o
	 nHWNJxebwTSUmpRetbX9kJO0GkcfmEmQWyXyqkkcDNi+etuPvpZ5wJZOsm6cSsU0tW
	 tbqs/fJSEdxfPt9pGy26EBeNMsgvkYHMg2htM0qYQonuL0WaopUJd+ntktdt00QPup
	 N3V8sP1LCf1f6GUjaIYgRZfLNon+NQMWyhB/vvocVQX7Z5APcyAgrn3GoaLg1qEuLm
	 b8FAv3+iek3bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91734CCF9EE
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176178659358.18602.10949072009998507941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 208ef30d37a9a3523ec021e3bb6dea59937c1ba14d69560a9fccd94dd38a3e31
Date: Thu, 30 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761786593
