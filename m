Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA2137DABC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779538954; cv=none; b=c1CRYU66+PICyqpe0T6sNZIwk7Y9M0ZPmC5lBsMxrkMJAqfRk7FlUBQl1oLmhq4o/ST8NpMeCjSyvJfRrnD0RElMvWrOQbsgrGwjEsdQuHkfD27VQXOWa5ouvj2eIzFnct+yDBJPsXtx+JO+Fg0qb3kNMBWQ6QVymUv9KaxduqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779538954; c=relaxed/simple;
	bh=LIY3TyvWavwGsTTs3PD8MAlWW9SzRL2lIfzn08sqBfo=;
	h=To:Subject:From:Message-Id:Date; b=nU75Q92olgO7O0i/+XYCt4ZSjGUmLaH0LGCeZGTd64H+ob2vPL9Ek0x3cRuc9V+JM5r/wKZt4Na9+LVcfLQlR2ThjZvtLZSO9d2e9Q5B9itgf/WwlrMzYndUrudxSaW3FZkMV8gosWRqVHIW81ZUV1bACGVeWhvmByBvUKB8hVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i72nue/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i72nue/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53C7C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779538953;
	bh=LIY3TyvWavwGsTTs3PD8MAlWW9SzRL2lIfzn08sqBfo=;
	h=To:Subject:From:Date:From;
	b=i72nue/pv6k3IsczfcmHdY2g/ov6cI/3/qkY99LbMtTVzU8n9vvwJLU5tQ8h3Zbia
	 srOg6dl8Hplt8NMljuwKe4BAULrnSQqInq2ZnJ0hQeYVM3mOX3gDWqUvYxbx1At+Hy
	 mdI/QfFPBLTvrW+BneWDzqr9xOn1S0kcXlm+knChBGXpcTP1eUmVHTCGF7mx9B6yNW
	 1RUBdUq8z0kqtvpfQU2TZW8jP1gmvWwKatLWemF5fzFGLLoKB/n7ip247lA1JwPIm+
	 buajct8zaqxruDcmJCNuENUsw9TLLvu5AX+bV33Wpj6aZj/3iSqFvTYKDhZV8oujnS
	 6Faf9I/v3+h+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB830CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177953895368.31313.7995503557936381181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 553d8e76384d9d33741efd48f4667dd3f02213b80ceaa951177761d0d9ec44a5
Date: Sat, 23 May 2026 12:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779538953
