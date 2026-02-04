Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238BD37B3E1
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770193434; cv=none; b=XfmC36hpkOKWWF0pKyRfxd2bTG8vD9tdlz6YLVD4LU6Mz0/jUj1A+0BxIRNepf9sZ4hGucFz65rIYTzHuMAw00tez++hhxghXZb8clhG2Iu4iEgB8uACgChJxwo0YucE2uqWHs5v5f0ofcgBz/a0vdV9N5rfyXDWfqPHMdj4fLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770193434; c=relaxed/simple;
	bh=7BvJX3NzEL0dSyJbKrPEz6QwVuIumMN4U54aOl9zvzw=;
	h=To:Subject:From:Message-Id:Date; b=JCJBI/i8B89hsOhGk1fjrXl1EdnZQ2zQpKJG9O63PppfvtNlPNDd7IrK6+nrJj71zjOWW8z7N/XEiiOPsZmmPU7BIbkrs118R1RAEgO9uEnPBONE0px5Pf1uyk/QTcB+vbf6Y2NYdvGDDuFqgGE0Mk8/yEMlhpmNGtgU9PbdEZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kko1abtI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kko1abtI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A514CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770193433;
	bh=7BvJX3NzEL0dSyJbKrPEz6QwVuIumMN4U54aOl9zvzw=;
	h=To:Subject:From:Date:From;
	b=kko1abtIcsdkL2Zo/x6mC0suJkNBpgkWQAnkXpWe7f4L7Rh9zf3UbfMr0axv8i2ej
	 4nsb+qQMmU3anvzgrW5Wsr4N3E/Iw2mnRVP81fWM2Z7noBA0M+iEM/9ZUH7FxeGnth
	 14mY7G8C9cFR8+Ii0xDi8ow0O0kHcxnep/JnE0TcHDmlDG9TaaWodh3e4a0h4XwG3D
	 GS+mvdUSMhniZh8mGXeUv9YHJW0a9EshLI1Dx3C+AKLbqefjuip51YyNNnLTpx874P
	 UX5FO4IeEI8wABTthrip2F50RRjKW+rhJJp03h+L+TuNxQm9cIkbsWsxoxQ2m1ocz/
	 AJAeVcs+lr9Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93683E83EE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177019343359.20869.15033844702010428115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45de4a91de62f6f19bb8da0d23b0fde9bea139eb7337e33960290b210980d06b
Date: Wed, 04 Feb 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770193433
