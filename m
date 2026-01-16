Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5FAB22D4DC
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768569234; cv=none; b=NpBu4ZOq+jk9RE7JDLP/YM0c7ZiAekas/rjGII1jGlrWTlexS6y6hhY8EqMzjIZ6dLVxxJUr3SFVyok7SG6TjtL4o6m9MzjDU3Rs5jG2HwRKiqpMn+UxXH8VmHjzxLXhR88+G8eMS1kYkekdNu/vnlsP6xqt2gtuhl9xalOeAu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768569234; c=relaxed/simple;
	bh=sV1vpjfaUMrlhRsmvbj6W/Ki2QiCZanxGsYb3KwqWUI=;
	h=To:Subject:From:Message-Id:Date; b=LAhjw3Xjk5/gYEN9KTctX+PSZszi9ZMyMBTokFAtX6tcTDxtyigqU4yheKrSqUE+VHu0L4oKTfuQXrRO03RN8eLSr5YZ80uaos146MBI3OaRKc5mlyfjdXGkq9HwU1UUanN/0ns8JvmbrRDHiYjK2vwzt4GEHf2FE6SVmS/GYgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfmgmKjD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfmgmKjD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DECAC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768569233;
	bh=sV1vpjfaUMrlhRsmvbj6W/Ki2QiCZanxGsYb3KwqWUI=;
	h=To:Subject:From:Date:From;
	b=YfmgmKjDnJK8lUbMm0iQ5lNu6dG3Xu93pIsDTQRdLhJbVZyi83UgVFzYVbR6jlZv8
	 CSV0fTNnb2PFykry8G72qoRu40a1Qh+O6bLbra0TRnQVkgTtpfnqStCcOi0TR2y+Ki
	 XPafADr00E7gexmQpJmnFCGLKCWW0ZsSu6xIE3UmnFSJ7GGK1uU8KkF8DJBB3ZDROZ
	 MyKzI2qqrTv2y5Yvh8EQie3IEk57oRM6CKEaG/K3AnFDJ0VTaF2k3HzahecCtT51iB
	 zkG+sthZHp+v5vKgSXsgGD8RWSyC9bO6FIbn90IY85UssS0udeRAj6Hhvb9ww76Xqc
	 Ll2xMblwT8huw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90946D4899D
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856923358.28951.8720432489172599824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb09707b71c947f656ef0cd99cd4fb2c18e58c250c6349aa044d5b2cc4003e61
Date: Fri, 16 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768569233
