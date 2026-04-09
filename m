Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289BA26290
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775771254; cv=none; b=U5QFBClVnQFyuFvAfG052uSMqfQiN+To63+fsoWkkmAMiRvkxl8kncWWqg0+SWIqglJpDnbmCDgfxXCI4mqdY0kcxLR3xJ4m/tQvmMMdbFi8905tE2PDglpQ+u7pqVvQOJneCjD+Dw5aYcJ13oiWUmT9liY2Cae1e49iofv1WUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775771254; c=relaxed/simple;
	bh=pztx2DBRaZz7K1bPEkQR+FWkVR6wdo6dPltRm/6vgKc=;
	h=To:Subject:From:Message-Id:Date; b=VyveGCv6KOhbaQPNTmdXwYsTb4T9U5GjfkkbXLRs1EjMroxZJmHjjmnMLH1C8Rlul3uIhDV1/j5bTWBXjgG5X7MiGBKYu7MPe98D/J75Uh9cOhI6MFb2c85ekL6QAekuuTWNp1cXs3UJYvmZOmYUG4aYJIPKtaJ6Fa4Dx74KfPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8H7N65T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8H7N65T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6697C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775771253;
	bh=pztx2DBRaZz7K1bPEkQR+FWkVR6wdo6dPltRm/6vgKc=;
	h=To:Subject:From:Date:From;
	b=R8H7N65TvvECCV96YXSpZO7JNYVI0BFosp2XpyIHYGjDhOpsjwW4FGujxkGLhsh0o
	 qIlYMCQ2A02tA1kogoAIyhU100awjLf/zO49NlZsBvn8aksCN06SydWBFv0Cz3YZba
	 oKt4l/mZiiqi92d6ZyQY0VhYIAb85vugmSylJJnjHIuwBgX6n21QKKrMpFQ7OOMxK8
	 MKfeEXp/SAuIKL/ryQ8TY7umBGv/jpmr2b498B7SqzZIHUc+vOQxddQ/M0F9kJy/TF
	 KlhsTu+kyfeR/AUGgIZN8GdTYqESNRFgGDck9+qdEor1hxCz0sMtiCYGei0VjG+f0T
	 dCONzE7G1rOCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06EEF364C0
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577125370.1619.8963407879282568446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45237a92903d30b3fa23acb2fffcf33c339201155bf8913d1e6dc8c877c1012e
Date: Thu, 09 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775771253
