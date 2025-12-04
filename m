Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CA2136672
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764812574; cv=none; b=jfpZi3Gl9vAEruM7yOnbU1N9kbEEkDOiyplZHcUVKouFNKcKG6TQNYYBBSW/MglKxgRoWtLUk507jVqbT+YZIwRZpT8r/W197h63Xndef/PiPfkAqEWFGuSvF6zicmNYzgvrs1+jxW9MxCZcIQVMjOmX5MdHJoGKzHgayd6LOok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764812574; c=relaxed/simple;
	bh=E7gko3JCGwYNRT54i0lIO9jnft2ddXkzNf+i8uQpc0g=;
	h=To:Subject:From:Message-Id:Date; b=qh4h8gjhNpLqmzZ0hYh8PyMv3ypAWJmRKqq84p5dvlzadpKtU5VmFPL+laPp5bdYlA+9sEhQBet678OkLhBYiSMwSuVsxgiz1/vY48kFFUQc4P2mhd999g0x8Yxen51vyH5o75SRjlcsiJY2q32KOXFwnrr+j8abUk/8vyLPZnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=br6VBppu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="br6VBppu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2CCC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764812573;
	bh=E7gko3JCGwYNRT54i0lIO9jnft2ddXkzNf+i8uQpc0g=;
	h=To:Subject:From:Date:From;
	b=br6VBppuKOXLb5hcc3NrO0SBSHREjmCssyG/JZnUwSBnlQArid+VJCHjq9XqNkIox
	 jHTMB+zu5djSfEu+XrgWt3lqQXuu6XvpE7kiDPDAC2OQQcd3EO/Z2fXqTiapxnJeUz
	 rJO9stBaYflja/je9eQze73qTPBib2xxn7dqufJJVlHBjkd6hUK4hxlEBGlRlL/K9P
	 U5BEWlMrxGSdRlgzfux639Dqc9+Felq5fHoswWHvxbSI6GolrJfdAQKSWSnI1Y0bT4
	 CU9UdGRlTtTvtm+FE6zm7p94qga0BX4PttQI+C9OZ2IZerhMbaIhBXEakoF8837v55
	 wNCZ2jlX59zMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97775D1CDBA
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481257359.16633.2732509812356651507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3017dd89117811003eafaa4c12cf53bafa63aac2ab1882a98835c01946c64a6f
Date: Thu, 04 Dec 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764812573
