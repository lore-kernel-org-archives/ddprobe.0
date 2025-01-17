Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41126155300
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737117354; cv=none; b=ByXPyIKbCCUV/5MR7vhqC5lXR8XurJPvLSa6KNORUuEDfJo09L/5aONzgEw6otykfPhYMTm/NltGY95rnt8V5N1SnD8YAp/aoDEN/SyfEU/Ldg2atK9WJJcVIjfkARAr2KixTCc6atH1lfvadjHnoWBjmjQb/O7Zo/FE9PK7XEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737117354; c=relaxed/simple;
	bh=ygXMKpVYzTiNZxlqbLxOaW4UJ5UyyNpJwsOl2fKroas=;
	h=To:Subject:From:Message-Id:Date; b=WjTTgCaD6k5CJ4+rOiUCsvE8i/IhWG86yNm9his/PI7fXj2gJ1Zv4VOG1w8rTpMPSaQdGySKNnv25rh3tAt1ynEcnKpAL14FkSlNg/Pb7QXqMA3XAGXbKZHo+io0qbVidjCzwZDuLqYGdXyrfGLyNMUX0gVTzYfykkoKx5aHKTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1La9QNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1La9QNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA139C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737117353;
	bh=ygXMKpVYzTiNZxlqbLxOaW4UJ5UyyNpJwsOl2fKroas=;
	h=To:Subject:From:Date:From;
	b=P1La9QNlDLxVqzKmEBnJnOHgMey+UWs2g+mjEhcPgL+uZRteeOxh8/ws4hptRl0Cn
	 FfN/B39B1KBGxstTiB7HLSrO3+g41asYEZX/02biuyykcuXwz6kQWyBgxTdec/znH2
	 rwm4SKIx5M5RB/WDgrrDY0rX3chTIY/iMwqBL0MOKmz68Qrg6AjvQ2Fe0skg3FjALS
	 6T7RO5b+dHM0rr5AEKrqBAqAd73uS8DRc71ryRuD6d6Gjw2yxozEWfzQEMxooj2Q72
	 t/CAXMdjYmEcyEyr1euGagxYkjihyPWpmL664c5BRYneVXLMuwMHRTMneqK1oH+dWX
	 /CUSTNHNq713g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A66C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173711735358.28985.3201148851221231798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88c578ff6e1f60d00645f7b41ab9c7a9f52d3e8f82171c1bf55fcc5c45ebd87
Date: Fri, 17 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737117353
