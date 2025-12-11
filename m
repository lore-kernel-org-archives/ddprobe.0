Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CF62DE717
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765444374; cv=none; b=dakm1F+T7KhdgZZ/XNbkgdMsAGR0JtTJ52HD7BAtQ2qv4IT905UU3QtffGUepL4YovauMaOmd7CI9WuSS16NHofAEqmj/dsjFF6paJXrEFFAwrDkpzxDEAGy1asWgv3PTRknFZYkIFOgcUYSurLRoM1z48J95Cb/4OwL35xL/+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765444374; c=relaxed/simple;
	bh=Ya34X41xjygKOIx+j71Py3zmBqdxIsAO6A9EKw1azjY=;
	h=To:Subject:From:Message-Id:Date; b=Bpsde0+BsiCHSJ9MeE4yaRryfoe9G1kKJBDqtuFUajOdV6qIiDA2JfnbVjQ5cbgDuBLOh2XXeUJpupAIapjnHmo5+O4/WghhkUhdLGJQROk+CWX3fgwxnLMOeBkNeTaA8IYGBWgipgWLlR4Meni5mVT6eFWciTROWAyr62/Dj8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObEi9wmj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObEi9wmj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE844C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765444373;
	bh=Ya34X41xjygKOIx+j71Py3zmBqdxIsAO6A9EKw1azjY=;
	h=To:Subject:From:Date:From;
	b=ObEi9wmjw0BUG36gDGnI/McXGuBxnS10WzhDsk0vSovcxUGd32U3D1EQ3NSJ+AbBs
	 XOPvKhfZFKXM2coKiBduYRW/AvonqR25kpEUt/KY/Z9zERQYAB2OpoyQ6evmACFkVy
	 ECjG9sw+sBYMuRpcvKuQNNfn99YYOdGkxqQ+HRxWmCDOGmgL+Mv45a82uauqtzO2fW
	 XhtecJT2s4Pg/SdI9zoRTjfCKhA9+AD0nembariGck7OlpsFs1+hYQxgAskscxhxfa
	 EjHQMPpmotLS2PlElIKdB+SVqlVZwioWj8gRRUQ0y9QWOF4uN5K7aTAHDoL1e/khzS
	 7ftd0EHDPn9zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E16AD41C12
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544437363.16383.6133370181766576011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c823e3083960092ba0f379bcb88ef5f85f8ef36d14b01ff053d68a40b33b95b8
Date: Thu, 11 Dec 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765444373
