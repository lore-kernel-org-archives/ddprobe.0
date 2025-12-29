Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1113101BB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767017634; cv=none; b=fAs3nNpaVUUt1/hCrbmV7mUanqMauRji/xZWIhHnlaZckuwWcY1auZVg7M+U+H2J276wPQiY+PrXf8oqUi9HiItHFhCXj9R5Y++Zk7LTQTbtiftg9KmVjGt42oaCdVwhDks3PJp9CKkm247IqSvUfZlq9WwI5m/VrKDX3lJTjwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767017634; c=relaxed/simple;
	bh=g3/jfoKCbuO8Ze/wRBDWqKOFebLUW7KdTFo8UXs7sc0=;
	h=To:Subject:From:Message-Id:Date; b=XVyomsAUfAdDnuWWPYnC0cAuu2LM2UC1qt2BjFITtDKG8S6CPsHPSNbWKSnvGU2Fh/SFICz4SzytQtsVckegpX7gymxq9Qdk9fuMojp5fqZzj1fkbwKzW27KE84B/+DG24UOM7YR2l7TX0OjB+xMYtY9X3b9Zzqyj8n5VsZvedQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgYSlGZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgYSlGZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8F1C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767017633;
	bh=g3/jfoKCbuO8Ze/wRBDWqKOFebLUW7KdTFo8UXs7sc0=;
	h=To:Subject:From:Date:From;
	b=SgYSlGZ7/ZYJ8xEfuFtq/pG4DF3jed+pTLStQzQeRY3ghbHdjv1uVfI+CeJJkFdRq
	 Pjf3iXlq3H/tyaFBp7OgrUlmL+L2QdXVDVNPp0TqyaHCMYtLT209Gv+bJZlMI6Qg6L
	 rZ04o5O4T0PYOM126lq9vth2OgLp11wdFoexktCVxvsfmUAkX+1ESuGxuNe2eajUWP
	 c3N6AjO3T+4oZ8l4xN76bPSHCWrmNfyRdfMdQ0pfReq8GL6yjiKhVV6N4KtU45APNg
	 YoZk7JqkkEdGlPi7KRK5qmu+Bvn/X+MTVbSaT/AYGnj1lZXvLhuyhxKLsjNlfNkBbR
	 pphLE9Pj39q7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99208D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176701763361.24524.7682677796211692973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c2f1465661bfe7230567fcf383e9ab10820b8d3aab338f4f94a9c488f70387e
Date: Mon, 29 Dec 2025 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767017633
